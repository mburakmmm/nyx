# Nyx UI — WASM uygunluğu

**Tarih:** 16 Kasım 2026.  
**Nyx:** `89b0c2df3874da1d2168998175efce42258a0c74` (0.30.11).  
**Nox kaynağı:** `5cf4f63d49cdf2a4a2c619a666df45799d7aac2e` etiketi `v2.1.186`.  
**Çalıştırılan derleyici:** `noxc 2.1.186` (`~/.nox-lang/bin/noxc`). Zig `0.16.0`, `wasm-opt` 133, Node `v26.13.0`.

Yayın adresi [noxlang.com/docs/tools/wasm](https://noxlang.com/docs/tools/wasm/) ile depodaki `docs/tools/wasm.md` aynı makaledir. Sitede ayrı bir sürüm damgası yok. Aşağıda “sayfa” bu metindir. “Bugün” bu makinede çalışan komutlardır.

Aynı gün `examples/ui-spike` tarayıcıda açıldı. Satır `tarayıcı` idi. Sayfa `kod 0` ve `echo:tarayıcı` yazdı. Threads sayfası açılmadı.

## Sonuç

Nyx UI, Nox ile yazılır. Tarayıcı hedefi `wasm32-freestanding` olur. `wasm32-wasi` tarayıcı yolu değildir: sayfa, WASI’yi Node’daki `wasm_host.mjs` dışında bir tarayıcı shim’ine bırakır.

Sayfa DOM, öğe veya olay API’si tanımlamaz. Dış dünya `nox_host` importlarıdır: `write`, `read`, `clock_ms`, `random_fill`, `sleep_ms`, `exit`. Geliştiricinin Nox fonksiyonu dışa aktarılmaz. Bugün derlenen `hello.wasm` dışa aktarımları `memory`, `nox_host_abi_version`, `_start` idi.

Etkileşimli arayüz için iki hazır kapı vardır:

1. `print` / `nox_host.write` ve `nox_host.read`. Playground çalışanı stdin’i baştan yükler. Aynı worker üzerinde `read` beklerken yeni `postMessage` işlenmez. `sleep_ms` de senkron importtur. `--asyncify` bunu `nox_host_resume` protokolüne çevirmez.
2. `nox.http` içeren `--asyncify` modülü `nox_host_resume`, `nox_host_fetch_pending`, `nox_host_fetch_complete`, `nox_host_status`, `nox_host_caps_set` dışa aktarır. Host, fiber’ı park edip sonra sürdürür. Bu protokol `fetch` içindir. Genel bir UI olayı için aynı şekil yoktur.

Playground (`services/noxlang-site/site/playground/compile-worker.js`) hedefi `wasm32-freestanding`dir ve `network`, `process`, `shared_memory`, `dynamic_code` yeteneklerini derlemede keser. Asyncify kullanmaz. Çalışma ayrı bir Worker’dadır. Çıktı tavanı 1 MiB (`run-worker.js`). `sleepMs` en çok 5 saniye meşgul bekler. Site CSP’si yalnız `/playground` için `'wasm-unsafe-eval'` ve `https://cdn.jsdelivr.net` açar (`services/noxlang-site/main.nox`, `play_csp`).

Nyx sunucusu kimlik, yetki ve veritabanında kalır. İstemci WASM’ine Postgres veya MySQL koymak, sayfanın TCP köprüsünü gerektirir. O köprü açık vekildir. `--allow` zorunludur. v1 yolu aynı köken `fetch` olur. Yetenek host vermezse kapalıdır.

## Bugün çalışan komutlar

Programlar `/tmp/nyx-wasm-evidence` altındaydı. Depoya alınmadı.

`hello.nox` yalnız `print("hello-wasm")` idi.

```text
noxc build --target wasm32-freestanding hello.nox -o hello.wasm
hello.wasm  43440 bayt
noxc run --target wasm32-freestanding hello.nox
hello-wasm
```

Aynı kaynak `--asyncify` ile 55252 bayt, `--threads` ile 56410 bayt. İkisi de `hello-wasm` yazdı. Threads çalıştırması Node hostudur (`noxc run`). Tarayıcıda `crossOriginIsolated` sayfa koşulmadı.

`compiler/wasm_host.mjs` içindeki `runNox`, `hello.wasm` için çıkış kodu 0 ve gövde `hello-wasm\n` verdi. Bu, sayfanın tarayıcı örneğiyle aynı fonksiyondur. Çağrı Node’da yapıldı.

Ağ yasağı, sayfadaki cümleyle aynı hatayı verdi:

```text
noxc build --target wasm32-freestanding --deny-capability network deny_http.nox
type error (CapabilityNotGranted): line 1: module 'nox.http' cannot be used: the capability 'network' is denied (--deny-capability)
```

`nox.http.get` host `fetch` verilmeden, hem düz freestanding hem `--asyncify` üzerinde yakalanabilir `HttpError` oldu:

```text
http-error the 'network' capability is not available on this host: GET http://127.0.0.1:9/
```

`--asyncify` ile bağlanan `http_off.wasm` 100920 bayttı. Dışa aktarımlar: `nox_host_resume`, `nox_host_fetch_complete`, `nox_host_fetch_pending`, `nox_host_status`, `nox_host_free`, `nox_host_alloc`, `nox_host_caps_set`, `nox_host_abi_version`, `_start` ve asyncify yardımcıları. Importlar yalnız `nox_host.exit` ve `nox_host.write`. Ağ, modül importu değildir.

Bellek içi SQLite:

```text
sqlite.wasm  766986 bayt
çıktı: 3
```

`hello.wasm` 43440 bayt olduğuna göre büyüme 723546 bayttır. Sayfa “yaklaşık 700 KB” der. Dosya konağın diskine yazılmadı. `nox.fs.write_string("/note.txt", "kept")` çıktısı `kept` oldu. `/note.txt` ve çalışma dizinindeki `note.txt` yoktu. `sqlite.wasm` sanal dosya sistemi dışa aktarımlarını taşıyordu: `nox_vfs_host_alloc`, `free`, `put`, `mkdir`, `snapshot`. `hello.wasm` taşımıyordu. Sayfa, bu dışa aktarımların yalnız `nox.fs` veya `nox.sqlite` kullanınca bağlandığını söyler. Ölçüm buna uyar.

`sleep_ms(1)` içeren `--asyncify` modülü `nox_host.sleep_ms` import etti. `nox_host_resume` dışa aktarmadı. Boyut 56125 bayt. Uyku, fetch protokolüne girmez.

İç içe `async def` derlenmedi:

```text
type error (TypeMismatch): line 2: a nested function definition CANNOT be 'async def': inner
```

Nitelikli `except nox.http.HttpError` sözdizimi hatasıdır. `from nox.http import HttpError` gerekir.

`spawn` ile hemen dönen bir görev, düz kipte ve `--asyncify` kipinde `7` yazdı. Gönderici, alıcıdan sonra `send` ederse iki kip de `9` ve `done` yazdı.

Depodaki `tests/golden/codegen_cases/async_deadlock.nox` düz kipte şunu yazıp çıkış 1 verdi:

```text
1
nox: deadlock detected (channel recv) — on wasm, tasks run nested on one stack and cannot be suspended; the awaited result can only come from a task that is blocked below this one
```

Aynı dosya `--asyncify` ile de çıkış 1 verdi. Mesaj farklıydı: `deadlock detected — all tasks are blocked, none can make progress`. Bu program kimse kanala yazmadan alıcıyı bekler. Asyncify bekleyeni gerçekten park eder. Gönderen olmadığı için ilerleme yoktur. Sayfanın “deadlock sınırı kalkar” cümlesi, göndereni olan asıl korpus içindir. Bu dosya o kanıt değildir.

## Sayfanın iddiası, bu turda koşulmayanlar

Bunlar [yayın sayfasında](https://noxlang.com/docs/tools/wasm/) durur. Bu turda yeniden üretilmedi.

- Chromium’da düz, `--asyncify` ve `--threads` kiplerinin native ile aynı çıktıyı verdiği. 200 iş parçacıklı `thread_spawn_stress` dahil. Sayfa, Firefox ve Safari’de threads denemediğini yazar.
- `examples/wasm-browser/serve.mjs` ve `COOP`/`COEP` sayfası.
- `zig build wasm-corpus-test` ve wasmtime korpusu.
- `benchmarks/wasm/RESULTS.md`: Apple M4, Node 26, CPU’da 1,4 kat, bellekte 3–5 kat, modüller 60–125 KB. Bugünkü `hello.wasm` 43 KB’dir. O aralık bu program değildir.
- Postgres, MySQL, Redis, gRPC ve TCP köprüsünün gerçek sunuculara karşı geçtiği.
- `--vfs-dir` ile diske yazma. Bellek içi yazmanın diske çıkmadığı görüldü. Kalıcı anlık görüntü çağrılmadı.

## Nyx UI için sınır

| Konu | Durum | Kanıt |
|---|---|---|
| `wasm32-freestanding` derleme ve `print` | Doğrulandı | `hello.wasm`, `runNox` |
| Tarayıcıda DOM | Yok | Sayfada ve import tablosunda DOM yok |
| Kullanıcı fonksiyonunu JS’ten çağırma | Yok | Dışa aktarım `_start` ve host ABI |
| Playground hedefi | Düz freestanding, ağ kapalı | `compile-worker.js` `DENY` |
| `fetch` | Yalnız `--asyncify` ve host verirsen | Sayfa ve `http_off` hatası |
| `sleep` ile olaya dönme | Olmaz | `sleep_ms` senkron import |
| Threads | Node’da `threads-ok`. Tarayıcıda yalıtık sayfa işçiyi açamadı | `threads.wasm` 56410 bayt. Faz 6, Faz 0 kararını bırakır |
| İstemci SQLite | Çalışır, yaklaşık +700 KB | 766986 bayt |
| Ham TCP, Postgres, MySQL tarayıcıda | Köprü ister | Sayfa. Bu turda sunucuya bağlanılmadı |
| `serve_ws`, HTTP/2, `serve_multicore` wasm sunucusunda | Yok | Sayfanın `nox.http.serve` sınırları |
| İç içe `async def` | Derlenmez | `noxc check` |
| `def main` | Ayrılmış ad | `DuplicateDefinition`, `docs/NOX_LIMITATIONS.md` 2.9 |
| `protocol` adı | Tanımlayıcı değil | `def protocol` sözdizimi hatası. 2.13 |
| `len` ile `byte_at` aynı indeks | Değil. `len` kod noktası, `byte_at` bayt | `ş ş` karışık yürüyüş `ş \s` yazar. 2.10 |
| `Connection.execute` birden fazla SQL | İlk cümle çalışır | İki `CREATE` içeren dosyada `ui_notes` kurulmadı. 2.12 |
| Gizli anahtarın istemciye girmemesi | Derleme yasağı var | `--deny-capability network` |

v1 köprüsü vanilla JavaScript olarak kalır. Nox ağacı ve durumu üretir. JS, DOM’u ve aynı köken `fetch`i yapar. Threads ve TCP köprüsü v1 şartı değildir.
