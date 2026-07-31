# Nox roadmap requests from Nyx
#
# Nyx 0.16+ Nox 1.24–1.26 kilidini kullanır (sürüm 1.0 değil).

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
- Row ortak; `prepare`/`Connection` hâlâ sürücüye özel → `model` / `pg_model` ayrı.

## Kapandı (Nox 1.21–1.22)

| İstek | Nox |
|---|---|
| Sunucu TLS + WS Upgrade | 1.22.0 |
| sqlite execute int / DbConnection.execute | 1.21.3 |
| Nested fn-typed capture | 1.21.1 |
| on_shutdown + nested Router | 1.18.1+ |

## İzleme
`noxc upgrade` (≥1.26) → full `tests/*.nox` → blog dogfood → PG CI smoke.
