# Nox sınırları ve Nyx’te gözlemlenen çökme / codegen hataları

Bu belge, [nyx](https://github.com/mburakmmm/nyx) geliştirirken **Nox dili / stdlib / codegen** kısıtlarını listeler.

**Kaynak:** nyx 0.3.x → 0.10.0  
**Nox sürümü (güncel doğrulama):** noxc **1.22.9** (2026-07-31)

Nyx **0.10.0** için minimum Nox: **≥ 1.22.0** (sunucu TLS + WebSocket Upgrade).  
Önerilen pin: **1.22.9**.

Runnable repro (tarihsel P1c/C2): `docs/repro-p1c-c2/` · `docs/NOX_REPRO_P1C_C2.md`

---

## 1. Özet tablo (2026-07-31, noxc 1.22.9)

| # | Konu | Durum | Nox | Nyx etkisi |
|---|---|---|---|---|
| C1 | `list[dict[K,V]]` | **Düzeltildi** | 1.8.2 | `render_each` |
| C2 | Callback `(T) -> dict` inline kardeş çağrı (paket) | **Düzeltildi** | **1.18.1** | `render_each_map` |
| C3 | `() -> None` / fn list | **Çalışıyor** | ≤1.8.2 | JobRegistry / `on_shutdown` hooks |
| C4 | Metod `T \| None` | **Düzeltildi** | ≤1.8.2 | `Record.get_opt` |
| C5 | `"\r"` / `"\n"` escape | **Düzeltildi** | 1.8.2 | mailer CRLF |
| P1 | Modül global — uygulama scripti | **Açıldı** | **1.10.0** | boot-once `Application` |
| P1c | Paket-modül global + nested closure | **Düzeltildi** | **1.18.1** | `nyx.runtime` modul-global |
| P1d | Nested def → fonksiyon-tipi capture çağrısı | **Düzeltildi** | **1.21.1** | `routes.post_with_override` |
| P3 | `Context` genişletme / task-local | Açık | — | `nyx.runtime` (worker-local) |
| P5 | Çıplak `except:` | **Açıldı** | **1.9.0** | job/txn/dispatch |
| P6 | Alias = paket `name` | **Düzeltildi** | **1.12.1** | tüketici alias serbest |
| P7 | postgres / mysql | **Var** | **1.11.0** | `open_postgres` / `open_mysql` |
| P7b | PG/MySQL prepare/bind | **Açıldı** | **1.13.0** | ham sürücüler |
| P7c | `sqlite.execute` → `int` + `DbConnection.execute` | **Açıldı** | **1.21.3** | dialect-aware boot; query/Row hâlâ sürücüye özel |
| P8 | Process’ler arası shared state | **Kısmi** | **1.15+ `nox.sharedmem`** | cable store / jobs DB |
| P9 | TLS / WebSocket istemci | **Var** | **1.14.0** | `nyx.tls` / `nyx.websocket.connect` |
| P9b | Sunucu TLS + WS Upgrade | **Açıldı** | **1.22.0** | `serve_tls` / `serve_ws*` + `nyx.server` / `cable.ws_*` |
| P10 | Decorator + `nox.reflect` | **Açıldı** | **1.21.0** | isteğe bağlı `@get`/`@post` router |

---

## 2. Nyx 0.10.0 (Nox 1.18.1 → 1.22.9 kilidi)

1. Min Nox **≥ 1.22.0**; CI pin **1.22.9**  
2. Gerçek `on_shutdown` hook listesi (1.21.1 notu: Application + nested Router OK)  
3. Dialect-aware boot: `postgres://` → `Application.pg` + `migrate_postgres`  
4. Dev error page: `dispatch` → `server_error_detail_for` + typed `except as e`  
5. `post_with_override` (fn-typed capture)  
6. `nyx.server` + template `serve_tls`; cable `ws_echo` / `ws_broadcast_loop`  
7. `WebSocketServerConn` re-export  

---

## 3. Hâlâ açık

- Task/fiber-local context (N1) + zengin exception stack/source span (N5)  
- Ortak `query`/`prepare`/`Row` protokolü — `DbConnection` yalnızca `close`+`execute` (kovaryant `list[Row]` yok)  
- `dict[int, Record]` yok → preload list API  
- SMTP STARTTLS (587) — ham TCP upgrade yok; SMTPS/465 var  
- MySQL dialect-aware Application boot (şu an postgres + sqlite)  

## 4. Nox 1.18.1–1.22.9 notları

- **1.18.1:** P1c (`genNoxInitGlobals`) + C2 (`dict_info` kopyası)  
- **1.21.1:** nested def fonksiyon-tipi capture `func_sig`  
- **1.21.3:** sqlite `execute` → int; `DbConnection.execute`  
- **1.22.0:** `serve_tls` / `serve_ws` / `serve_ws_tls` (+ fd/multicore varyantları)  

## 5. Nyx runtime string kopyası

Modül-global `str` doğrudan `HttpResponse` body / `session.create` ile paylaşılınca ARC use-after-free (SIGSEGV) görüldü.  
`session_json()` ve diğer string getter’lar `+ ""` ile kopya döner.
