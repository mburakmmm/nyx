# nyx

[English](README.md) · [Türkçe](README.tr.md)

**Rails-style, batteries-included web framework for [Nox](https://github.com/mburakmmm/nox-lang).**

**Version:** 0.3.1 · **License:** MIT · **Required alias:** `nyx`

---

## This is a Nox package (not a standalone binary)

`nyx` is consumed like any other Nox library:

1. Add it to your app’s **`nox.json`** under `requires`
2. Run **`noxc fetch`** (or `noxc update`)
3. Import with **`import nyx...`** (alias **must** be `nyx`)

Copying `.nox` files by hand is not supported — use the Nox package manager.

### `nox.json`

```json
{
  "name": "myapp",
  "entry": "main.nox",
  "requires": [
    {
      "alias": "nyx",
      "repo": "github.com/mburakmmm/nyx",
      "ref": "v0.3.1"
    }
  ]
}
```

```sh
noxc fetch
noxc run main.nox
```

> **Important:** Internal imports are `import nyx.db`, `import nyx.app`, etc.  
> If the alias is not exactly `nyx`, the package will not resolve.

### Local path (development)

```json
{
  "alias": "nyx",
  "repo": "/absolute/path/to/nyx",
  "ref": "master"
}
```

After editing the local checkout, sync or `noxc update` so `~/.nox/pkg/mod/...` picks up changes.

---

## Quick start

```sh
# from a clone of this repo (generators only)
./bin/nyx new myapp
cd myapp
# point requires at github.com/mburakmmm/nyx@v0.3.1 (or this checkout)
noxc fetch
NYX_ENV=development noxc run main.nox
```

Minimal `main.nox`:

```nox
import nox.http
from nox.http import HttpRequest, HttpResponse
from nox.router import Context
import nyx.app
import nyx.config
import nyx.ctrl
from nyx.app import Application
from nyx.config import Config

def setup(application: Application) -> None:
    def home(ctx: Context) -> HttpResponse:
        context: dict[str, str] = {}
        context["title"] = "Hello"
        return nyx.ctrl.render(200, "app/views/home.html", context)
    application.router.get("/", home)

def handle(req: HttpRequest) -> HttpResponse:
    cfg: Config = nyx.config.load()
    application: Application = nyx.app.boot(cfg, setup)
    resp: HttpResponse = HttpResponse(500, "", {})
    try:
        resp = nyx.app.dispatch(application, req)
    finally:
        application.db.close()
    return resp

nox.http.serve(8080, handle)
```

`nyx.app.boot` opens SQLite, optionally runs migrations (`Config.auto_migrate` / `NYX_AUTO_MIGRATE`), installs session + CSRF + security headers + request logging, then calls your `setup`.

Define route handlers **inside** `setup` so they close over `application.db` (Nox: top-level functions cannot see module globals). Open/close `nyx.cache` (and similar resources) inside the handlers that use them.

---

## What you get

| Area | Modules |
|---|---|
| App lifecycle | `nyx.app`, `nyx.config`, `nyx.runtime` |
| HTTP | `nyx.ctrl`, `nyx.view`, `nyx.params`, `nyx.routes`, `nyx.form` |
| Data | `nyx.db`, `nyx.model`, `nyx.assoc` |
| Security | `nyx.session`, `nyx.csrf`, `nyx.auth`, `nyx.jwt`, `nyx.password`, `nyx.security`, `nyx.cors` |
| Extras | `nyx.mailer`, `nyx.job`, `nyx.storage`, `nyx.cache`, `nyx.i18n`, `nyx.cable`, `nyx.flash`, `nyx.testing` |

### Notable APIs (0.3.1)

- **Params:** `from_request` keeps the query string through `dispatch`; `permit` / `missing_required` / `require_keys`; multipart bodies are ignored (query still returned)
- **CSRF:** session-bound tokens; `/api/` exempt by default; `protect_except` for custom prefixes
- **Session:** `cycle_session` / regenerate on privilege change; flash auto-clears on read
- **Jobs:** `reclaim_stale` + `work` / `work_forever`; CLI `nyx jobs work` runs `jobs/worker.nox`
- **Storage:** path traversal blocked on read/write
- **Redirects:** `redirect_back` allows only safe relative locations
- **Cache:** `Cache.close` — open/close per use site
- **Config:** `auto_migrate`, `csp`, env overrides including `NYX_AUTO_MIGRATE` / `NYX_CSP`

### CLI

```sh
./bin/nyx new blog
./bin/nyx generate model Post title:string body:text
./bin/nyx generate scaffold Comment body:text
./bin/nyx db migrate | rollback | schema | seed
./bin/nyx jobs work
./bin/nyx console
./bin/nyx server
./bin/nyx version
```

Scaffold writes `config/scaffold_<name>_routes.nox.snippet` with handlers meant to be pasted inside `setup(application)`.

### Configuration

| Variable | Meaning |
|---|---|
| `NYX_ENV` | `development` / `test` / `production` |
| `NYX_SECRET_KEY` | session/CSRF secret (≥32 chars in production) |
| `NYX_DB_PATH` / `DATABASE_URL` | SQLite path or `sqlite:///...` |
| `NYX_MIGRATE_PATH` | migration directory (default `db/migrate`) |
| `NYX_AUTO_MIGRATE` | `1`/`0` — run migrations inside `boot` (default on; prefer `0` + `nyx db migrate` in production) |
| `NYX_CSRF` | CSRF middleware on/off |
| `NYX_LOCALE` / `NYX_LOCALES_PATH` | default locale and locale files |
| `NYX_CSP` | optional Content-Security-Policy value |
| `NYX_CACHE_PATH` / `NYX_STORAGE_PATH` / `NYX_JOBS_DB_PATH` | cache, uploads, jobs SQLite paths |
| `NYX_MAIL_DELIVERY` / `NYX_MAIL_FROM` / `NYX_MAIL_API_*` | `file` or `http` mail delivery |

---

## Changelog — 0.3.1

Hardening and correctness release (stdlib gaps unchanged: no Postgres driver, no server TLS, no WebSocket).

- Preserve query strings across `app.dispatch` → `params.from_request`
- `response.with_header` keeps tracked + known headers
- Mailer rejects CR/LF in header fields (byte-safe)
- Jobs no longer stick in `running`; stale reclaim on `work`
- Session-bound CSRF; `/api/` exempt; safer cookies / CORS / redirects / storage
- Model JSON `null` → SQL `NULL`; transactional migrations; optional `auto_migrate`
- `params.permit` / `missing_required`; flash one-shot; JWT past-`exp` rejected
- Cable docs: Hub is not process-wide; CLI scaffold + `jobs work`

---

## Examples

- [`examples/blog`](examples/blog/) — migrations, model, forms, CSRF via `nyx.app`
- [`examples/app`](examples/app/) — JWT login API

```sh
cd examples/blog
# set requires.repo to this checkout or github.com/mburakmmm/nyx@v0.3.1
noxc fetch && NYX_ENV=development noxc run main.nox
```

---

## Platform limits (Nox)

- No process-wide app singleton → boot per request (set `NYX_AUTO_MIGRATE=0` in production and migrate via CLI)
- Request state uses `nox.os` env vars (`nyx.runtime`) — one concurrent HTTP worker assumed
- SQLite today; `postgres://` raises until `nox.postgres` exists
- Terminate TLS at a reverse proxy; nyx sets security headers
- Realtime via SSE/long-poll (`nyx.cable`), not WebSocket — Hub is per-request unless you persist elsewhere
- Mail via file spool or HTTP provider API
- Prefer ASCII in HTML templates (some non-ASCII glyphs have crashed Nox template rendering)

---

## Tests

```sh
noxc test
# or:
for f in tests/*_test.nox; do noxc test "$f" || exit 1; done
```

## Links

- Repo: [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- Nox language: [github.com/mburakmmm/nox-lang](https://github.com/mburakmmm/nox-lang)
- Turkish docs: [README.tr.md](README.tr.md)
