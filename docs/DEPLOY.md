# Nyx 0.9 — Deployment guide

Production checklist for a Nyx app behind a reverse proxy (recommended).

## 1. Process model

- One OS process per worker (`nox.http.serve` / `serve_multicore`).
- Boot **once** at module top-level; call `nyx.app.shutdown(application)` in `finally` (see `templates/app/main.nox`).
- Inbound HTTPS terminates at the proxy (Nox has no server TLS). WebSocket Upgrade is also proxy/app-level until Nox adds it; use SSE/long-poll cable.

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
| `NYX_MAIL_SMTP_*` | When `smtp` — see below |
| `NYX_PORT` / `NYX_HOST` | Bind address (proxy upstream) |

Optional: `NYX_CSP`, `NYX_CSRF_API_EXEMPT`, `NYX_CACHE_PATH`, `NYX_STORAGE_PATH`, `NYX_LOCALE`.

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
./bin/nyx db migrate   # uses nyx.db.migrate_postgres when URL is postgres
```

- App ORM for PG: `application.pg` + `nyx.pg_model` (RETURNING ids).
- SQLite ORM (`nyx.model` / `ac.db()`) remains for SQLite dialect apps.
- Jobs queue stays on SQLite at `NYX_JOBS_DB_PATH` (separate from app PG).

## 4. Migrations in CI/CD

```sh
NYX_ENV=production NYX_SECRET_KEY=… DATABASE_URL=… NYX_AUTO_MIGRATE=0 \
  ./bin/nyx db migrate
```

Do **not** rely on boot-time migrate in production.

## 5. Health probes

Boot mounts:

- `GET /health` / `GET /healthz` → `{"status":"ok"}`
- `GET /ready` → `SELECT 1` on the active dialect DB (`200` / `503`)

Point k8s/load-balancer readiness at `/ready`, liveness at `/healthz`.

## 6. Mail (SMTP)

```sh
export NYX_MAIL_DELIVERY=smtp
export NYX_MAIL_SMTP_HOST=smtp.example.com
export NYX_MAIL_SMTP_PORT=465
export NYX_MAIL_SMTP_USER=apikey
export NYX_MAIL_SMTP_PASSWORD=secret
export NYX_MAIL_FROM=noreply@example.com
```

Uses TLS client (`nox.tls`) — SMTPS on 465. STARTTLS/plain TCP is not available without a raw TCP stdlib.

## 7. Proxy sketch (Caddy)

```
example.com {
  reverse_proxy 127.0.0.1:8080
}
```

Forward `X-Forwarded-Proto` / `X-Request-Id` if you terminate TLS at the edge; set `NYX_SECURE_COOKIES=1`.

## 8. CLI install

From a published tag:

```sh
noxc install github.com/mburakmmm/nyx@v0.9.0
nyx version
nyx new myapp
```

`nox.json` declares `"bin": { "name": "nyx", "path": "cli.nox" }` which delegates to `bin/nyx`.

## 9. Multicore / cable

- `serve_multicore`: each worker has its own `Application` and in-memory cable hub.
- Cross-worker broadcasts: `nyx.cable.open_store(path)` (SQLite-backed hub) shared via filesystem.
