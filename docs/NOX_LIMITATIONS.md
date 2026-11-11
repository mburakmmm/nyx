# Nox sınırları

Bu dosya **bugün ölçülmüş** sınırları tutar. Kapanmış isteklerin sürüm tablosu `docs/NOX_REQUESTS.md` içindedir. Tarihsel repro `docs/repro-p1c-c2/` 1.18.1’de kapandı; güncel bir hatanın repro’su değildir.

**Doğrulama:** 11 Kasım 2026. Yüklü derleyici `noxc 2.1.51` (`noxc --version`). Yayımlanmış en son kararlı etiket budur (`v2.1.52` taslaktır, pinlenmez). Stdlib bu kurulumun `~/.nox-lang/lib/nox/stdlib/nox` ağacı. Nyx **0.25.0**. CI resmi **v2.1.51** paketini kurar.

Çalıştırma kanıtları `/tmp` altında tek seferlik programlardır; depoya alınmadı. Her birinin komutu ve görülen çıktı aşağıdadır. `nox.test.AssertionError` satırı stdlib `test.nox` içindeki `raise` satırıdır; test dosyasının satırı değildir.

---

## 1. Bu turda kapanıp Nyx 0.24’e bağlananlar

Bunlar artık Nox sınırı değildir. Pin **≥ 2.1.51** bu satırların hepsini stdlib’e alır; Nyx çağırır.

| Nox | Ne kapandı | Nyx |
|---|---|---|
| 2.0.69 / 2.0.81 | `download_to_file` tam 2xx’te `.nox-part` + rename. Gzip+chunked 2.0.69’da yanlış `HttpError` idi; **2.0.81** düzeltti. Bu bant pinlenmez | `nyx.storage.fetch` |
| 2.0.69 | `upload_file` dosyayı akar, yeniden denemez | `nyx.storage.store_http_file` (`POST`/`PUT`/`PATCH`) |
| 2.0.91 | `timeout_ms` DNS ve TCP connect’i de keser | `NYX_HTTP_TIMEOUT_MS` (0.23’ten beri `request`) |
| 2.0.92 | `write_string_atomic` ENOSPC’te `.nox-tmp` siler | 0.23’ten beri storage gövdesi, `.meta.json`, `.eml` |
| 2.0.116 / 2.0.117 | Yakalanmamış handler hatası ve chunked taşma süreci düşürmez | Pin ile gelir; Nyx API’si yok |
| 2.0.118 | `configure(...)` ve `shutdown()`. `0` stdlib varsayılanını korur (10 MiB, 16 KiB, 30s, 4096, 10s). SIGTERM/SIGINT `serve*`’ı döndürür; ikinci sinyal hemen çıkar | `nyx.server.apply` boot içinde. Şablon `finally` → `nyx.app.shutdown` |
| 2.0.120 | Aynı adlı başlıklar `\n` ile birleşir; sunucu her parçayı ayrı satır yazar | `nyx.response.add_header`. Oturum `Set-Cookie` bunu kullanır |
| 2.0.124 | `req.sse` / `req.stream`. `ResponseStream.end()` yer tutucu döner; `serve` o yanıtı yok sayar (`http.nox` 79–80). `conn == 0` bellekte toplar | `dispatch` `req.conn` kopyalar. `nyx.cable.live_sse` / `open_sse` / `store_live_sse` / `channel_live_sse`. `conn == 0` tek kare döner |
| 2.0.126 | `client_pool(max_idle, idle_timeout_ms)`. Varsayılan 32 / 90000. `0` havuzu kapatır | `NYX_HTTP_POOL_IDLE` / `NYX_HTTP_POOL_IDLE_MS` |
| 2.0.127 | HTTP/2 varsayılan açık. Başlık adları Title-Case gelir (`X-Csrf-Token`, `Last-Event-Id`) | `NYX_HTTP2` (varsayılan açık). `nyx.params.header` büyük/küçük harf duyarsız |
| 2.0.129 | HTTP/2 üzerinde WebSocket, mevcut `serve_ws*` | Nyx handler değişmedi |
| 2.0.136 | Çok baytlı karakterden sonra `{{ }}` kaymaz | Pin ile gelir. Şablon hâlâ döngü bilmez (aşağıda) |
| 2.0.176 | `noxc run dosya.nox --release` bayrağı **programa** verir. Bayrak yoldan önce olmalı | `bin/nyx` bu biçimi kullanmaz. Komut: `noxc run --release main.nox` |
| 2.0.179 | `safe_join` bileşen sınırında bakar; string önek yetmez. `strip_prefix` de sınır ister | `nyx.storage.path_for`. Kök yoksa veya `..` / symlink kökten çıkarsa `StorageError` |
| 2.1.2 | `query_decode` `+` karakterini boşluk yapar; gerçek artı `%2B`. `%2B` çözülünce çıkan `+` tekrar boşluk olmaz | `nyx.params.parse_qs` doğrudan `query_decode` çağırır. Tek değer `decode()` `percent_decode` kullandığı için `+` → `%20` dönüşümü ondadır |
| 2.1.7 | `render_blocks` / `render_blocks_unescaped`: `{% for %}`, `{% if %}`, `{% else %}`. `render` değişmedi | `nyx.view.render_blocks`, `nyx.ctrl.render_blocks` |
| 2.1.7 | `nox.jwt.verify_claims` / `verify_now` (`exp` / `nbf` / `iat`, leeway). `verify` değişmedi | Hesap tokeni `nyx.jwt` (exp zorunlu). Stdlib token için `verify_now` |
| 2.1.7 | `uuid7` zaman sıralı | İstek kimliği `nox.uuid.uuid7`. Oturum ve depolama anahtarı `uuid4` kalır |
| 2.1.17 | Postgres `Connection.set_query_timeout` | `NYX_PG_QUERY_TIMEOUT_MS` (0 kapalı). Boot, migrate’ten önce kurar |
| 2.1.20 | `serve_multicore*` üst düzey fabrika: her worker kendi closure’ını kurar. Ana runtime’daki closure değeri hâlâ reddedilir. `AtomicRef` değişmez `str` anlık görüntüsü | Nyx handler’ı çıplak ad olarak kalır (modül düzeyi boot worker’da yeniden kurulur). Sayaçlar `SharedBuffer` |
| 2.1.32 | `configure(..., ip_family)`: 0 IPv4, 1 dual-stack, 2 yalnız IPv6. Windows yok sayar | `nyx.server.ip_family`. `NYX_IPV6` + `NYX_WORKERS>1` artık `ServerError` değildir |

Nitelikli tür yazımı bu derleyicide çalışır. Kanıt: `def f(req: nox.http.HttpRequest)` kabul edildi; `f(1)` şu hatayı verdi:

```
type error (TypeMismatch): line 8: type mismatch for argument 'f'
```

`*args` çalışır (`noxc run` çıktısı `1`). Çoklu kalıtım çalışır (`class C(A, B)` çıktısı `bc`). İkisi de Nyx API’si değildir.

---

## 2. Hâlâ geçerli — çalıştırılarak ölçüldü

### 2.1 Ana runtime’daki closure, `serve_multicore*`’a verilemez

Fabrika (parametresiz üst düzey fonksiyon) 2.1.20’de kabul edilir; `noxc check factory.nox` tip hatası vermedi. Dönüşü önceden alınmış bir closure hâlâ reddedilir. `noxc check` çıktısı:

```
type error (NotCallable): 'nox.http.serve_multicore': 'handle' must be a plain function name (a closure handler is NOT supported in this variant: in the default build the multicore workers use a SEPARATE RuntimeState, so a closure from the main runtime cannot be passed to them; pass a FACTORY instead: a top-level function with no parameters that returns the handler closure, called once per worker)
```

`serve_multicore_fd` yoktur. Nyx üretim yolu çıplak `handle` adıdır. Worker başına kurulum, modül düzeyindeki `boot` ile olur. IPv6 multicore `ip_family` ile açıktır (bölüm 1). Windows `ip_family`’yi yok sayar; orada multicore IPv4 kalır. Rate-limit anahtarı köşeli parantezin içidir (`::1`).

### 2.2 `render` döngü yorumlamaz

`render_blocks` yorumlar (bölüm 1). `render` etiketi metin bırakır:

```
RENDER:Hello Ada {% for item in items %}x{% endfor %}
BLOCKS:Ada
```

Eski koleksiyon yolu `render_records` / `render_each` durur. Layout hâlâ `render` kullanır; gövdedeki `{{ }}` ikinci kez açılmaz.

### 2.3 `nox.jwt.verify` süre bakmaz

`verify_now` süresi dolmuş tokeni reddetti (`NOW:rejected`). `verify` aynı tokeni olduğu gibi döndürdü:

```
VERIFY:{"sub":"a","exp":1}
```

Nyx hesap tokeni `nyx.jwt.decode` ile açılır; exp orada zorunludur. İki imza yolu bayt bayt aynı değildir.

### 2.4 Kök scriptte `TaskLocal.get()` `None`

1.122’den beri `TaskLocal[T]()` `main`’i fiber’a sarmaz. `get` runtime’da `$nox_tasklocal_get` çağırır (`compiler/codegen_qbe/async_thread.zig` 1115–1118). Boş yuva `None`’dır.

```
noxc run tasklocal.nox
root-get-none
```

Nyx `nyx.runtime` kök yolu (test ve `noxc run`) modül kutusunda tutar. Bağlantı fiber’ı `TaskLocal` kullanır. Fiber’lar birbirinin oturumunu görmez.

### 2.5 Liste ataması bağımsız kopyadır

Bu tasarım kararıdır (değer semantiği). Davranış değiştirilmez. Paylaşım bir sınıf alanı ya da `AtomicRef` (değişmez `str`) ile kurulur. 6 Kasım ölçümü durur: `b = a` sonra `b.append` uzunlukları `1 2` yazdı; `a.append` sonrası `2 1`.

### 2.6 Paylaşılan değiştirilebilir `list` / `dict` yok

`AtomicInt`, `AtomicBool` ve `AtomicRef` (`str` anlık görüntüsü, 2.1.20) vardır. Değiştirilebilir liste veya sözlük worker’lar arasında paylaşılmaz; bu kapsam dışı bırakıldı. Modül durumu worker başına kopyadır.

Nyx sayaçları kilitli `SharedBuffer`. `NYX_WORKERS>1` iken rate store `db`. Cable bellek hub’ı süreç içidir; worker’lar arası yayın `nyx.cable.open_store`. `nox.postgres.Pool` stdlib’de vardır; Nyx tek `Connection` açar ve isteğe bağlı `set_query_timeout` kurar. Havuzu Nyx modeli yapmadık.

`Context.query` Nyx parametresi değildir. Nyx yolu router’dan önce keser; form `+` kuralı `nyx.params` içindedir.

### 2.7 HTTP/2 ve sinyal, Windows’ta yok

Bu madde Windows’ta çalıştırılmadı. Kaynak kapısı:

- `net_dial.zig` 24–26: `enabled` Windows, freestanding ve WASI’de `false`.
- `http2_server.zig` 23: `supported = fiber_net.enabled` (`fiber_net` aynı kapı).
- `http_server.zig` 1828: HTTP/2 yolu `h2srv.supported` ister.
- `http_server.zig` 124–126: SIGTERM/SIGINT kurulumu Windows’ta hemen döner. `nox.http.shutdown()` durur.

macOS / Linux pininde HTTP/2 varsayılan açıktır. `NYX_HTTP2=0` kapatır.

### 2.8 Canlı SSE yanıtı, middleware’den sonra başlık alamaz

`ResponseStream.end` (`http.nox` 79–80) yer tutucu `HttpResponse` döndürür ve yorumu şöyledir: dönen yanıt yok sayılır. Akış `req.stream` ile başladığı anda after-middleware `Set-Cookie` veya güvenlik başlığı ekleyemez.

Nyx `live_sse` `conn != 0` iken sokete yazar. Güvenlik başlıkları `open_sse`’nin `extra` sözlüğüne, akıştan önce konur (`nyx.security.header_dict`). Oturum çerezi akıştan önce var olmalıdır. `conn == 0` (test, `dispatch_from_parts`) tek SSE gövdesi döner; middleware o gövdeye hâlâ başlık ekleyebilir.

---

## 3. Bilinçli olarak ayrı kalanlar

Bunlar eksik API değildir.

- **SQL diyalekti ayrı kalır.** `nox.db.DbConnection` sqlite, postgres ve mysql için `close` / `execute` / `query` / `prepare` karşılar. `last_insert_rowid` protokolde yoktur. Yer tutucu, tırnak, `RETURNING` ve transaction SQL’i diyalekte göre değişir. Model `nyx.model` / `nyx.pg_model` / `nyx.mysql_model` olarak durur.
- **`nox.orm` Nyx modeli değildir.** Satır döndüren mikro-CRUD. Doğrulama ve `Attributes` Nyx modelinde kalır.
- **İş kuyruğu SQLite dosyasıdır.** Uygulama Postgres veya MySQL olsa da worker `NYX_JOBS_DB_PATH` kullanır.
- **Boş `trusted_proxies` + `NYX_TRUST_X_FORWARDED_FOR=1`.** Operatör kenarın `X-Forwarded-For` değerini doğruladığını kabul eder. Liste doluysa değer yalnızca o IP’lerden okunur.
- **`fetch` sağlama toplamı dosyayı belleğe alır.** `download_to_file` diske yazar; mevcut `nox.crypto` yüzeyi akışlı sha256 vermez. Büyük indirmede ikinci okuma Nyx’tedir.
- **Jeneratör, mixin ve `*args` Nyx çağrısı değildir.** Dil onları çalıştırır (bölüm 1). Framework yüzeyi bunlara taşınmadı.

## 4. MySQL

`DATABASE_URL=mysql://...` ile `nyx.app.boot` bağlantıyı açar, `migrate_mysql` çalıştırır, `nyx.app.mysql()` döner. Oturum `nyx.session_store_mysql`, hesap `nyx.auth_engine_mysql`, satır API’si `nyx.mysql_model`. Migration SQL’i MySQL diyalektindedir.

## 5. Eski belgede açıktı, artık sınır değil

- `HttpRequest` peer taşımıyor — 1.127.
- Yakalanmış `Exception` satır taşımıyor — 1.126. Alt sınıf `__init__` yazsa da `e.line` raise satırıdır.
- Gmail 465/587 ve Office365 587 `TlsUnexpectedMessage` — 1.142.23’te EHLO, yükseltme ve QUIT tamamlandı. Kimlik doğrulama ve gerçek posta gönderilmedi.
- Üç `Connection` tipi ortak protokole giremiyor — `DbConnection` dört metodu kapsar. Ayrı kalan SQL diyalektidir.
- `quit()` içindeki `try` + `finally` sonsuz codegen — 1.142.3’te yeniden üretilmedi.
- Oturum string’ini `HttpResponse` ile paylaşınca use-after-free — 1.142.3’te yeniden üretilmedi.
- Yayınlanan `linux-x64` ikilisi AVX-512’siz makinede SIGILL — 1.142.7’den beri `x86_64_v2`, paket içi `qbe`.
- Modül düzeyinde `application = nyx.app.boot(cfg, setup)` bayat yerel — 2.0.0-rc.4. Nyx bu deseni kullanır.
- Gövde tavanı derleme sabiti — 2.0.118 `configure`. `NYX_MAX_BODY_BYTES=0` stdlib varsayılanını korur.
- Nitelikli tür yazımı reddediliyor — 2.0.188’de `nox.http.HttpRequest` parametresi kabul edildi.
- Multicore yalnız IPv4 — 2.1.32 `ip_family`. Windows hâlâ yok sayar.
- `query_decode` `+` boşluk yapmıyor — 2.1.2.
- Şablonda döngü yok — `render` hâlâ yorumlamaz; `render_blocks` 2.1.7’de var.
- `nox.jwt` süre bakamıyor — `verify` hâlâ bakmaz; `verify_now` 2.1.7’de bakar.
