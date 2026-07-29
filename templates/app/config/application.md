# Application settings
#
# Prefer environment variables (see nyx.config):
#   NYX_ENV=development|test|production
#   NYX_SECRET_KEY=...          (required in production, >= 32 chars)
#   NYX_DB_PATH=db/app.sqlite
#   DATABASE_URL=sqlite:///db/app.sqlite
#   NYX_PORT=8080
#   NYX_CSRF=true
#   NYX_LOCALE=en
#
# TLS: terminate inbound HTTPS at a reverse proxy (nginx/caddy). Nyx sets security headers.
# Outbound TLS / WebSocket clients (Nox >= 1.14): nyx.tls.connect / nyx.websocket.connect
#
# Databases (Nox >= 1.13 prepare/bind on raw drivers):
#   - Application / nyx.model / jobs / migrate: SQLite only
#     (DATABASE_URL=sqlite:///... or NYX_DB_PATH)
#   - Raw drivers (prepare/bind available):
#       pg = nyx.db.open_postgres("postgres://user:pass@host:5432/db")
#       stmt = pg.prepare("SELECT id FROM t WHERE name = $1")
#       my = nyx.db.open_mysql("mysql://user:pass@host:3306/db")
#   - open_url(postgres|mysql://...) raises and points to open_* helpers
#     so Application.db type stays SQLite Connection.
