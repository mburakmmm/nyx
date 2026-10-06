# Nox sınırları ve Nyx’te gözlemlenen çökme / codegen hataları

Bu belge, [nyx](https://github.com/mburakmmm/nyx) geliştirirken **Nox dili / stdlib / codegen** kısıtlarını listeler.

**Kaynak:** nyx 0.3.x → 0.19.0  
**Nox sürümü (güncel doğrulama):** noxc **1.142.3** (2026-10-06)

Nyx **0.19.0** için minimum Nox: **≥ 1.142.3** (`HttpRequest.peer_addr`, `Exception.line`, `nox.smtp` STARTTLS, ortak `nox.db.Statement`, TaskLocal, `--release` M:N).  
Önerilen / CI pin: **1.142.3** (`x86-64-v3` + qbe; yayınlanan linux ikilisi hâlâ `cpu=native`).

Runnable repro (tarihsel P1c/C2): `docs/repro-p1c-c2/` · `docs/NOX_REPRO_P1C_C2.md`

---

## 1. Özet tablo (2026-10-06, noxc 1.142.3)

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
| P8 | Process’ler arası shared state | **Kısmi** | **1.15+ `nox.sharedmem`** | metrics lock / cable / jobs DB |
| P9 | TLS / WebSocket istemci | **Var** | **1.14.0** | `nyx.tls` / `nyx.websocket.connect` |
| P9b | Sunucu TLS + WS Upgrade | **Açıldı** | **1.22.0** | `serve_tls` / `serve_ws*` |
| P10 | Decorator + `nox.reflect` | **Açıldı** | **1.21.0** | isteğe bağlı `@get`/`@post` |
| P11 | `dict[int, class]` | **Açıldı** | **1.26.0** | preload map O(1) |
| P12 | `--release` LLVM + M:N | **Açıldı** | **1.27–1.29** | `NYX_WORKERS` + SharedBuffer metrics |
| P13 | ortak `nox.db.Statement` | **Açıldı** | **1.76.0** | import `nox.db`; SQL hâlâ `?` / `$1` |
| P14 | SMTP STARTTLS | **Kısmi** | **1.75.0** | protokol var; Gmail/Outlook `TlsUnexpectedMessage` |
| P15 | `HttpRequest.peer_addr` | **Açıldı** | **1.127.0** | rate-limit + `NYX_TRUSTED_PROXIES` allowlist |
| P16 | yakalanmış `Exception.line` | **Açıldı** | **1.126.0** | development 500 `line`; `*Error` `__init__` yok |

---

## 2. Nyx 0.19.0 (Nox 1.142 kilidi)

1. Min / CI Nox **1.142.3** (kaynak derleme: `-Dcpu=x86_64_v3` + qbe 1.3)  
2. `HttpRequest` 5. argüman `peer_addr`. Trust kapalıyken gerçek peer IP kovası; boş peer `"direct"`  
3. `NYX_TRUSTED_PROXIES` doluysa XFF yalnızca listelenen bağlanan IP’lerden  
4. `*Error(Exception): pass` — `e.line` development hata gövdesinde  
5. `nyx.jwt` (exp/nbf/iat) durur; `nox.jwt` claim süresi kontrol etmez  

`serve_multicore` hâlâ closure handler kabul etmez; üretim yolu çıplak fonksiyon adı + `_apps` listesi.

Nox 1.122’den beri `TaskLocal[T]()` main’i fiber’a sarmaz. Fiber yokken `set`/`get` tutmaz. `nyx.runtime` bu kök yolu modül-yerel kutuda tutar; bağlantı fiber’ı TaskLocal’da kalır.

Önceki 0.18 kilidi hâlâ geçerli: `nox.smtp` STARTTLS, ortak `Statement`.

`SmtpClient.quit()` içindeki `try`, aynı fonksiyondaki `finally` ile noxc codegen'ini sonsuz açabiliyor (1.104’te görüldü). Nyx QUIT'i `_send_line` ile yazar ve her iki yolda `close()` çağırır.

---

## 2c. Nyx 0.18.0 (Nox 1.104 kilidi)

1. Min / CI Nox **1.104.0**  
2. `nyx.mailer` → `nox.smtp` (`NYX_MAIL_SMTP_STARTTLS`; HTML `to_eml` + dot-stuffing)  
3. `Statement` tek sınıf (`nox.db`); `model` / `pg_model` SQL ayrı  
4. `nox.orm` Nyx modelinin yerine geçmez  

`SmtpClient.quit()` içindeki `try`, aynı fonksiyondaki `finally` ile noxc 1.104 codegen'ini sonsuz açar. Nyx QUIT'i `_send_line` ile yazar ve her iki yolda `close()` çağırır.

Önceki 0.17 kilidi hâlâ geçerli: multicore, SharedBuffer metrics, TaskLocal.

---

## 2b. Nyx 0.17.0 (Nox 1.29 kilidi)

1. Min Nox **≥ 1.29.0**; CI pin **1.29.11**  
2. `nyx.server`: `workers` / `serve_mode` → `serve_multicore*` matrisi  
3. `NYX_WORKERS` (+ `NOX_POOL_WORKERS` for `--release` pool)  
4. `nyx.metrics`: kilitli `SharedBuffer` (M:N-safe)  
5. `workers>1` + bellek rate limit → otomatik `rate_limit_store=db`  
6. Template `main.nox`: multicore/TLS switch  

Önceki 0.16 kilidi hâlâ geçerli: TaskLocal, `*Error(Exception)`, `dict[int, Record]`.

---

## 3. Hâlâ açık

- Tek dialect ORM yüzeyi (`Statement` ortak; SQL ve `Record`/`Attributes` ayrı. `nox.orm` mikro-CRUD)  
- Gmail 465/587 ve Office365 587 SMTP TLS (`TlsUnexpectedMessage`; protokol API'si var)  
- MySQL dialect-aware Application boot  

## 4. Nox 1.27–1.29 notları

- **1.27.0:** deneysel `noxc build --release` (LLVM); M:N work-stealing altyapısı  
- **1.28.0:** `nox.thread.pool_run`; `serve_multicore` → paylaşılan havuz (`--release`)  
- **1.28.1:** `pool_run` sibling worker’larda modül-global görünürlük düzeltmeleri  
- **1.29.0:** şeffaf M:N; TaskLocal/class/list/dict `--release` transfer  
- **1.29.1–1.29.11:** TLS fiber race, multicore accept/work-steal, ECONNRESET crash, JSON decode hızı, Task.detached  

**Kritik:** `--release` altında modül-global `int++` / bellek rate map yarışır. Nyx metrics SharedBuffer + multicore’da db rate store kullanır.

## 5. Nox 1.23–1.26 notları

- **1.23.0:** `nox.db.Row` + `DbConnection.query`  
- **1.24.0:** `TaskLocal[T]` (`get`/`set`/`clear`)  
- **1.25.0:** `Exception` tabanı; unhandled `Sinif (satir N)`  
- **1.26.0:** `dict[K, class]` (anahtar sınıf değil)  

## 6. Nyx runtime string kopyası

Modül-global `str` doğrudan `HttpResponse` body / `session.create` ile paylaşılınca ARC use-after-free (SIGSEGV) görüldü.  
`session_json()` ve diğer string getter’lar `+ ""` ile kopya döner (TaskLocal sonrası da aynı kural).
