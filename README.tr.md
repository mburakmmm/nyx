# nyx

[English](README.md) · [Türkçe](README.tr.md)

**[Nox](https://github.com/mburakmmm/nox-lang) için Rails tarzı, batteries-included web framework.**

**Sürüm:** 0.3.1 · **Lisans:** MIT · **Zorunlu alias:** `nyx`

---

## Bu bir Nox paketidir (tek başına çalışan binary değil)

`nyx`, diğer Nox kütüphaneleri gibi kullanılır:

1. Uygulamanın **`nox.json`** dosyasına `requires` altına ekleyin
2. **`noxc fetch`** (veya `noxc update`) çalıştırın
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
      "ref": "v0.3.1"
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

Yerel checkout’u değiştirdikten sonra `noxc update` veya paket önbelleğini senkronlayın (`~/.nox/pkg/mod/...`).

---

## Hızlı başlangıç

```sh
# bu repoyu klonladıktan sonra (generator için)
./bin/nyx new myapp
cd myapp
# requires: github.com/mburakmmm/nyx@v0.3.1 (veya bu checkout)
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

`nyx.app.boot` SQLite açar, isteğe bağlı migration çalıştırır (`Config.auto_migrate` / `NYX_AUTO_MIGRATE`), session + CSRF + güvenlik başlıkları + istek logunu takar, sonra sizin `setup` fonksiyonunuzu çağırır.

Route handler’larını **`setup` içinde** tanımlayın ki `application.db`’yi closure ile yakalasınlar (Nox: üst düzey fonksiyonlar modül global’lerini göremez). `nyx.cache` gibi kaynakları kullanan handler içinde açıp kapatın.

---

## Ne sunar?

| Alan | Modüller |
|---|---|
| Uygulama yaşam döngüsü | `nyx.app`, `nyx.config`, `nyx.runtime` |
| HTTP | `nyx.ctrl`, `nyx.view`, `nyx.params`, `nyx.routes`, `nyx.form` |
| Veri | `nyx.db`, `nyx.model`, `nyx.assoc` |
| Güvenlik | `nyx.session`, `nyx.csrf`, `nyx.auth`, `nyx.jwt`, `nyx.password`, `nyx.security`, `nyx.cors` |
| Ekler | `nyx.mailer`, `nyx.job`, `nyx.storage`, `nyx.cache`, `nyx.i18n`, `nyx.cable`, `nyx.flash`, `nyx.testing` |

### Öne çıkan API’ler (0.3.1)

- **Params:** `dispatch` sonrası query korunur; `permit` / `missing_required` / `require_keys`; multipart gövde yok sayılır (query döner)
- **CSRF:** oturuma bağlı jeton; varsayılan `/api/` muafiyeti; `protect_except`
- **Session:** yetki değişiminde `cycle_session`; flash okununca silinir
- **Jobs:** `reclaim_stale` + `work` / `work_forever`; CLI `nyx jobs work` → `jobs/worker.nox`
- **Storage:** path traversal engeli
- **Redirect:** `redirect_back` yalnızca güvenli göreli yollar
- **Cache:** `Cache.close` — kullanım yerinde open/close
- **Config:** `auto_migrate`, `csp`, `NYX_AUTO_MIGRATE` / `NYX_CSP`

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

Scaffold, `setup(application)` içine yapıştırılacak handler’ları `config/scaffold_<name>_routes.nox.snippet` dosyasına yazar.

### Yapılandırma

| Değişken | Anlamı |
|---|---|
| `NYX_ENV` | `development` / `test` / `production` |
| `NYX_SECRET_KEY` | session/CSRF gizli anahtarı (production’da ≥32 karakter) |
| `NYX_DB_PATH` / `DATABASE_URL` | SQLite yolu veya `sqlite:///...` |
| `NYX_MIGRATE_PATH` | migration dizini (varsayılan `db/migrate`) |
| `NYX_AUTO_MIGRATE` | `1`/`0` — `boot` içinde migrate (varsayılan açık; production’da `0` + `nyx db migrate`) |
| `NYX_CSRF` | CSRF middleware açık/kapalı |
| `NYX_LOCALE` / `NYX_LOCALES_PATH` | varsayılan dil ve locale dosyaları |
| `NYX_CSP` | isteğe bağlı Content-Security-Policy |
| `NYX_CACHE_PATH` / `NYX_STORAGE_PATH` / `NYX_JOBS_DB_PATH` | cache, upload, jobs SQLite yolları |
| `NYX_MAIL_DELIVERY` / `NYX_MAIL_FROM` / `NYX_MAIL_API_*` | `file` veya `http` mail |

---

## Sürüm notları — 0.3.1

Sertleştirme ve doğruluk sürümü (stdlib boşlukları aynı: Postgres sürücüsü, sunucu TLS, WebSocket yok).

- `app.dispatch` → `params.from_request` query string korunuyor
- `response.with_header` bilinen + izlenen başlıkları tutuyor
- Mailer CR/LF header injection’ı reddediyor (bayt güvenli)
- Job’lar `running`’de takılmıyor; `work` stale reclaim yapıyor
- Oturuma bağlı CSRF; `/api/` muaf; daha güvenli cookie / CORS / redirect / storage
- Model JSON `null` → SQL `NULL`; transaction’lı migrate; isteğe bağlı `auto_migrate`
- `params.permit` / `missing_required`; flash tek kullanımlık; süresi geçmiş JWT reddi
- Cable: Hub süreç geneli değil; scaffold snippet + `jobs work`

---

## Örnekler

- [`examples/blog`](examples/blog/) — migration, model, form, CSRF (`nyx.app`)
- [`examples/app`](examples/app/) — JWT login API

```sh
cd examples/blog
# requires.repo: bu checkout veya github.com/mburakmmm/nyx@v0.3.1
noxc fetch && NYX_ENV=development noxc run main.nox
```

---

## Platform sınırları (Nox)

- Süreç geneli app singleton yok → istek başına boot (production’da `NYX_AUTO_MIGRATE=0` + CLI migrate)
- İstek durumu `nox.os` env (`nyx.runtime`) — tek eşzamanlı HTTP worker varsayımı
- Şimdilik SQLite; `postgres://` `nox.postgres` gelene kadar hata verir
- TLS reverse proxy’de sonlandırın; nyx güvenlik başlıklarını ekler
- Realtime: SSE/long-poll (`nyx.cable`), WebSocket değil — Hub istekler arası kalıcı değil
- Mail: dosya spool veya HTTP sağlayıcı API
- HTML şablonlarda ASCII tercih edin (bazı Unicode glifler Nox template’te çökertmişti)

---

## Testler

```sh
noxc test
# veya:
for f in tests/*_test.nox; do noxc test "$f" || exit 1; done
```

## Bağlantılar

- Repo: [github.com/mburakmmm/nyx](https://github.com/mburakmmm/nyx)
- Nox dili: [github.com/mburakmmm/nox-lang](https://github.com/mburakmmm/nox-lang)
- English: [README.md](README.md)
