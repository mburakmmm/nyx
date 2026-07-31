# Nox sınırları ve Nyx’te gözlemlenen çökme / codegen hataları

Bu belge, [nyx](https://github.com/mburakmmm/nyx) geliştirirken **Nox dili / stdlib / codegen** kısıtlarını listeler.

**Kaynak:** nyx 0.3.x → 0.16.0  
**Nox sürümü (güncel doğrulama):** noxc **1.26.0** (2026-07-31)

Nyx **0.16.0** için minimum Nox: **≥ 1.26.0** (`TaskLocal`, `Exception`, `dict[int, class]`, `nox.db.Row`).  
Önerilen pin: **1.26.0**.

Runnable repro (tarihsel P1c/C2): `docs/repro-p1c-c2/` · `docs/NOX_REPRO_P1C_C2.md`

---

## 1. Özet tablo (2026-07-31, noxc 1.26.0)

| # | Konu | Durum | Nox | Nyx etkisi |
|---|---|---|---|---|
| C1 | `list[dict[K,V]]` | **Düzeltildi** | 1.8.2 | `render_each` |
| C2 | Callback `(T) -> dict` inline kardeş çağrı (paket) | **Düzeltildi** | **1.18.1** | `render_each_map` |
| C3 | `() -> None` / fn list | **Çalışıyor** | ≤1.8.2 | JobRegistry / `on_shutdown` hooks |
| C4 | Metod `T \| None` | **Düzeltildi** | ≤1.8.2 | `Record.get_opt` |
| C5 | `"\r"` / `"\n"` escape | **Düzeltildi** | 1.8.2 | mailer CRLF |
| P1 | Modül global — uygulama scripti | **Açıldı** | **1.10.0** | boot-once `Application` |
| P1c | Paket-modül global + nested closure | **Düzeltildi** | **1.18.1** | (tarihsel) |
| P1d | Nested def → fonksiyon-tipi capture çağrısı | **Düzeltildi** | **1.21.1** | `routes.post_with_override` |
| P3 | Task/fiber-local | **Düzeltildi** | **1.24.0** | `nyx.runtime` `TaskLocal` |
| P5 | Çıplak `except:` / `Exception` | **Açıldı** | **1.9 / 1.25** | dispatch `except Exception` |
| P6 | Alias = paket `name` | **Düzeltildi** | **1.12.1** | tüketici alias serbest |
| P7 | postgres / mysql | **Var** | **1.11.0** | `open_postgres` / `open_mysql` |
| P7b | PG/MySQL prepare/bind | **Açıldı** | **1.13.0** | ham sürücüler |
| P7c | ortak `Row` + `DbConnection.query` | **Açıldı** | **1.23.0** | `from nox.db import Row` |
| P8 | Process’ler arası shared state | **Kısmi** | **1.15+ `nox.sharedmem`** | cable store / jobs DB |
| P9 | TLS / WebSocket istemci | **Var** | **1.14.0** | `nyx.tls` / `nyx.websocket.connect` |
| P9b | Sunucu TLS + WS Upgrade | **Açıldı** | **1.22.0** | `serve_tls` / `serve_ws*` |
| P10 | Decorator + `nox.reflect` | **Açıldı** | **1.21.0** | isteğe bağlı `@get`/`@post` |
| P11 | `dict[int, class]` | **Açıldı** | **1.26.0** | preload map O(1) |

---

## 2. Nyx 0.16.0 (Nox 1.26 kilidi)

1. Min Nox **≥ 1.26.0**; CI pin **1.26.0**  
2. `nyx.runtime` → `TaskLocal[RuntimeState]`  
3. Tüm `*Error(Exception)`; dispatch catch-all  
4. `preload_belongs_to_map` / `index_records_by_id` → `dict[int, Record]`  

---

## 3. Hâlâ açık

- `HttpRequest` peer/remote address (trusted proxy doğrulaması)  
- Yakalanmış Exception üzerinde satır/span alanı (1.25 yalnızca unhandled raporu)  
- Tek dialect ORM yüzeyi (`prepare` Connection hâlâ sürücüye özel)  
- SMTP STARTTLS (587) — SMTPS/465 var  
- MySQL dialect-aware Application boot  

## 4. Nox 1.23–1.26 notları

- **1.23.0:** `nox.db.Row` + `DbConnection.query`  
- **1.24.0:** `TaskLocal[T]` (`get`/`set`/`clear`)  
- **1.25.0:** `Exception` tabanı; unhandled `Sinif (satir N)`  
- **1.26.0:** `dict[K, class]` (anahtar sınıf değil)  

## 5. Nyx runtime string kopyası

Modül-global `str` doğrudan `HttpResponse` body / `session.create` ile paylaşılınca ARC use-after-free (SIGSEGV) görüldü.  
`session_json()` ve diğer string getter’lar `+ ""` ile kopya döner (TaskLocal sonrası da aynı kural).
