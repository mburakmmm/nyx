# nox-lib — Nox Web Kütüphanesi

Nox stdlib HTTP katmanını (`nox.http`, `nox.router`, `nox.validate`, `nox.crypto`) tamamlayan production-ready web monoreposu.

**Sürüm:** 0.1.0  
**Lisans:** MIT  
**Alias (zorunlu):** `web`

> Paket içi çapraz importlar `import web.*` kullandığı için tüketicinin `nox.json` alias'ı **mutlaka** `web` olmalıdır.

## Modüller

| Modül | Açıklama |
|---|---|
| `web.base64` | Base64 / base64url + HMAC hex → base64url |
| `web.cookie` | `Cookie` parse / `Set-Cookie` serialize |
| `web.response` | JSON / text / redirect / header yardımcıları |
| `web.jwt` | HS256 JWT encode/decode (`exp`/`nbf`/`iat`) |
| `web.password` | argon2id hash/verify (`nox.crypto` sarmalayıcı) |
| `web.session` | HMAC-imzalı cookie oturumu |
| `web.cors` | Router before/after CORS ara katmanları |
| `web.auth` | Bearer JWT / session `use_before` koruması |

## Kurulum

`nox.json`:

```json
{
  "name": "myapp",
  "entry": "main.nox",
  "requires": [
    {
      "alias": "web",
      "repo": "github.com/mburakmmm/nox-lib",
      "ref": "v0.1.0"
    }
  ]
}
```

Yerel geliştirme (bu repo):

```json
{
  "alias": "web",
  "repo": "/ABS/PATH/TO/nox-lib",
  "ref": "v0.1.0"
}
```

```sh
noxc fetch
noxc test
```

## Hızlı kullanım

```nox
import nox.http
from nox.http import HttpRequest, HttpResponse
from nox.router import Router, Context
import web.jwt
import web.auth
import web.cors
import web.response
from web.cors import CorsConfig

secret: str = "change-me-to-a-long-random-secret!!"

def build() -> Router:
    router: Router = Router()
    cfg: CorsConfig = web.cors.default_config()
    router.use_before(web.cors.before_handler(cfg))
    router.use_before(web.auth.require_bearer_unless(secret, "/login"))
    router.use_after(web.cors.after_handler(cfg))

    def login(ctx: Context) -> HttpResponse:
        token: str = web.jwt.encode(secret, "{\"sub\":\"user\"}", 9999999999)
        return web.response.json(200, "{\"token\":\"" + token + "\"}")

    def me(ctx: Context) -> HttpResponse:
        return web.response.json(200, "{\"ok\":true}")

    router.post("/login", login)
    router.get("/me", me)
    return router
```

Tam çalışan demo: [`examples/app/`](examples/app/).

```sh
cd examples/app
noxc run main.nox
# POST /login  {"username":"alice","password":"secret123"}
# GET  /me    Authorization: Bearer <token>
```

## Tasarım notları

- Saf Nox — ek Zig/runtime shim yok.
- Modül-global mutable state yok; sırlar parametre / `AppState` ile taşınır.
- `web.base64.decode` çıktısı ASCII (0..127); JWT claim JSON'u ASCII tutun (`\uXXXX` kaçışları).
- JWT imzası: `nox.crypto.hmac_sha256` (hex) → `web.base64.encode_hex_url`.

## v1 dışı (bilinçli)

TLS, Postgres/Redis, OAuth, multipart upload, WebSocket — dil runtime'ı veya sonraki paketler.
