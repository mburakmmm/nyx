# nyx

[English](README.md) · [Türkçe](README.tr.md)

**Rails-scoped, batteries-included web framework for [Nox](https://github.com/mburakmmm/nox-lang).**  
Scope matches Rails’ problem domains (app lifecycle, models, security, jobs…). Ergonomics are still catching up — prefer the typed APIs below.

**Version:** 0.25.0 · **License:** MIT · **Requires Nox ≥ 2.1.51** (CI **2.1.51**)  
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
      "ref": "v0.25.0"
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

`nyx.view.render` still does not run `{% for %}`. Block templates use `render_blocks` (`{% for %}` / `{% if %}`, Nox ≥ 2.1.7). Field partials remain:

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
| `NYX_WORKERS` | `1` = `serve*`; `>1` = `serve_multicore*` (pair with `NOX_POOL_WORKERS` under `--release`) |
| `NYX_RATE_LIMIT_STORE` | `memory` \| `db`; auto-`db` when `NYX_WORKERS>1` and unset |
| `NYX_TLS_CERT` / `NYX_TLS_KEY` | PEM paths → `serve_tls` / `serve_multicore_tls` |
| `NYX_SESSION` | `0` skips session middleware (API/fair bench); CSRF forces session on |
| `NYX_SECURITY_HEADERS` | `0` skips security after-middleware (fair bench) |
| `NYX_REQUEST_ID` | `0` skips uuid + `X-Request-Id` |
| `NYX_REQUEST_HEADERS` | `0` → `handle_bare` / `EMPTY_HEADERS` (Nox header-skip) |
| `NYX_MAIL_SMTP_PORT` | SMTP port (default `465`, immediate TLS) |
| `NYX_MAIL_SMTP_STARTTLS` | `1` = plain TCP then STARTTLS (typical `587`); `0` or empty = immediate TLS |
| `NYX_HTTP_TIMEOUT_MS` | Client deadline for mail API and `nyx.storage.store_http` (default `10000`; `0` disables). Includes DNS and TCP connect |
| `NYX_MAX_BODY_BYTES` / `NYX_MAX_HEADER_BYTES` / `NYX_READ_TIMEOUT_MS` / `NYX_MAX_CONNECTIONS` / `NYX_DRAIN_TIMEOUT_MS` | `0` keeps the Nox default (10 MiB, 16 KiB, 30s, 4096, 10s) |
| `NYX_HTTP2` | Default on. `0` forces HTTP/1.1. Header lookup is case-insensitive (`X-Csrf-Token`, `Last-Event-Id`) |
| `NYX_HTTP_POOL_IDLE` / `NYX_HTTP_POOL_IDLE_MS` | Outbound pool (default `32` / `90000`). Idle `0` disables it |
| `NYX_PG_QUERY_TIMEOUT_MS` | Postgres client query cancel (`0` off) |

---

## Changelog

### 0.25.0 — Nox 2.1.51 (not 1.0)
- Requires **Nox ≥ 2.1.51** (CI installs the official **2.1.51** package). Draft `v2.1.52` is not the pin
- `NYX_IPV6` with `NYX_WORKERS>1` is valid. `nyx.server.apply` passes `ip_family` (`1` dual-stack, `2` IPv6-only). Windows ignores that setting
- `nyx.view.render_blocks` / `nyx.ctrl.render_blocks` run `{% for %}` and `{% if %}`. `render` leaves those tags as text
- Form query strings go through `nox.url.query_decode`, which now treats `+` as space
- Request ids are UUIDv7. Session and storage ids stay UUIDv4
- `NYX_PG_QUERY_TIMEOUT_MS` calls `Connection.set_query_timeout` before migrate. `0` leaves it unset
- A closure value is still rejected by `serve_multicore*`. A top-level factory is accepted; Nyx keeps a bare handler name

### 0.24.0 — Nox 2.0.188 (not 1.0)
- Requires **Nox ≥ 2.0.188** (CI installs the official **2.0.188** package: linux-x64, bundled `qbe`)
- `nyx.app.boot` calls `nyx.server.apply`: `nox.http.configure`, `set_http2`, `client_pool`. `0` on a limit keeps the stdlib default. HTTP/2 is on unless `NYX_HTTP2=0`. POSIX SIGTERM/SIGINT returns from `serve*` so `finally` can run `nyx.app.shutdown`
- Header lookup is case-insensitive (`nyx.params.header`). HTTP/2 delivers Title-Case names
- A second `Set-Cookie` is appended with `nyx.response.add_header` (`\n`, written as separate header lines)
- `dispatch` copies `req.conn`. `nyx.cable.live_sse` streams while the socket is open; `conn == 0` returns one buffered SSE body. After the stream starts, later middleware cannot add headers. Pass `nyx.security.header_dict` into `open_sse`. The session cookie must already exist
- `nyx.storage.path_for` uses `nox.path.safe_join` (component boundary, symlink checked). `fetch` downloads with `download_to_file`. `store_http_file` streams an upload
- `noxc run --release main.nox`: the flag goes before the path. A flag after the path is program argv

### 0.23.0 — Nox 2.0.68 (not 1.0)
- Requires **Nox ≥ 2.0.68** (CI installs the official **2.0.68** package: linux-x64, bundled `qbe`)
- Mail API and `nyx.storage.store_http` call `nox.http.request` with `NYX_HTTP_TIMEOUT_MS` (default 10s, `0` disables). `HttpTimeoutError` is a distinct mail/storage error. `store_http` accepts `POST`, `PUT`, and `PATCH`; `store_http_post` is the POST wrapper
- Local storage blobs, their `.meta.json` sidecars, and file-delivery `.eml` files use `nox.fs.write_string_atomic`
- `normalize_email` stays `nox.strings.lower` (Unicode casefold since Nox 2.0.56). ASCII addresses are unchanged. `nox.unicode.lower_tr` is not the account key (`I` would become `ı`)

### 0.22.0 — Nox 2.0.7 (not 1.0)
- Requires **Nox ≥ 2.0.7** (CI installs the official **2.0.7** package: linux-x64, bundled `qbe`). 2.0.0-rc.4 fixed module-level `application = nyx.app.boot(cfg, setup)` (stale local / SIGSEGV and the blog compile failure present from 1.170 through 2.0.0-rc.3)
- `nox.json` names stay `parse` / `dump` / `dump_string`. 1.171 removed `decode` / `encode*`; 2.0 keeps that removal
- Stdlib exception text is English since 2.0.1. SMTP failures surface as `smtp: TLS upgrade failed: …` / `unexpected SMTP code`. The fake-SMTP test expects `CertificateHostMismatch` after a 220 STARTTLS reply
- Job handler errors use `except (ModelError, MailerError, …) as e` (Nox 2.0). The message still goes to `fail()`
- The router now strips the query and fills `Context.query`. Nyx still cuts the path before `dispatch` so logs stay path-only and `nyx.params` keeps form `+` → space via `runtime.request_target`. `nox.url.query_decode` leaves `+` literal
- SQL `bind_*` indexes stay zero-based. An out-of-range index raises the driver error (2.0.0-rc.2)

### 0.21.0 — Nox 1.170 json names (not 1.0)
- `nox.json` calls are `parse` / `dump` / `dump_string`. Nox 1.171 removed `decode` / `encode*`
- CI installs published **1.170.0** (linux-x64 `x86_64_v2`, bundled `qbe`). Default backend since 1.143 is LLVM; `--release` is that alias, `--backend qbe` selects QBE

### 0.20.0 — Nox 1.142.23, MySQL, IPv6 (not 1.0)
- Requires **Nox ≥ 1.142.23** (CI installs the official **1.142.23** tarball: linux-x64 `x86_64_v2`, `qbe` in the package)
- `NYX_IPV6=1` binds with `listen_v6` and serves that fd (`serve_fd` / `serve_fd_tls`). `NYX_IPV6_ONLY=1` disables dual-stack. `NYX_WORKERS>1` with IPv6 raises `ServerError` because `serve_multicore*` listens on IPv4
- Rate-limit keys parse `[addr]:port` as the address inside the brackets
- A subclass `__init__` that only sets `message` still receives `Exception.line` at the `raise` site (rechecked on 1.142.23)
- `nox.db.DbConnection` accepts sqlite, postgres, and mysql connections for `close` / `execute` / `query` / `prepare`. Model modules stay split on SQL dialect (`?` vs `$n`, `RETURNING`, identifier quotes). `last_insert_rowid` is not on the protocol
- Gmail 465/587 and Office365 587 completed EHLO, STARTTLS where used, and QUIT on 1.142.23. Authentication and a real message were not sent
- `DATABASE_URL=mysql://...` boots, migrates, and serves sessions and auth through `nyx.mysql_model`, `nyx.session_store_mysql`, and `nyx.auth_engine_mysql`

### 0.19.0 — Nox 1.142 pin (not 1.0)
- Requires **Nox ≥ 1.142.3** (CI **1.142.3**, built for `x86-64-v3` plus qbe)
- `HttpRequest.peer_addr` (`"ip:port"`, Nox 1.127) is the rate-limit client key when trust is off. Empty peer (tests, `dispatch_from_parts`) still shares the `"direct"` bucket
- `NYX_TRUSTED_PROXIES` is an IP allowlist: `X-Forwarded-For` is used only when the connecting IP is in that list. Empty list + `NYX_TRUST_X_FORWARDED_FOR=1` keeps the previous “operator asserts the edge” behavior
- Nyx `*Error` types no longer override `__init__`, so caught exceptions carry `Exception.line` (Nox 1.126). Development 500 JSON/HTML includes `line`; production stays generic
- `nyx.jwt` stays (exp/nbf/iat). `nox.jwt` is HS256-only and does not check those claims
- Nox 1.122 no longer wraps `main` in a fiber just because `TaskLocal` exists. `nyx.runtime` keeps request state in a module box on that root path; connection fibers still use `TaskLocal`
- Gmail/Outlook SMTP TLS and `nox.orm` as the Nyx model remain out of scope

### 0.18.0 — Nox 1.104 pin (not 1.0)
- Requires **Nox ≥ 1.104.0** (CI **1.104.0**)
- Mailer uses `nox.smtp`: default immediate TLS (465); `NYX_MAIL_SMTP_STARTTLS=1` for plain TCP then STARTTLS. HTML `to_eml` is preserved (`nox.smtp.send` is plain-text only)
- Gmail 465/587 and Office365 587 can still fail inside `nox.tls` with `TlsUnexpectedMessage`; the API is wired, those servers are not claimed to work
- `Statement` imports go through `nox.db` (sqlite and postgres share the class). `nyx.model` / `nyx.pg_model` SQL stays split (`?` vs `$1`); `nox.orm` is not the Nyx model
- Peer IP and caught-exception line land in 0.19.0

### 0.17.0 — Nox 1.27–1.29 M:N / `--release` (not 1.0)
- Requires **Nox ≥ 1.29.0** (CI **1.29.11**)
- **`NYX_WORKERS`** + `nyx.server.serve_mode` → `serve_multicore*` / TLS matrix
- Prod path: `noxc build --release` + `NOX_POOL_WORKERS` (shared M:N pool)
- **`nyx.metrics`**: locked `SharedBuffer` counters (safe under fiber steal)
- Multicore + unset rate store → **`rate_limit_store=db`** on `jobs_db`
- Hot-path: CSRF-only session seed (no HMAC on empty API); `with_headers` batch; fair flags `NYX_SESSION` / `NYX_SECURITY_HEADERS` / `NYX_REQUEST_ID` / `NYX_REQUEST_HEADERS`; `dispatch_from_parts` + `handle_bare`
- Docs: 1.27–1.29 closed in NOX_REQUESTS / LIMITATIONS / DEPLOY

### 0.16.0 — Nox 1.24–1.26 unlock (not 1.0)
- Requires **Nox ≥ 1.26.0**
- **TaskLocal** request state (`nyx.runtime`) — fiber-safe session/user bag
- All Nyx `*Error` types inherit **`Exception`**; dispatch `except Exception`
- **`dict[int, Record]`** preload: `assoc.preload_belongs_to_map`, `orm.index_records_by_id`
- Docs: N1/N5/`dict[int,T]` closed in NOX_REQUESTS / LIMITATIONS

### 0.15.5 — PG smoke typing (not 1.0)
- Type `list[Row]` in `ci/pg_smoke.nox` (Nox else-branch var rules)

### 0.15.4 — PG CI smoke path fix (not 1.0)
- Run Postgres smoke from `ci/pg_smoke.nox` (not `/tmp`) so package imports resolve

### 0.15.3 — CI / Nox 1.23 fix (not 1.0)
- Requires **Nox ≥ 1.23.0** (`nox.db.Row`); CI installs via `bash` + refreshes `nox.lock` to `GITHUB_SHA`
- Unlocks green Actions for the 0.15.2 hardening work

### 0.15.2 — Hardening follow-up (not 1.0)
- **CI:** Nox install via `bash` (fixes `pipefail` under dash/`sh`)
- **WS:** channel-bound tickets + one-time nonce; `ws_auth_broadcast_loop_pg`
- **PG E2E:** Application boot → register/login → SID rotate → logout (CI `DATABASE_URL`)
- **Rate limit:** `NYX_TRUST_X_FORWARDED_FOR` (honest flag); `NYX_RATE_LIMIT_STORE=db` on `jobs_db`
- **Auth:** timing-equalized verify (dummy digest); atomic `failed_attempts` bump

### 0.15.1 — Hardening (not 1.0)
- **SID rotation** on login (`cycle_session` / `login_session`); **server-side logout** destroys SID + `Max-Age=0`
- **Postgres session/auth:** `nyx.session_store_pg` + `*_pg` auth APIs; db sessions use `Application.pg` when dialect=postgres (not `:memory:` SQLite)
- **Auth harden:** email normalize, hashed reset tokens, generic errors (less enumeration), generator 422 + dialect routing
- **Metrics** decoupled from request logging; exception-path 5xx counted; worker-local note in Prometheus text
- **Rate limit:** ignore `X-Forwarded-For` unless `NYX_TRUSTED_PROXIES` set; auth paths use `NYX_RATE_LIMIT_AUTH_MAX`; memory eviction; conditional UPDATE
- **WS auth:** signed `ticket` via `issue_ws_ticket` (raw sid bearer rejected)
- **AppContext:** `set_session` / `cycle_session` / `logout` / `pg`
- Shutdown hook / close failures logged
- Docs: Platform limits aligned with Nox 1.22 TLS/WS

### 0.15.0 — Batteries-included path (B + Devise-core; not 1.0)
- **Session store (db):** signed `sid` cookie + `nyx_sessions` table; revoke / logout-all; `NYX_SESSION_STORE=cookie|db`
- **Auth engine:** register/login/reset/lockout + `nyx generate auth`
- **Rate limit**, structured JSON logs, deeper `/ready` (app+jobs), `/metrics`
- **ORM helpers:** `nyx.orm` soft-delete/format/numericality + preload index; dual `.pg.sql` migrations
- **Jobs:** production `work_forever` worker template; `nyx jobs dead`
- **Storage:** size/MIME limits + HTTP store helper; mail templates
- **Cable:** `ws_auth_broadcast_loop`; generators for mailer/job/channel
- **Ops:** secret rotation (`NYX_SECRET_KEY_PREVIOUS`); PG CI smoke job
- Version stays **0.x** (no 1.0 tag)

### 0.10.0 — Nox 1.22 unlock (TLS/WS server, hooks, dialect boot)
- **Requires Nox ≥ 1.22.0** (CI pins **1.22.9**)
- Real `on_shutdown` hook registry on `Application` (Nox 1.21.1 confirmed safe with nested Router)
- Dialect-aware boot: `postgres://` / `DATABASE_URL` → `nyx.app.pg(application)` + `migrate_postgres`; sqlite ORM unchanged
- Development error page wired in `dispatch` (`server_error_detail_for` + typed exceptions)
- `nyx.routes.post_with_override` (nested fn-typed capture — Nox 1.21.1)
- `nyx.server` (`serve_mode` / TLS file checks); template uses `nox.http.serve_tls` when `NYX_TLS_CERT`+`NYX_TLS_KEY` set
- Cable: `ws_echo` / `ws_broadcast_loop` on `WebSocketServerConn` (Nox 1.22 `serve_ws*`)
- `nyx.websocket` re-exports `WebSocketServerConn`; docs/DEPLOY/LIMITATIONS/REQUESTS updated

### 0.9.1 — Fix CLI bin entry (`main` reserved)
- Rename `cli.nox` entry from reserved `main` to `cli_main` so `noxc install nyx` works.

### 0.9.0 — Rails-core production path (Nox ≥ 1.18.1)

- **Requires Nox ≥ 1.18.1** (CI pinned `noxc` v1.18.1 at release)
- `nyx.runtime` worker-local **module globals** (P1c fixed); `NYX_RT_*` removed
- `view.render_each_map` / `render_each_map_unescaped` (C2 fixed)
- **App:** `shutdown`, `/health` `/healthz` `/ready`, jobs DB path; `on_shutdown` stub until 0.10
- **CLI:** `nox.json` `bin` + `cli.nox`; scaffold auto-wire; typed model generator
- **DB:** `dialect_of_url`, `migrate_postgres` / `rollback_url`, `nyx.pg_model` (RETURNING)
- **Model:** uniqueness validation, `Record` cell index, association preload lists
- **Views:** `nyx.html.SafeHtml` + `form.*_safe` / `html.put`
- **Jobs/mail/cable:** retry + dead-set; SMTP (SMTPS/TLS); SQLite cable store + `Channel` API

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
- CSRF: when enabled, empty sessions get a stable `_nyx` seed cookie (HMAC); CSRF off → no anon seed (API hot-path)
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

- Requires **Nox ≥ 2.1.51** (CI **2.1.51**): IPv6 multicore, `render_blocks`, form `+` in `query_decode`, plus the 0.24 HTTP/2 and live SSE surface
- Boot once; `NYX_AUTO_MIGRATE=0` in production; see [docs/DEPLOY.md](docs/DEPLOY.md)
- Multicore: `NYX_WORKERS>1` → `serve_multicore*`; `--release` + `NOX_POOL_WORKERS` for shared pool
- Metrics: process-wide locked SharedBuffer (not module-global `int++`)
- App ORM: **SQLite** (`application.db` / `nyx.model`), **Postgres** (`application.pg` / `nyx.pg_model`), or **MySQL** (`application.mysql` / `nyx.mysql_model`)
- DB sessions: SQLite → `application.db`; Postgres → `application.pg` (`nyx.session_store_pg`)
- Jobs queue: SQLite at `NYX_JOBS_DB_PATH` (separate from app PG)
- TLS: `NYX_TLS_CERT`+`NYX_TLS_KEY` or reverse proxy; mail SMTP = immediate TLS (465) or `NYX_MAIL_SMTP_STARTTLS=1` (587)
- Cable: one-shot SSE, live `nyx.cable.live_sse` (cookie and security headers before the stream), plus server WS helpers (`ws_echo` / `ws_broadcast_loop` / signed channel-bound `ws_auth_*` / `ws_auth_*_pg`)
- Rate limit: a real `peer_addr` is the client key. `NYX_TRUST_X_FORWARDED_FOR=1` uses the first XFF hop; with `NYX_TRUSTED_PROXIES` set, only those connecting IPs may supply XFF. Multicore defaults to `NYX_RATE_LIMIT_STORE=db`
- `{% for %}` / `{% if %}` → `render_blocks`. `render` does not run those tags. Partials: `render_records` / `render_each`
- Prefer `Attributes` / `SafeHtml` helpers over hand-built JSON / raw HTML strings
- **Request state** uses `TaskLocal` on a connection fiber. The root script keeps a module box — [docs/NOX_LIMITATIONS.md](docs/NOX_LIMITATIONS.md)

**Fit:** reverse-proxy or native TLS, SQLite or Postgres app DB, jobs on SQLite, multicore/`--release` for higher concurrency.  
**Still Nox-bound:** measured list in [docs/NOX_LIMITATIONS.md](docs/NOX_LIMITATIONS.md). `serve_multicore*` rejects a closure value (a top-level factory is allowed). `render` does not execute `{% for %}`. `nox.jwt.verify` does not check `exp`; `verify_now` does. List assignment copies.

---

## Tests

```sh
noxc test
```

## Links

- [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- [Nox](https://github.com/mburakmmm/nox-lang) · [Türkçe](README.tr.md)
