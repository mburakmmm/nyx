# Nyx 0.10 — Deployment guide

Production checklist for a Nyx app. Reverse proxy hâlâ önerilir; Nox ≥ 1.22 ile doğrudan HTTPS/WS de mümkün.

## 1. Process model

- One OS process per worker (`nox.http.serve` / `serve_multicore` / `*_tls` / `*_ws`).
- Boot **once** at module top-level; register cleanup with `nyx.app.on_shutdown`, then
  `nyx.app.shutdown(application)` in `finally` (see `templates/app/main.nox`).
- Inbound HTTPS: proxy **veya** `NYX_TLS_CERT` + `NYX_TLS_KEY` → `nox.http.serve_tls`.
- WebSocket: `nox.http.serve_ws` / `serve_ws_tls` + `nyx.cable.ws_echo` / `ws_broadcast_loop`.
  SSE/long-poll cable hâlâ desteklenir (eski istemciler / proxy kısıtları).

## 2. Required environment

| Variable | Production |
|---|---|
| `NYX_ENV` | `production` |
| `NYX_SECRET_KEY` | ≥32 chars, not a placeholder |
| `NYX_DB_PATH` or `DATABASE_URL` | SQLite path/`sqlite:///…` **or** `postgres://…` |
| `NYX_AUTO_MIGRATE` | `0` (run migrate in release step) |
| `NYX_SECURE_COOKIES` | `1` (behind HTTPS) |
| `NYX_JOBS_DB_PATH` | Separate SQLite file (default `db/jobs.sqlite`) |
| `NYX_MAIL_DELIVERY` | `smtp` / `http` / `file` |
| `NYX_MAIL_SMTP_*` | When `smtp` — SMTPS/465 |
| `NYX_PORT` / `NYX_HOST` | Bind address |
| `NYX_TLS_CERT` / `NYX_TLS_KEY` | Optional PEM paths for `serve_tls` |

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
`application.db` remains a SQLite `Connection` placeholder when dialect is postgres
(Nox `DbConnection` shares `execute`/`close` only — not `query`/`Row`).

## 4. TLS / WebSocket

```sh
export NYX_TLS_CERT=/etc/ssl/certs/app.pem
export NYX_TLS_KEY=/etc/ssl/private/app.key
# macOS OpenSSL: brew install openssl@3 (libssl absolute path / NOX_OPENSSL_LIB)
```

Template `main.nox` calls `serve_tls` when both paths are set. For WS:

```nox
from nyx.websocket import WebSocketServerConn
import nyx.cable

def ws_handle(conn: WebSocketServerConn) -> None:
    nyx.cable.ws_echo(conn)

nox.http.serve_ws(cfg.port, handle, ws_handle)
# or: nox.http.serve_ws_tls(cfg.port, handle, ws_handle, cert, key)
```

## 5. Health

- `GET /health` / `/healthz` → `{"status":"ok"}`
- `GET /ready` → `SELECT 1` on app DB (sqlite or postgres)

## 6. Install

```sh
noxc install github.com/mburakmmm/nyx --ref v0.10.0
# Requires Nox >= 1.22.0 (CI uses 1.22.9)
```
