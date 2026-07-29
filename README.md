# nyx

[English](README.md) · [Türkçe](README.tr.md)

**Rails-scoped, batteries-included web framework for [Nox](https://github.com/mburakmmm/nox-lang).**  
Scope matches Rails’ problem domains (app lifecycle, models, security, jobs…). Ergonomics are still catching up — prefer the typed APIs below.

**Version:** 0.9.1 · **License:** MIT · **Requires Nox ≥ 1.18.1**  
Internal imports use package name `nyx` (Nox ≥ 1.12.1: consumer `requires[].alias` may differ).

---

## This is a Nox package (not a standalone binary)

1. Add to your app’s **`nox.json`** under `requires`
2. Run **`noxc fetch`** / **`noxc update`**
3. Import with **`import nyx...`** (recommended alias: `nyx`)

```json
{
  "name": "myapp",
  "entry": "main.nox",
  "requires": [
    {
      "alias": "nyx",
      "repo": "github.com/mburakmmm/nyx",
      "ref": "v0.9.1"
    }
  ]
}
```

```sh
noxc fetch && noxc run main.nox
```

### Local path (development)

```json
{ "alias": "nyx", "repo": "/absolute/path/to/nyx", "ref": "master" }
```

---

## Quick start

```nox
import nox.http
from nox.http import HttpRequest, HttpResponse
from nox.router import Context
import nyx.app
import nyx.config
import nyx.ctrl
import nyx.ctx
import nyx.model
from nyx.app import Application
from nyx.config import Config
from nyx.ctx import AppContext
from nyx.model import Attributes

def setup(application: Application) -> None:
    def home(ctx: Context) -> HttpResponse:
        ac: AppContext = nyx.ctx.wrap(application, ctx)
        context: dict[str, str] = {}
        context["title"] = "Hello"
        context["env"] = ac.config().env
        return nyx.ctrl.render(200, "app/views/home.html", context)

    def create(ctx: Context) -> HttpResponse:
        ac: AppContext = nyx.ctx.wrap(application, ctx)
        attrs: Attributes = nyx.model.attributes()
        nyx.model.set_str(attrs, "title", ac.param("title", ""))
        nyx.model.create_attrs(ac.db(), "posts", attrs)
        return nyx.ctrl.redirect("/")

    application.router.get("/", home)
    application.router.post("/posts", create)

cfg: Config = nyx.config.load()
application: Application = nyx.app.boot(cfg, setup)

def handle(req: HttpRequest) -> HttpResponse:
    return nyx.app.dispatch(application, req)

nox.http.serve(8080, handle)
```

Boot **once** at module top-level (Nox ≥ 1.10 module globals). Define handlers **inside** `setup` so they close over `application`. Prefer `nyx.ctx.wrap` + `create_attrs`.

---

## What you get

| Area | Modules |
|---|---|
| App lifecycle | `nyx.app`, `nyx.config`, `nyx.runtime`, `nyx.ctx` |
| HTTP | `nyx.ctrl`, `nyx.view`, `nyx.params`, `nyx.routes`, `nyx.form` |
| Data | `nyx.db`, `nyx.model`, `nyx.assoc` |
| Security | `nyx.session`, `nyx.csrf`, `nyx.auth`, `nyx.jwt`, `nyx.password`, `nyx.security`, `nyx.cors` |
| Extras | `nyx.mailer`, `nyx.job`, `nyx.storage`, `nyx.cache`, `nyx.i18n`, `nyx.cable`, `nyx.flash`, `nyx.testing` |

### Typed models (preferred)

```nox
attrs: Attributes = nyx.model.attributes()
nyx.model.set_str(attrs, "title", title)
nyx.model.set_int(attrs, "user_id", user_id)
nyx.model.set_null(attrs, "bio")
id: int = nyx.model.create_attrs(db, "posts", attrs)

row: Record | None = nyx.model.find(db, "posts", id)
if row == None:
    return nyx.ctrl.text(404, "not found")
# Narrow first: get_opt / get_or need Record, not Record | None
bio: str | None = row.get_opt("bio")   # SQL NULL -> None
title: str = row.get_or("title", "")
```

JSON-string `create` / `update` remain for compatibility; new code should use `Attributes`.

### Views without template loops

Nox templates have no `{% for %}`. Prefer field-key partials or `list[dict]` contexts (Nox ≥ 1.8.2):

```nox
fields: list[str] = []
fields.append("title")
fields.append("body")
html: str = nyx.view.render_records("app/views/posts/_item.html", rows, fields)
# or: nyx.view.render_each(path, contexts)  # list[dict[str,str]]
```

Default `render` / `render_with_layout` / `render_records` HTML-escape substitutions. Use `*_unescaped` only for trusted, already-safe HTML fragments (never raw user input). Layout body injection is slot-then-replace so `{{...}}` inside the view body is not re-parsed.
### CLI

```sh
./bin/nyx new blog
./bin/nyx generate model Post title:string body:text
./bin/nyx generate scaffold Comment body:text
./bin/nyx db migrate | rollback | schema | seed
./bin/nyx jobs work
./bin/nyx console | server | version
```

### Configuration

| Variable | Meaning |
|---|---|
| `NYX_ENV` | `development` / `test` / `production` |
| `NYX_SECRET_KEY` | ≥32 chars in production |
| `NYX_DB_PATH` / `DATABASE_URL` | SQLite for app ORM (`sqlite:///...`); use `open_postgres` / `open_mysql` for raw drivers |
| `NYX_AUTO_MIGRATE` | `1`/`0` (production default `0`; prefer CLI migrate) |
| `NYX_CSRF` / `NYX_CSRF_API_EXEMPT` / `NYX_CSP` / `NYX_LOCALE` | security & i18n (`CSRF_API_EXEMPT` opts into `/api/` CSRF skip) |

---

## Changelog

### 0.9.1 — Fix CLI bin entry (`main` reserved)
- Rename `cli.nox` entry from reserved `main` to `cli_main` so `noxc install nyx` works.

### 0.9.0 — Rails-core production path (Nox ≥ 1.18.1)

- **Requires Nox ≥ 1.18.1** (CI pins `noxc` v1.18.1)
- `nyx.runtime` worker-local **module globals** (P1c fixed); `NYX_RT_*` removed
- `view.render_each_map` / `render_each_map_unescaped` (C2 fixed)
- **App:** `shutdown` / `on_shutdown`, `/health` `/healthz` `/ready`, dialect-aware boot (`application.db` | `application.pg` + `jobs_db`), development error page
- **CLI:** `nox.json` `bin` + `cli.nox` (`noxc install`); scaffold auto-wire (`<<NYX_GENERATED_ROUTES>>`); typed model generator (`find`/`create`/`save`)
- **DB:** `dialect_of_url`, `migrate_postgres` / `rollback_url`, `nyx.pg_model` (RETURNING), jobs DB path
- **Model:** query builder, uniqueness/format/numericality, callbacks, `Record` cell index, association preload
- **Views:** `nyx.html.SafeHtml` + `form.*_safe` / `html.put`
- **Jobs/mail/cable:** retry + dead-set; SMTP (SMTPS/TLS); SQLite cable store + `Channel` API
- Deploy guide: `docs/DEPLOY.md` · Nox requests: `docs/NOX_REQUESTS.md`

### 0.8.0 — Nox 1.14–1.17 integration

- **Requires Nox ≥ 1.14** (CI pins `noxc` v1.17.0)
- Raw PG/MySQL: document **prepare/bind** (Nox ≥ 1.13); ORM / migrate / jobs stay SQLite (separate Connection types; PG has no `last_insert_rowid`)
- `nyx.tls` / `nyx.websocket` — thin client wrappers (`nox.tls` / `nox.websocket`); server Upgrade still absent → cable remains SSE/long-poll
- Consumer package alias no longer must be `nyx` (Nox ≥ 1.12.1); internal imports still `import nyx...`
- `nyx.runtime` remains `NYX_RT_*` — package-module globals that are read/written from functions still break codegen with `Router` / nested closures (see `docs/NOX_LIMITATIONS.md`)
- `render_each_map` still omitted (package function-type params SIGSEGV on import)

### 0.7.0 — Nox 1.11 stdlib integration

- **Requires Nox ≥ 1.11**
- Params decode/query via `nox.url` (form `+` → space); app/csrf path stripping via `params.path_only`
- `nyx.db.open_postgres` / `open_mysql` for raw drivers; `open_url` stays SQLite-only (clear errors for pg/mysql URLs)
- `nyx.cache.open_memory(capacity)` — LRU memory cache (`nox.collections.LRUCache`)
- CI pins `noxc` v1.11.0
- ORM / migrate / jobs remain SQLite (PG/MySQL have no prepare/bind yet)
- `nyx.runtime` still uses `NYX_RT_*` (complex package-module globals still codegen-break when transitive)

### 0.6.0 — Nox 1.10 unlocks (boot-once)

- **Requires Nox ≥ 1.10**
- Boot-once `Application` in **app scripts** (module globals); examples/templates rewritten
- Jobs/transactions/dispatch: bare `except:` safety net
- `Record.get_opt` / `get_int_opt` methods; `view.render_each` / `render_each_unescaped`
- `response.with_header` + testing header helpers copy via `headers.keys()`
- CI pins `noxc` v1.10.0
- Note: package-module module-globals still break Nox codegen when accessed from functions — `nyx.runtime` keeps `NYX_RT_*` env storage

### 0.5.0 — Security core + Rails-ish DX

- CSRF: `/api/` no longer exempt by default; opt in via `protect_api_exempt` / `NYX_CSRF_API_EXEMPT=1`
- CSRF: empty sessions get a stable `_nyx` seed cookie so form tokens work across requests
- Auth: `require_bearer_unless_paths` (exact path match); production rejects placeholder secrets; `auto_migrate` defaults off in production
- Params: `validate_max_length` / `min_length` / `validate_email`; form: `select`, `checkbox`, `method_override`, `form_with_token` / `csrf.form_with`
- Routes: generic `path_index` / `path_show` / `path_edit` / `path_destroy`; ctrl: HTML/JSON error pages + `errors_html`
- Generators emit permit + path helpers + CSRF forms; blog integration smoke test; dispatch maps known errors to 500 pages

### 0.4.1 — Generator DX & hardening

- Scaffold/controller generators emit `AppContext` + typed `Attributes` / `create_attrs`
- `set_*` upserts duplicate keys; unknown attribute kinds and corrupt parallel lists fail fast
- Layout render: slot placeholder then string-replace (no second-pass `{{...}}` expansion in body)
- README: `Record | None` narrowing before `get_opt`; unescaped safety notes
- CI: GitHub Actions runs `noxc test`

### 0.4.0 — Typed models & DX

- `Attributes` + `create_attrs` / `update_attrs` / `create_fields` (typed binds)
- `Record.get_or` / `is_null` / `get_int_or` + `nyx.model.get_opt` / `get_int_opt` (NULL ≠ `""`)
- `nyx.ctx.AppContext` request-scoped helper
- `nyx.view.render_records` for collection partials
- Blog example rewritten to use the new APIs

### 0.3.1 — Hardening

Query preservation, header tracking, CSRF/session, jobs reclaim, storage/redirect safety, `auto_migrate`.

---

## Platform limits (Nox)

- Requires **Nox ≥ 1.18.1** (P1c/C2; prepare/bind; TLS/WS clients)
- Boot once; `NYX_AUTO_MIGRATE=0` in production; see [docs/DEPLOY.md](docs/DEPLOY.md)
- App ORM: **SQLite** (`application.db` / `nyx.model`) or **Postgres** (`application.pg` / `nyx.pg_model`)
- Jobs queue: SQLite at `NYX_JOBS_DB_PATH` (separate from app PG)
- Inbound TLS: reverse proxy; mail SMTP = SMTPS/465; cable = SSE/long-poll (+ optional SQLite store)
- No `{% for %}` → `render_records` / `render_each` / `render_each_map`
- Prefer `Attributes` / `SafeHtml` helpers over hand-built JSON / raw HTML strings

**Fit:** reverse-proxy, SQLite or Postgres app DB, jobs on SQLite, low–medium traffic.  
**Still Nox-bound:** server WebSocket Upgrade, task-local context, rich exception stacks — [docs/NOX_REQUESTS.md](docs/NOX_REQUESTS.md).

---

## Tests

```sh
noxc test
```

## Links

- [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- [Nox](https://github.com/mburakmmm/nox-lang) · [Türkçe](README.tr.md)
