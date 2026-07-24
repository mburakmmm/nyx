# Application settings
#
# Prefer environment variables (see nyx.config):
#   NYX_ENV=development|test|production
#   NYX_SECRET_KEY=...          (required in production, >= 32 chars)
#   NYX_DB_PATH=db/app.sqlite   or DATABASE_URL=sqlite:///db/app.sqlite
#   NYX_PORT=8080
#   NYX_CSRF=true
#   NYX_LOCALE=en
#
# TLS: terminate at a reverse proxy (nginx/caddy). Nyx sets security headers.
# Postgres: not in Nox stdlib yet — use SQLite until nox.postgres ships.
