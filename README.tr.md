# nyx

[English](README.md) · [Türkçe](README.tr.md)

**[Nox](https://github.com/mburakmmm/nox-lang) için Rails tarzı, batteries-included web framework.**

**Sürüm:** 0.3.0 · **Lisans:** MIT · **Zorunlu alias:** `nyx`

---

## Bu bir Nox paketidir (tek başına çalışan binary değil)

`nyx`, diğer Nox kütüphaneleri gibi kullanılır:

1. Uygulamanın **`nox.json`** dosyasına `requires` altına ekleyin
2. **`noxc fetch`** çalıştırın
3. **`import nyx...`** ile kullanın (alias **mutlaka** `nyx` olmalı)

`.nox` dosyalarını elle kopyalamak desteklenmez — Nox paket yöneticisini kullanın.

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

> **Önemli:** Paket içi importlar `import nyx.db`, `import nyx.app` şeklindedir.  
> Alias tam olarak `nyx` değilse paket çözülmez.

### Yerel geliştirme (path)

```json
{
  "alias": "nyx",
  "repo": "/absolute/path/to/nyx",
  "ref": "master"
}
```

---

## Hızlı başlangıç

```sh
# bu repoyu klonladıktan sonra (generator için)
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
        context["title"] = "Merhaba"
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

`nyx.app.boot` SQLite açar, migration çalıştırır, session + CSRF + güvenlik başlıkları + istek logunu takar, sonra sizin `setup` fonksiyonunuzu çağırır.

---

## Ne sunar?

| Alan | Modüller |
|---|---|
| Uygulama yaşam döngüsü | `nyx.app`, `nyx.config`, `nyx.runtime` |
| HTTP | `nyx.ctrl`, `nyx.view`, `nyx.params`, `nyx.routes`, `nyx.form` |
| Veri | `nyx.db`, `nyx.model`, `nyx.assoc` |
| Güvenlik | `nyx.session`, `nyx.csrf`, `nyx.auth`, `nyx.jwt`, `nyx.password`, `nyx.security`, `nyx.cors` |
| Ekler | `nyx.mailer`, `nyx.job`, `nyx.storage`, `nyx.cache`, `nyx.i18n`, `nyx.cable`, `nyx.flash`, `nyx.testing` |

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

### Yapılandırma

| Değişken | Anlamı |
|---|---|
| `NYX_ENV` | `development` / `test` / `production` |
| `NYX_SECRET_KEY` | session/CSRF gizli anahtarı (production’da ≥32 karakter) |
| `NYX_DB_PATH` / `DATABASE_URL` | SQLite yolu veya `sqlite:///...` |
| `NYX_CSRF` | CSRF middleware açık/kapalı |
| `NYX_LOCALE` | varsayılan dil |

---

## Örnekler

- [`examples/blog`](examples/blog/) — migration, model, form, CSRF (`nyx.app`)
- [`examples/app`](examples/app/) — JWT login API

```sh
cd examples/blog
# requires.repo: bu checkout veya github.com/mburakmmm/nyx
noxc fetch && NYX_ENV=development noxc run main.nox
```

---

## Platform sınırları (Nox)

- Süreç geneli app singleton yok → istek başına boot (migration idempotent)
- Şimdilik SQLite; `postgres://` `nox.postgres` gelene kadar hata verir
- TLS reverse proxy’de sonlandırın; nyx güvenlik başlıklarını ekler
- Realtime: SSE/long-poll (`nyx.cable`), WebSocket değil
- Mail: dosya spool veya HTTP sağlayıcı API

---

## Testler

```sh
for f in tests/*_test.nox; do noxc test "$f" || exit 1; done
```

## Bağlantılar

- Repo: [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- Nox dili: [github.com/mburakmmm/nox-lang](https://github.com/mburakmmm/nox-lang)
- English: [README.md](README.md)
