# nyx

[English](README.md) · [Türkçe](README.tr.md)

**Rails-style, batteries-included web framework for [Nox](https://github.com/mburakmmm/nox-lang).**

**Version:** 0.3.0 · **License:** MIT · **Required alias:** `nyx`

---

## This is a Nox package (not a standalone binary)

`nyx` is consumed like any other Nox library:

1. Add it to your app’s **`nox.json`** under `requires`
2. Run **`noxc fetch`**
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
      "ref": "v0.3.0"
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

---

## Quick start

```sh
# from a clone of this repo (generators only)
./bin/nyx new myapp
cd myapp
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

`nyx.app.boot` opens SQLite, runs migrations, installs session + CSRF + security headers + request logging, then calls your `setup`.

---

## What you get

| Area | Modules |
|---|---|
| App lifecycle | `nyx.app`, `nyx.config`, `nyx.runtime` |
| HTTP | `nyx.ctrl`, `nyx.view`, `nyx.params`, `nyx.routes`, `nyx.form` |
| Data | `nyx.db`, `nyx.model`, `nyx.assoc` |
| Security | `nyx.session`, `nyx.csrf`, `nyx.auth`, `nyx.jwt`, `nyx.password`, `nyx.security`, `nyx.cors` |
| Extras | `nyx.mailer`, `nyx.job`, `nyx.storage`, `nyx.cache`, `nyx.i18n`, `nyx.cable`, `nyx.flash`, `nyx.testing` |

### CLI

```sh
./bin/nyx new blog
./bin/nyx generate model Post title:string body:text
./bin/nyx generate scaffold Comment body:text
./bin/nyx db migrate | rollback | schema | seed
./bin/nyx console
./bin/nyx server
./bin/nyx version
```

### Configuration

| Variable | Meaning |
|---|---|
| `NYX_ENV` | `development` / `test` / `production` |
| `NYX_SECRET_KEY` | session/CSRF secret (≥32 chars in production) |
| `NYX_DB_PATH` / `DATABASE_URL` | SQLite path or `sqlite:///...` |
| `NYX_CSRF` | CSRF middleware on/off |
| `NYX_LOCALE` | default locale |

---

## Examples

- [`examples/blog`](examples/blog/) — migrations, model, forms, CSRF via `nyx.app`
- [`examples/app`](examples/app/) — JWT login API

```sh
cd examples/blog
# set requires.repo to this checkout or github.com/mburakmmm/nyx
noxc fetch && NYX_ENV=development noxc run main.nox
```

---

## Platform limits (Nox)

- No process-wide app singleton → boot per request (migrations are idempotent)
- SQLite today; `postgres://` raises until `nox.postgres` exists
- Terminate TLS at a reverse proxy; nyx sets security headers
- Realtime via SSE/long-poll (`nyx.cable`), not WebSocket
- Mail via file spool or HTTP provider API

---

## Tests

```sh
for f in tests/*_test.nox; do noxc test "$f" || exit 1; done
```

## Links

- Repo: [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- Nox language: [github.com/mburakmmm/nox-lang](https://github.com/mburakmmm/nox-lang)
- Turkish docs: [README.tr.md](README.tr.md)
