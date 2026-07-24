# nyx — Nox Web Kütüphanesi

Nox stdlib HTTP katmanını (`nox.http`, `nox.router`, `nox.validate`, `nox.crypto`) tamamlayan production-ready web monoreposu.

**Sürüm:** 0.1.0  
**Lisans:** MIT  
**Alias (zorunlu):** `web`

> Paket içi çapraz importlar `import nyx.*` kullandığı için tüketicinin `nox.json` alias'ı **mutlaka** `nyx` olmalıdır.

## Modüller

| Modül | Açıklama |
|---|---|
| `nyx.base64` | Base64 / base64url + HMAC hex → base64url |
| `nyx.cookie` | `Cookie` parse / `Set-Cookie` serialize |
| `nyx.response` | JSON / text / redirect / header yardımcıları |
| `nyx.jwt` | HS256 JWT encode/decode (`exp`/`nbf`/`iat`) |
| `nyx.password` | argon2id hash/verify (`nox.crypto` sarmalayıcı) |
| `nyx.session` | HMAC-imzalı cookie oturumu |
| `nyx.cors` | Router before/after CORS ara katmanları |
| `nyx.auth` | Bearer JWT / session `use_before` koruması |

## Kurulum

`nox.json`:

```json
{
  "name": "myapp",
  "entry": "main.nox",
  "requires": [
    {
      "alias": "nyx",
      "repo": "github.com/mburakmmm/nyx",
      "ref": "v0.1.0"
    }
  ]
}
```

Yerel geliştirme (bu repo):

```json
{
  "alias": "nyx",
  "repo": "/ABS/PATH/TO/nyx",
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
import nyx.jwt
import nyx.auth
import nyx.cors
import nyx.response
from nyx.cors import CorsConfig

secret: str = "change-me-to-a-long-random-secret!!"

def build() -> Router:
    router: Router = Router()
    cfg: CorsConfig = nyx.cors.default_config()
    router.use_before(nyx.cors.before_handler(cfg))
    router.use_before(nyx.auth.require_bearer_unless(secret, "/login"))
    router.use_after(nyx.cors.after_handler(cfg))

    def login(ctx: Context) -> HttpResponse:
        token: str = nyx.jwt.encode(secret, "{\"sub\":\"user\"}", 9999999999)
        return nyx.response.json(200, "{\"token\":\"" + token + "\"}")

    def me(ctx: Context) -> HttpResponse:
        return nyx.response.json(200, "{\"ok\":true}")

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
- `nyx.base64.decode` çıktısı ASCII (0..127); JWT claim JSON'u ASCII tutun (`\uXXXX` kaçışları).
- JWT imzası: `nox.crypto.hmac_sha256` (hex) → `nyx.base64.encode_hex_url`.

## v1 dışı (bilinçli)

TLS, Postgres/Redis, OAuth, multipart upload, WebSocket — dil runtime'ı veya sonraki paketler.
