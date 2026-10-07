# Nyx 0.20 — Deployment guide

Production checklist for a Nyx app. Reverse proxy hâlâ önerilir; Nox ≥ 1.22 ile doğrudan HTTPS/WS, Nox ≥ 1.28/1.29 ile `--release` M:N multicore mümkün. Pin: **noxc 1.142.23**.

## 1. Process model

- Prefer **`noxc build --release main.nox`** then run the binary (LLVM M:N pool).
- `NYX_WORKERS>1` → template uses `nox.http.serve_multicore*` (shared pool under `--release`). IPv4 dinler.
- `NYX_IPV6=1` tek worker: `listen_v6` + `serve_fd` / `serve_fd_tls`. `NYX_WORKERS>1` ile birlikte süreç `ServerError` ile durur.
- Set **`NOX_POOL_WORKERS`** to match (or size) the release pool when using multicore.
- Boot **once** at module top-level; register cleanup with `nyx.app.on_shutdown`, then
  `nyx.app.shutdown(application)` in `finally` (see `templates/app/main.nox`).
- Inbound HTTPS: proxy **veya** `NYX_TLS_CERT` + `NYX_TLS_KEY` → `serve_tls` / `serve_multicore_tls`.
- WebSocket: `serve_ws` / `serve_ws_tls` / multicore WS variants + `nyx.cable.ws_echo` / `ws_broadcast_loop`.
  SSE/long-poll cable hâlâ desteklenir (eski istemciler / proxy kısıtları).
- **Do not** rely on module-global `int++` or in-memory rate maps across M:N workers;
  Nyx metrics use locked `SharedBuffer`; multicore defaults rate store to `db` on `jobs_db`.

## 2. Required environment

| Variable | Production |
|---|---|
| `NYX_ENV` | `production` |
| `NYX_SECRET_KEY` | ≥32 chars, not a placeholder |
| `NYX_DB_PATH` or `DATABASE_URL` | SQLite path/`sqlite:///…`, `postgres://…`, or `mysql://…` |
| `NYX_AUTO_MIGRATE` | `0` (run migrate in release step) |
| `NYX_SECURE_COOKIES` | `1` (behind HTTPS) |
| `NYX_JOBS_DB_PATH` | Separate SQLite file (default `db/jobs.sqlite`) |
| `NYX_MAIL_DELIVERY` | `smtp` / `http` / `file` |
| `NYX_MAIL_SMTP_HOST` / `PORT` / `USER` / `PASSWORD` | When `smtp`. Default port `465` = immediate TLS |
| `NYX_MAIL_SMTP_STARTTLS` | `1` = plain TCP then STARTTLS (typical 587). `0` or empty = immediate TLS |
| `NYX_PORT` / `NYX_HOST` | Bind address |
| `NYX_TLS_CERT` / `NYX_TLS_KEY` | Optional PEM paths for `serve_*tls` |
| `NYX_WORKERS` | `1` default; `>1` enables `serve_multicore*` (IPv4) |
| `NYX_IPV6` | `1` = `listen_v6` + `serve_fd*` (tek worker) |
| `NYX_IPV6_ONLY` | `1` = dual-stack kapalı; `NYX_IPV6` de açılır |
| `NOX_POOL_WORKERS` | Release M:N pool size (pair with `NYX_WORKERS`) |
| `NYX_RATE_LIMIT_STORE` | Prefer `db` when multicore (auto if unset + `NYX_WORKERS>1`) |

Optional: `NYX_CSP`, `NYX_CSRF_API_EXEMPT`, `NYX_CACHE_PATH`, `NYX_STORAGE_PATH`, `NYX_LOCALE`, `NYX_CABLE_STORE_PATH`.

## 3. Database

### SQLite (default ORM)

```sh
export NYX_DB_PATH=db/app.sqlite
./bin/nyx db migrate
noxc run main.nox
```

### PostgreSQL (dialect-aware boot)

```sh
export DATABASE_URL=postgres://user:pass@127.0.0.1:5432/myapp
export NYX_JOBS_DB_PATH=db/jobs.sqlite
./bin/nyx db migrate   # migrate_url / migrate_postgres
noxc run main.nox
```

In handlers: `nyx.pg_model.*` + `nyx.app.pg(application)`.  
`application.db` remains a SQLite `Connection` placeholder when dialect is postgres.  
`nox.db.DbConnection` covers `close` / `execute` / `query` / `prepare`; SQL still differs (`$1`, `RETURNING`).

### MySQL

```sh
export DATABASE_URL=mysql://user:pass@127.0.0.1:3306/myapp
export NYX_JOBS_DB_PATH=db/jobs.sqlite
./bin/nyx db migrate   # migrate_url / migrate_mysql
noxc run main.nox
```

In handlers: `nyx.mysql_model.*` + `nyx.app.mysql(application)`.  
Sessions use `nyx.session_store_mysql`; accounts use `nyx.auth_engine_mysql`. Placeholders are `?`. Jobs stay on the SQLite queue.

## 4. TLS / WebSocket / multicore

```sh
export NYX_TLS_CERT=/etc/ssl/certs/app.pem
export NYX_TLS_KEY=/etc/ssl/private/app.key
export NYX_WORKERS=8
export NOX_POOL_WORKERS=8
# macOS OpenSSL: brew install openssl@3 (libssl absolute path / NOX_OPENSSL_LIB)
noxc build --release main.nox
./main
```

Template `main.nox` selects mode via `nyx.server.serve_mode`. For WS:

```nox
from nyx.websocket import WebSocketServerConn
import nyx.cable
import nyx.server

def ws_handle(conn: WebSocketServerConn) -> None:
    nyx.cable.ws_echo(conn)

mode: str = nyx.server.serve_mode(cfg, True)
if mode == "multicore_ws_tls":
    nox.http.serve_multicore_ws_tls(
        cfg.port, handle, nyx.server.workers(cfg), ws_handle,
        cfg.tls_cert_path, cfg.tls_key_path
    )
elif mode == "multicore_ws":
    nox.http.serve_multicore_ws(
        cfg.port, handle, nyx.server.workers(cfg), ws_handle
    )
elif mode == "ws_tls":
    nox.http.serve_ws_tls(cfg.port, handle, ws_handle, cfg.tls_cert_path, cfg.tls_key_path)
else:
    nox.http.serve_ws(cfg.port, handle, ws_handle)
```

## 5. Health

- `GET /health` / `/healthz` → `{"status":"ok"}`
- `GET /ready` → `SELECT 1` on app DB (sqlite or postgres)
- `GET /metrics` → Prometheus text (SharedBuffer-backed counters)

## 6. Install

Pin Nyx in `nox.json`:

```json
{ "alias": "nyx", "repo": "github.com/mburakmmm/nyx", "ref": "v0.20.0" }
```

Requires **noxc ≥ 1.142.23** (CI pin **1.142.23**). `NYX_TRUSTED_PROXIES` bağlanan IP allowlist’idir (`HttpRequest.peer_addr`); liste boşken `NYX_TRUST_X_FORWARDED_FOR=1` kenarın XFF’ini olduğu gibi kullanır. IPv6 allowlist girdisi köşeli parantezsizdir (`::1`).

SMTP: `NYX_MAIL_SMTP_STARTTLS=0` (default) speaks immediate TLS, typical port 465. `=1` speaks plain TCP then STARTTLS, typical port 587 (`NYX_MAIL_SMTP_PORT`). HTML multipart is sent as `to_eml`. On noxc 1.142.23, Gmail 465/587 and Office365 587 completed EHLO, STARTTLS where used, and QUIT. Authentication and a real message were not sent.
