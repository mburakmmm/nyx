# Nox roadmap requests from Nyx
#
# Nyx 0.25+ Nox 2.1.51 kilidini kullanır (sürüm 1.0 değil).
# Önerilen pin: noxc **2.1.51**. `nox.json` adları `parse`/`dump` (1.171 `decode`/`encode*` kaldırdı, 2.0 korur).

## Kapandı (Nox 2.1.2–2.1.51)

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| `query_decode` form `+` | **2.1.2** | `nyx.params.parse_qs` doğrudan çağırır |
| `render_blocks` | **2.1.7** | `nyx.view.render_blocks`, `nyx.ctrl.render_blocks`. `render` yorumlamaz |
| `jwt.verify_claims` / `verify_now` | **2.1.7** | Hesap tokeni `nyx.jwt`. `verify` hâlâ claim bakmaz |
| `uuid7` | **2.1.7** | İstek kimliği. Oturum `uuid4` |
| Postgres `set_query_timeout` | **2.1.17** | `NYX_PG_QUERY_TIMEOUT_MS` |
| Multicore fabrika + `AtomicRef` | **2.1.20** | Çıplak handler durur. Sayaç `SharedBuffer` |
| `configure(ip_family)` | **2.1.32** | `nyx.server.ip_family`. IPv6 + worker birlikte |

gRPC, Redis, protobuf, UDP ve `nox.postgres.Pool` Nyx API’si değildir. Liste ataması kopya olarak kalır.

## Kapandı (Nox 2.0.69–2.0.188)

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| `download_to_file` / `upload_file` | **2.0.69** (gzip+chunked düzeltmesi **2.0.81**) | `nyx.storage.fetch`, `store_http_file` |
| İstemci süresi DNS + TCP | **2.0.91** | `NYX_HTTP_TIMEOUT_MS` |
| Atomik yazımda ENOSPC temizliği | **2.0.92** | `write_string_atomic` (0.23’ten beri) |
| `configure` + `shutdown` + sinyal | **2.0.118** | `nyx.server.apply`. Şablon `finally` → `nyx.app.shutdown` |
| Çoklu `Set-Cookie` (`\n`) | **2.0.120** | `nyx.response.add_header` |
| Canlı SSE / `req.stream` | **2.0.124** | `dispatch` `conn` kopyalar. `nyx.cable.live_sse` |
| Giden bağlantı havuzu | **2.0.126** | `NYX_HTTP_POOL_IDLE`, `NYX_HTTP_POOL_IDLE_MS` |
| HTTP/2 + Title-Case başlık | **2.0.127** | `NYX_HTTP2`. `nyx.params.header` |
| HTTP/2 WebSocket | **2.0.129** | Mevcut `serve_ws*` |
| Şablonda UTF-8 yer tutucu | **2.0.136** | Pin. `{% for %}` hâlâ yok |
| `noxc run` bayrağı yoldan önce | **2.0.176** | `noxc run --release main.nox` |
| `safe_join` bileşen sınırı | **2.0.179** | `nyx.storage.path_for` |

Hâlâ açık olanlar ve kanıtları `docs/NOX_LIMITATIONS.md` içindedir: multicore closure, IPv4 multicore, şablon döngüsü, `nox.jwt` claim süresi, kök `TaskLocal`, liste ataması kopyası, `AtomicInt`/`AtomicBool` dışı paylaşım, form `+`.

## Kapandı (Nox 2.0.31–2.0.68)

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| `nox.http.request` + `HttpTimeoutError` | **2.0.31** | `NYX_HTTP_TIMEOUT_MS`. Posta API ve `store_http` (`POST`/`PUT`/`PATCH`) |
| `nox.fs.write_string_atomic` | **2.0.42** | Yerel storage gövdesi, `.meta.json`, dosya postası `.eml` |
| `nox.strings.lower` Unicode | **2.0.56** | `normalize_email` aynı işlev. `lower_tr` hesap anahtarı değil |
| `nox.unicode.lower_tr` | **2.0.64** | İstenirse çağrılır; varsayılan hesap anahtarı olmaz |

## Kapandı (Nox 2.0.0–2.0.7)

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| Modül düzeyinde `boot(cfg, setup)` bayat yerel / SIGSEGV | **2.0.0-rc.4** | Blog ve testler üst düzey `application = nyx.app.boot` kullanır |
| Stdlib istisna metinleri İngilizce | **2.0.1** | SMTP testi `TLS upgrade failed` + `CertificateHostMismatch` |
| `except (A, B) as e` | **2.0** | `nyx.job` bilinen handler hataları tek gövdede `fail()` |
| Router sorguyu ayırır, `Context.query` | **2.0.0-rc.2** | Nyx yolu kendisi keser; form `+` kuralı `nyx.params` içinde kalır |
| Aralık dışı `bind_*` sürücü hatası, indeks 0 tabanlı | **2.0.0-rc.2** | Nyx zaten `bind_*(0, …)` kullanır |

## Kapandı (Nox 1.75–1.76) — smtp / Statement

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| `nox.smtp` STARTTLS (`connect` + `starttls`) | **1.75.0** | `NYX_MAIL_SMTP_STARTTLS`; HTML `to_eml` korunur. 1.142.23’te Gmail 465/587 ve Office365 587 el sıkışması (EHLO + STARTTLS + QUIT) tamamlandı; auth ve gerçek posta gönderilmedi |
| `and`/`or` kısa devre | **1.76.0** | mevcut kod olduğu gibi |
| Ortak `nox.db.Statement` | **1.76.0** | sqlite/postgres `Statement` importları `nox.db`. SQL (`?` / `$1`) ve `nyx.model` / `pg_model` ayrı. `nox.orm` mikro-CRUD; Nyx modeli değil |

## Kapandı (Nox 1.27–1.29) — runtime / sunucu

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| LLVM `--release` + M:N altyapı | **1.27.0** | prod: `noxc build --release` |
| `nox.thread.pool_run` + `serve_multicore` → paylaşılan havuz | **1.28.0** | `NYX_WORKERS` + `serve_multicore*` |
| Şeffaf M:N (`--release`); TaskLocal/class/list/dict transfer | **1.29.0** | request bag M:N altında doğru |
| Multicore accept/work-steal + TLS/ECONNRESET/JSON | **1.29.1–1.29.11** | CI pin **1.29.11**; metrics SharedBuffer |

## Kapandı (Nox 1.23–1.26)

| İstek | Nox | Nyx |
|---|---|---|
| Ortak `nox.db.Row` + `DbConnection.query` | **1.23.0** | model/pg_model/session Row importları |
| Task / fiber-local context (N1) | **1.24.0** `TaskLocal[T]` | `nyx.runtime` TaskLocal bag |
| Exception tabanı + satır/tip raporu (N5 kısmi) | **1.25.0** | `*Error(Exception)`; dispatch `except Exception`; unhandled: `Sinif (satir N)` |
| `dict[int, class]` / `dict[int, Record]` | **1.26.0** | `assoc.preload_belongs_to_map`, `orm.index_records_by_id` |

## Kapandı (Nox 1.126–1.127) — peer / satır

| İstek | Nox | Nyx |
|---|---|---|
| `HttpRequest.peer_addr` (`"ip:port"` veya `"[addr]:port"`, ctor 5. argüman) | **1.127.0** / **1.142.10** | rate-limit anahtarı. Trust kapalı: peer IP. Boş peer: `"direct"`. `NYX_TRUSTED_PROXIES` doluysa XFF yalnızca o IP’lerden. IPv6 anahtarı köşeli parantezin içidir |
| `Exception.line` (raise anı) | **1.126.0** | development 500 `line` alanı. Production genel 500. 1.142.23’te alt sınıf `__init__` yazsa da raise satırı doluyor |

`nyx.jwt` durur: exp/nbf/iat kontrolü var. `nox.jwt` (1.126) yalnızca HS256, claim süresi yok.

## Hâlâ açık / kısmi

### Ortak dialect ORM
- `nox.db.Statement` ortak (1.76). SQL yer tutucuları ve doğrulama/`Attributes`/`Record` yüzeyi sürücüye özel kalır → `model` / `pg_model` ayrı.
- `nox.orm` satır döndüren mikro-CRUD; Nyx modeli onunla değiştirilmez.

## M:N / `--release` entegrasyon kuralları (Nyx)

1. **İstek durumu:** fiber’da `TaskLocal` (`nyx.runtime`). Nox ≥ 1.122 kök `main` fiber değil; o yolda modül kutusu. Fiber’lar birbirinin oturumunu görmez.
2. **Sayaçlar:** `nyx.metrics` → kilitli `nox.sharedmem.SharedBuffer` (modül-global `int++` M:N’de yarışır).
3. **Rate limit:** `NYX_WORKERS>1` iken varsayılan store `db` (`jobs_db`); memory store worker-local kalır.
4. **Serve:** `nyx.server.serve_mode` → `serve` / `serve_tls` / `serve_multicore` / `serve_multicore_tls` (+ WS varyantları).
5. **Prod:** `noxc build --release` + `NYX_WORKERS` + `NOX_POOL_WORKERS` (havuz boyutu).

## Kapandı (Nox 1.21–1.22)

| İstek | Nox |
|---|---|
| Sunucu TLS + WS Upgrade | 1.22.0 |
| sqlite execute int / DbConnection.execute | 1.21.3 |
| Nested fn-typed capture | 1.21.1 |
| on_shutdown + nested Router | 1.18.1+ |

## Kapandı (Nox 1.142.7–1.142.23)

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| linux-x64 release `-Dcpu=x86_64_v2`, paket içi `qbe` | **1.142.7** | CI resmi kurulum betiği. Kaynak derlemesi yok |
| `nox.http.listen_v6(port, v6_only)` | **1.142.10** | `NYX_IPV6` / `NYX_IPV6_ONLY`. Tek worker `serve_fd*`. Multicore IPv4 kalır |

## İzleme
`noxc upgrade` (≥2.1.51) → full `tests/*.nox` → blog dogfood → PG CI smoke → multicore smoke.
