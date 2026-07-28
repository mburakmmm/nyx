# nyx

[English](README.md) · [Türkçe](README.tr.md)

**[Nox](https://github.com/mburakmmm/nox-lang) için Rails kapsamlı, batteries-included web framework.**  
Kapsam Rails’in problem alanlarına denk (lifecycle, model, güvenlik, jobs…). Ergonomi hâlâ yaklaşıyor — aşağıdaki typed API’leri tercih edin.

**Sürüm:** 0.7.0 · **Lisans:** MIT · **Zorunlu alias:** `nyx` · **Nox ≥ 1.11**

---

## Bu bir Nox paketidir

1. **`nox.json`** `requires` altına ekleyin  
2. **`noxc fetch`** / **`noxc update`**  
3. **`import nyx...`** (alias **mutlaka** `nyx`)

```json
{
  "name": "myapp",
  "entry": "main.nox",
  "requires": [
    {
      "alias": "nyx",
      "repo": "github.com/mburakmmm/nyx",
      "ref": "v0.7.0"
    }
  ]
}
```

```sh
noxc fetch && noxc run main.nox
```

### Yerel geliştirme

```json
{ "alias": "nyx", "repo": "/absolute/path/to/nyx", "ref": "master" }
```

---

## Hızlı başlangıç

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
        context["title"] = "Merhaba"
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

**Bir kez** boot edin (Nox ≥ 1.11). Handler’ları **`setup` içinde** tanımlayın. `nyx.ctx.wrap` + `create_attrs` tercih edin.

---

## Ne sunar?

| Alan | Modüller |
|---|---|
| Yaşam döngüsü | `nyx.app`, `nyx.config`, `nyx.runtime`, `nyx.ctx` |
| HTTP | `nyx.ctrl`, `nyx.view`, `nyx.params`, `nyx.routes`, `nyx.form` |
| Veri | `nyx.db`, `nyx.model`, `nyx.assoc` |
| Güvenlik | `nyx.session`, `nyx.csrf`, `nyx.auth`, `nyx.jwt`, `nyx.password`, `nyx.security`, `nyx.cors` |
| Ekler | `nyx.mailer`, `nyx.job`, `nyx.storage`, `nyx.cache`, `nyx.i18n`, `nyx.cable`, `nyx.flash`, `nyx.testing` |

### Typed model (tercih edilen)

```nox
attrs: Attributes = nyx.model.attributes()
nyx.model.set_str(attrs, "title", title)
nyx.model.set_int(attrs, "user_id", user_id)
nyx.model.set_null(attrs, "bio")
id: int = nyx.model.create_attrs(db, "posts", attrs)

row: Record | None = nyx.model.find(db, "posts", id)
if row == None:
    return nyx.ctrl.text(404, "not found")
# Önce daraltın: get_opt / get_or Record ister, Record | None değil
bio: str | None = row.get_opt("bio")   # SQL NULL -> None
title: str = row.get_or("title", "")
```

JSON `create` / `update` uyumluluk için duruyor; yeni kod `Attributes` kullanmalı.

### Döngüsüz şablonlar

Nox template’te `{% for %}` yok. Alan listesi veya `list[dict]` / map (Nox ≥ 1.8.2):

```nox
fields: list[str] = []
fields.append("title")
fields.append("body")
html: str = nyx.view.render_records("app/views/posts/_item.html", rows, fields)
# veya: nyx.view.render_each(path, contexts)
```

Varsayılan `render` / `render_with_layout` / `render_records` HTML kaçışlar. `*_unescaped` yalnızca güvenilir HTML için. Layout: slot-sonra-replace.
### CLI

```sh
./bin/nyx new blog
./bin/nyx generate model Post title:string body:text
./bin/nyx generate scaffold Comment body:text
./bin/nyx db migrate | rollback | schema | seed
./bin/nyx jobs work
./bin/nyx console | server | version
```

### Yapılandırma

| Değişken | Anlamı |
|---|---|
| `NYX_ENV` | `development` / `test` / `production` |
| `NYX_SECRET_KEY` | production’da ≥32 karakter |
| `NYX_DB_PATH` / `DATABASE_URL` | SQLite (ORM); ham PG/MySQL için `open_postgres` / `open_mysql` |
| `NYX_AUTO_MIGRATE` | `1`/`0` (production varsayılan `0`; CLI migrate tercih) |
| `NYX_CSRF` / `NYX_CSRF_API_EXEMPT` / `NYX_CSP` / `NYX_LOCALE` | güvenlik & i18n (`CSRF_API_EXEMPT` = `/api/` CSRF muafiyeti opt-in) |

---

## Sürüm notları

### 0.7.0 — Nox 1.11 stdlib entegrasyonu

- **Nox ≥ 1.11** zorunlu
- Params → `nox.url`; `open_postgres` / `open_mysql` (ham; ORM SQLite)
- `cache.open_memory` (LRU); CI `noxc` v1.11.0
- `nyx.runtime` hâlâ `NYX_RT_*` (karmaşık paket-global codegen)

### 0.6.0 — Nox 1.10 açılımları (boot-once)

- **Nox ≥ 1.10** zorunlu
- Boot-once `Application` (uygulama scripti); örnekler/template güncellendi
- Job/transaction/dispatch bare `except:`; `Record.get_opt` metodları; `render_each`
- `with_header` / testing: `headers.keys()`; CI `noxc` v1.10.0
- Not: paket modülünde modül-global codegen kırık → `nyx.runtime` hâlâ `NYX_RT_*`

### 0.5.0 — Güvenlik çekirdeği + Rails-ish DX

- CSRF: `/api/` artık varsayılan muaf değil; `protect_api_exempt` / `NYX_CSRF_API_EXEMPT=1` ile opt-in
- Auth: `require_bearer_unless_paths` (exact path); production placeholder secret reddi; production’da `auto_migrate` kapalı
- Params validation + form `select`/`form_with`; generic path helpers; HTML/JSON hata sayfaları
- Generator + blog integration smoke test

### 0.4.1 — Generator DX & sertleştirme

- Scaffold/controller generator’ları `AppContext` + typed `Attributes` / `create_attrs` üretir
- `set_*` aynı anahtarda upsert; bilinmeyen kind ve bozuk parallel listeler fail-fast
- Layout: slot sonra string-replace (gövde içinde second-pass `{{...}}` yok)
- README: `Record | None` daraltma; unescaped güvenlik notları
- CI: GitHub Actions `noxc test`

### 0.4.0 — Typed models & DX

- `Attributes` + `create_attrs` / `update_attrs` / `create_fields`
- `Record.get_or` / `is_null` / `get_int_or` + `nyx.model.get_opt` / `get_int_opt` (NULL ≠ `""`)
- `nyx.ctx.AppContext`
- `nyx.view.render_records`
- Blog örneği yeni API’ye geçirildi

### 0.3.1 — Sertleştirme

Query koruması, header, CSRF/session, jobs reclaim, storage/redirect, `auto_migrate`.

---

## Platform sınırları (Nox)

- **Nox ≥ 1.11** gerekir
- Uygulama scriptinde bir kez boot; production’da `NYX_AUTO_MIGRATE=0`
- App ORM / migrate / jobs: **SQLite**; ham PG/MySQL: `open_postgres` / `open_mysql` (bind yok)
- İstek durumu `nyx.runtime` / `NYX_RT_*`
- TLS reverse proxy’de; cable = SSE/long-poll
- Alias zorunlu `nyx`
- Şablonda `{% for %}` yok → `render_records` / `render_each`

**Uygun:** reverse-proxy, tek instance, SQLite app DB, düşük–orta trafik.  
**Henüz değil:** multi-driver ActiveRecord, process’ler arası paylaşılan istek state, WebSocket chat.

---

## Testler

```sh
noxc test
```

## Bağlantılar

- [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- [Nox](https://github.com/mburakmmm/nox-lang) · [English](README.md)
