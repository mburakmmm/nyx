# nyx — Nox Web Framework

Rails tarzı “batteries included” web katmanı. Sözdizimi `nox.http` kadar sade tutulur.

**Sürüm:** 0.2.0  
**Lisans:** MIT  
**Alias (zorunlu):** `nyx`

> Paket içi importlar `import nyx.*` kullandığı için alias **mutlaka** `nyx` olmalıdır.

## Kurulum

```json
{
  "name": "myapp",
  "entry": "main.nox",
  "requires": [
    { "alias": "nyx", "repo": "github.com/mburakmmm/nyx", "ref": "v0.2.0" }
  ]
}
```

```sh
noxc fetch
```

Yeni uygulama:

```sh
./bin/nyx new myapp
cd myapp && noxc fetch && noxc run main.nox
```

## Modüller

| Modül | Kullanım |
|---|---|
| `nyx.db` | `nyx.db.open(path)` · `nyx.db.migrate(db, "db/migrate")` |
| `nyx.model` | `find` / `all` / `where` / `create` / `update` / `destroy` |
| `nyx.ctrl` | `redirect` / `html` / `json` / `render` |
| `nyx.view` | dosyadan `{{ var }}` şablon |
| `nyx.form` | `text` / `hidden` / `textarea` / `submit` |
| `nyx.csrf` | `token(secret)` · `check(secret, tok)` |
| `nyx.flash` | session JSON içinde `set` / `get` / `clear` |
| `nyx.jwt` | HS256 JWT |
| `nyx.password` | argon2id |
| `nyx.session` | imzalı cookie oturumu |
| `nyx.auth` | Bearer / session middleware |
| `nyx.cors` | CORS before/after |
| `nyx.cookie` · `nyx.base64` · `nyx.response` | temel yardımcılar |

## Sözdizimi (nox.http tarzı)

```nox
import nyx.db
import nyx.model
import nyx.ctrl
from nox.sqlite import Connection

db: Connection = nyx.db.open("db/app.sqlite")
nyx.db.migrate(db, "db/migrate")

id: int = nyx.model.create(db, "posts", "{\"title\":\"Merhaba\",\"body\":\"...\"}")
post = nyx.model.find(db, "posts", id)

return nyx.ctrl.redirect("/posts")
return nyx.ctrl.render(200, "app/views/home.html", context)
```

## CLI

```sh
./bin/nyx new blog
./bin/nyx generate model Post
./bin/nyx generate controller Posts
./bin/nyx version
```

## Örnekler

- [`examples/app`](examples/app/) — JWT login demosu  
- [`examples/blog`](examples/blog/) — migration + model + form + CSRF

## Convention

```
myapp/
  main.nox              # üst düzey handle + serve
  nox.json
  app/views/
  app/controllers/
  app/models/
  db/migrate/*.sql
  config/
```

## Bilinçli sınırlar

Kalıtım/decorator yok → sihirli ActiveRecord yok. Model API açık SQL tablosu + JSON attrs. TLS / Redis / ActionCable sonraki faz.
