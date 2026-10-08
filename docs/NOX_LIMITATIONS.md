# Nyx sınırları (güncel)

Bu dosya **şu an geçerli** sınırları listeler. Kapanmış codegen hataları ve sürüm notları burada yok; onlar `docs/NOX_REQUESTS.md` ve README sürüm notlarında.

**Doğrulama:** Nyx **0.21.0**, noxc **1.170.0** (2026-10-08).  
Minimum Nox: **≥ 1.170.0**. CI resmi `v1.170.0` paketini kurar (`x86_64_v2`, paket içi `qbe`). `nox.json` çağrıları `parse` / `dump` / `dump_string`. Nox **1.171** (`main`) `decode` / `encode*` adlarını kaldırdı.

`docs/repro-p1c-c2/` tarihseldir (1.18.1’de kapandı). Güncel bir hatanın repro’su değildir.

---

## 1. Nox’ta hâlâ geçerli

Bunlar dil, stdlib veya çalışma zamanı kısıtıdır. Nyx kodu bunlara göre yazılır.

| Sınır | Nox | Nyx’te karşılığı |
|---|---|---|
| `TaskLocal.set/get` yalnızca çalışan bir fiber’da tutar. 1.122’den beri `TaskLocal[T]()` `main`’i fiber’a sarmaz; kök scriptte `get()` `None` döner | **1.122** | `nyx.runtime` kök yolu modül kutusunda tutar. Bağlantı fiber’ı `TaskLocal` kullanır; fiber’lar birbirinin oturumunu görmez |
| `serve` / `serve_tls` / `serve_ws*` closure handler kabul eder. `serve_multicore*` derleme zamanında reddeder | **1.133**, 1.171.2’ye kadar değişmedi | Üretim handler’ı çıplak fonksiyon adıdır; `Application` `_apps` listesindedir |
| Varsayılan `serve*` IPv4 dinler. `listen_v6` IPv6 peer’ini `[addr]:port` yazar. `serve_multicore*` portu kendisi IPv4 dinler; fd üzerinden multicore yok. Windows’ta `listen_v6` `HttpError` | **1.142.10** | `NYX_IPV6=1` tek worker’da `listen_v6` + `serve_fd` / `serve_fd_tls`. `NYX_IPV6_ONLY=1` dual-stack’i kapatır. `NYX_WORKERS>1` ile birlikte `ServerError`. Rate-limit anahtarı köşeli parantezin içidir (`::1`). Allowlist’e `[::1]` yazılmaz |
| `--release` M:N altında kilitsiz modül-global `int++` ve bellek içi rate map yarışır | **1.29+** | `nyx.metrics` kilitli `SharedBuffer`. `NYX_WORKERS>1` iken rate store `db` |
| macOS POSIX shm adı yaklaşık 31 karakter | platform | `nyx.metrics` kısa shm adı kullanır |
| `nox.smtp.send` düz metin başlık üretir | **1.75** | HTML/multipart `to_eml` + `_send_dot_stuffed` ile gider |

---

## 2. Bilinçli olarak ayrı kalanlar

Bunlar eksik API değildir. Kapatmak ya Nox tipi ister ya da mevcut yüzeyi zayıflatır.

- **SQL diyalekti ayrı kalır.** `nox.db.DbConnection` (`close` / `execute` / `query` / `prepare`) sqlite, postgres ve mysql `Connection`ını karşılar. `last_insert_rowid` protokolde yoktur. Yer tutucu, tırnak, `RETURNING` ve transaction SQL’i diyalekte göre değişir, bu yüzden model `nyx.model` / `nyx.pg_model` / `nyx.mysql_model` olarak durur. `nyx.db.placeholder` `?` veya `$n` verir.
- **`nox.orm` Nyx modeli değildir.** Satır döndüren mikro-CRUD. Doğrulama ve `Attributes` Nyx modelinde kalır.
- **`nox.jwt` claim süresi kontrol etmez.** `nyx.jwt` exp / nbf / iat uygular.
- **İş kuyruğu SQLite dosyasıdır.** Worker, uygulama Postgres veya MySQL olsa da `NYX_JOBS_DB_PATH` kuyruğunu kullanır. Kuyruk app sunucusuna bağlanmak zorunda kalmaz.
- **Cable bellek hub’ı süreç içidir.** Worker’lar arası yayın `nyx.cable.open_store` (SQLite) ile yapılır.
- **`{% for %}` `nox.template` içinde yok.** Koleksiyon `render_records` / `render_each` / `render_each_map`.
- **Boş `trusted_proxies` + `NYX_TRUST_X_FORWARDED_FOR=1`.** Operatör kenarın XFF’ini doğruladığını kabul eder. Liste doluysa XFF yalnızca o IP’lerden okunur.

## 3. MySQL

`DATABASE_URL=mysql://...` ile `nyx.app.boot` bağlantıyı açar, `migrate_mysql` çalıştırır, `nyx.app.mysql()` döner. Oturum deposu `nyx.session_store_mysql`, kullanıcı hesabı `nyx.auth_engine_mysql`, satır API’si `nyx.mysql_model`. Migration dosyasındaki SQL MySQL diyalektinde yazılır; `execute` dosyada tek deyim çalıştırır.

---

## 4. Artık geçerli değil

Bunlar eski belgede açıktı. 1.142.23’te sınır olarak kullanılmamalı.

- `HttpRequest` peer taşımıyor — 1.127’de kapandı.
- Yakalanmış `Exception` satır taşımıyor — 1.126’da kapandı. 1.142.23’te alt sınıf yalnızca `self.message` atayan bir `__init__` yazsa da `raise` satırı `e.line` olarak geldi. Nyx `*Error` sınıfları `pass` kalabilir; `__init__` yazmak satırı silmez.
- Gmail 465/587 ve Office365 587 `TlsUnexpectedMessage` — 1.75’te görüldü. 1.142.23’te `smtp.gmail.com:465`, `smtp.gmail.com:587` (STARTTLS) ve `smtp.office365.com:587` (STARTTLS) EHLO, yükseltme ve QUIT ile tamamlandı. Kimlik doğrulama ve gerçek posta gönderilmedi.
- Üç `Connection` tipi ortak protokole giremiyor — `DbConnection` bu dört metodu kapsar. Ayrı kalan şey SQL diyalektidir, yukarıda.
- `SmtpClient.quit()` içindeki `try`, aynı fonksiyondaki `finally` ile codegen’i sonsuz açıyor — 1.104’te görüldü. 1.142.3’te `quit()` `finally` içinden çağrıldı; derleyici kilitlenmedi. Mailer hâlâ QUIT’i `_send_line` ile yazar; bu bir derleyici yasağı değildir.
- Oturum string’ini `HttpResponse` ile paylaşınca ARC use-after-free — 1.142.3’te yeniden üretilmedi. `session_json()` hâlâ `+ ""` ile kopya döner. Ayrı bir hata olan `nox.tls` / `nox.websocket` `close()` sonrası use-after-free 1.110.4’te kapandı.
- Yayınlanan `linux-x64` ikilisi `-Dcpu=native` olduğu için AVX-512’siz makinede SIGILL — **1.142.7**’den beri release `x86_64_v2` derler ve paket `qbe` içerir. CI kaynak derlemesi bırakıldı.
- `list[dict]`, paket içi callback dict, modül-global + nested closure, `Exception` tabanı, `dict[int, class]`, ortak `Row` / `Statement`, sunucu TLS — kapanmış durumlar. Sürümleri `docs/NOX_REQUESTS.md` içinde.
