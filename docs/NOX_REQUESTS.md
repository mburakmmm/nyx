# Nox roadmap requests from Nyx
#
# Nyx 0.18+ Nox 1.104 kilidini kullanır (sürüm 1.0 değil).
# Önerilen pin: noxc **1.104.0**.

## Kapandı (Nox 1.75–1.76) — smtp / Statement

| İstek / fırsat | Nox | Nyx |
|---|---|---|
| `nox.smtp` STARTTLS (`connect` + `starttls`) | **1.75.0** | `NYX_MAIL_SMTP_STARTTLS`; HTML `to_eml` korunur. Gmail 465/587 ve Office365 587 `nox.tls` içinde `TlsUnexpectedMessage` ile düşebilir — API bağlı, bu sunucular iddia edilmez |
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

## Hâlâ açık / kısmi

### Peer / remote address
- Trusted-proxy doğrulaması için `HttpRequest` peer IP hâlâ yok.
- Nyx: `NYX_TRUST_X_FORWARDED_FOR` dürüst bayrak (peer yokken gerçek proxy IP doğrulanamaz).

### Exception source span
- 1.25 yakalanmamış istisnada sınıf + satır verir; yakalanmış `Exception` üzerinde satır alanı yok.
- Nyx: `server_error_detail_for(kind, message)` — satır API gelince zenginleşir.

### Ortak dialect ORM
- `nox.db.Statement` ortak (1.76). SQL yer tutucuları ve doğrulama/`Attributes`/`Record` yüzeyi sürücüye özel kalır → `model` / `pg_model` ayrı.
- `nox.orm` satır döndüren mikro-CRUD; Nyx modeli onunla değiştirilmez.

## M:N / `--release` entegrasyon kuralları (Nyx)

1. **İstek durumu:** yalnızca `TaskLocal` (`nyx.runtime`) — modül-global session/user yok.
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

## İzleme
`noxc upgrade` (≥1.104.0) → full `tests/*.nox` → blog dogfood → PG CI smoke → `--release` multicore smoke.
