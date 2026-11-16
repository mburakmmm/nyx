# Nyx UI planı

Kaynak: `NYX_UI_AGENTS.md`. Faz sırası ve kapılar o dosyadadır. Bu liste işin kendisidir. Bitince kutusu işaretlenir.

**Karar, 16 Kasım 2026.** Tarayıcı hedefi `wasm32-freestanding`. `wasi-threads` v1 hedefi değildir. `fetch` ve gerçek fiber için `--asyncify`. Threads Faz 6’dadır ve şart değildir. Kanıt: `docs/ui/00-feasibility.md`.

Mevcut Nyx route, şablon, auth, ORM ve deploy bu iş yüzünden değişmez. UI, import edilmeyen bir katmandır.

## Faz 0 — Derleyici ve tarayıcı uygunluğu

Kapı: yeniden üretilebilir derleme, tarayıcıda gidiş-dönüş, string belleği kopyalanmış, açıklanmamış tuzak yok. Threads düşerse tek iş parçacığıyla devam.

- [x] Nyx `89b0c2d` ve Nox `v2.1.186` (`5cf4f63`) kaydı, komutlar ve sınırlar: `docs/ui/00-feasibility.md`
- [x] Threads Node’da hello geçti. Tarayıcı threads ve `COOP`/`COEP` Faz 6’ya bırakıldı. Baseline tek iş parçacığı
- [x] `examples/ui-spike/`: Nox `input` + `print`, vanilla JS host, ABI sürüm 1
- [x] Aynı host Node’da `echo:ada` ve `echo:merhaba dünya` yazar
- [x] Aynı sayfa tarayıcıda `tarayıcı` satırını `kod 0` / `echo:tarayıcı` olarak DOM’a basar
- [x] ABI ve bellek sahipliği bu dosyada kilitlenir

### ABI sürüm 1

Host `nox_host` importlarını verir. Modül `nox_host_abi_version` dışa aktarır. Değer `1` değilse host yüklemeyi reddeder.

| Import | Sözleşme |
|---|---|
| `write(fd, ptr, len) -> i32` | fd 1 stdout, fd 2 stderr. Dönüş yazılan bayt veya `-1` |
| `read(fd, ptr, len) -> i32` | fd 0. `0` dosya sonu, `-1` hata |
| `clock_ms(kind) -> i64` | 0 duvar saati, 1 monoton. BigInt |
| `random_fill(ptr, len)` | host doldurur |
| `sleep_ms(ms)` | senkron. UI olay döngüsüne dönmez |
| `exit(code)` | dönmez. Host istisna ile `_start`tan çıkar |

Sahiplik: `write` içindeki `Uint8Array` görünümü çağrı bitince geçersizdir. Host baytları o çağrıda kopyalar. `read` yalnız çağrı süresince verilen dilime yazar. Bellek büyüyünce eski görünüm kullanılmaz. Kullanıcı Nox fonksiyonu dışa aktarılmaz. Giriş `_start`.

Gidiş-dönüş: JS satırı `read` ile verir. Nox `input()` satırı okur, `print` ile `write` eder. JS metni kopyalayıp DOM’a yazar.

### Faz 1 dosyaları (kod Faz 0 kapısından sonra)

| Dosya | İş |
|---|---|
| `ui.nox` | `nyx.ui` yüzü: metin, başlık, düğme, kutu |
| `ui_tree.nox` | düğüm, kararlı kardeş kimliği, metin kaçışı |
| `examples/ui-spike/mount.js` | yama listesini DOM’a basar. `innerHTML` yok |
| `ui/styles/base.css` | belirteç, odak, azaltılmış hareket |
| `examples/ui/hello.nox` | yazar HTML/CSS/JS yazmadan sayfa |
| `examples/ui/index.html` | çalışma kabuğu. Sayfa metnini yüklemez, `hello.wasm` çıktısını basar |
| `examples/ui/hello.wasm` | `hello.nox` derlemesi, `wasm32-freestanding` |
| `tests/ui/tree_test.nox` | kimlik, kaçış, deterministik ağaç |

## Faz 1 — Köprü ve statik çizim

Kapı: gerçek Nox sayfası HTML, CSS ve JS yazılmadan açılır. Metin kaçar. Kimlik deterministiktir. Yeniden yükleme çalışır. Köprü hatası geliştirme kipinde görünür. Kapı geçti.

- [x] Ağaç şeması: `type`, kardeş içinde tek `key`, doğrulanmış prop, çocuk, olay kimliği
- [x] İlk çizim ile sonraki çizim aynı şema
- [x] JS `textContent` ile basar
- [x] Stil dosyası hazır temadır
- [x] Mevcut Nyx testleri durur

Doğrulama, 16 Kasım 2026. `tests/ui/tree_test.nox` aynı ağacı iki kez aynı tele çevirir, yinelenen kardeş anahtarını ve 0 düzeyli başlığı reddeder, boşluk ve ters bölü ve satır sonunu kaçırır. Tarayıcıda `examples/ui/index.html` başlığı `h1` Merhaba, düğmeyi `button` Tamam, `root/card/raw` metnini `<script>alert(1)</script>` olarak basar. O düğümün `innerHTML` değeri `&lt;script&gt;…` olur. Sayfada ek bir script etiketi oluşmaz. Yeniden yüklemede kimlikler `root|root/title|root/lead|root/save|root/card|root/card/raw` kalır. `?hata=1` kırmızı uyarıya `nyx ui protokolü uyumsuz` yazar ve `#app` boş kalır. `tests/*.nox` yerel turu geçti. Postgres ve MySQL testleri `DATABASE_URL` olmadığı için atlandı. CI globu `tests/*.nox` olduğu için `tests/ui/` henüz iş akışında değil.

## Faz 2 — Olay ve durum

Kapı: sayaç, kontrollü girdi, koşullu düğüm, anahtarlı sıra. 1000 tak-sök sonra dinleyici kalmaz. Tıklama sayfayı yenilemez. Odak ve imleç yerinde kalır. Kapı geçti.

- [x] Olay kimliği. Kapanış köprüye geçmez
- [x] Durum sekme örneğindedir. Modül geneli tekil değildir
- [x] Bileşen yeniden çizimi ve anahtarlı diff
- [x] Sökümde dinleyici ve iş iptali
- [x] Sonsuz yeniden çizim sınırı

| Dosya | İş |
|---|---|
| `ui_session.nox` | olay satırını bekler. Adres `http://nyx-ui.invalid/event` |
| `examples/ui/counter.nox` | sayaç, girdi, koşullu düğüm, anahtarlı sıra |
| `examples/ui/counter.html` | iki oturum kabuğu |
| `examples/ui/counter.wasm` | `--asyncify` derlemesi |
| `examples/ui-spike/session.js` | oturum, temsilci dinleyici, fetch askısı |
| `examples/ui-spike/phase2.mjs` | iki örneğin olay turu |
| `tests/ui/event_test.nox` | kaçış, boş olay, çizim sınırı |

Bekleme yeni bir derleyici askısı değildir. Program `nox.http` ile `--asyncify` üzerinde durur. Host yalnız `http://nyx-ui.invalid/event` adresini tamamlar. Başka adres hata ile biter. Ağ isteği yoktur.

Doğrulama, 16 Kasım 2026. `tests/ui/event_test.nox` ve `node examples/ui-spike/phase2.mjs` geçti. `ş ş` kaçışı `ş\sş` olup geri çözülür. Art arda 9. `frame` `yeniden çizim sınırı` verir. Tarayıcıda Oturum A `Artır` ile `Sayaç 1` olur, Oturum B `Sayaç 0` kalır. Adres değişmez. Girdi `aQbX` ve imleç 2. konumda kalır. `Gizle` `görünür` düğümünü yalnız A'dan siler. `Sırala` `root/row/a` öğesini taşır, aynı DOM düğümü `keep-a` işaretini korur. B'nin sırası `a` sonra `b` kalır. 1000 kur-sök sonrası `#leak-host` dinleyicisi yoktur. Canlı `#app` yalnız `click` ve `input` taşır. Askıdaki sayaç `dispose` ile boşalır. Faz 1 sayfası aynı yama yoluyla `<script>alert(1)</script>` metnini korur. IME oturumu koşulmadı. `isComposing` olayları yoksayılır.

## Faz 3 — Async ve Nyx

Kapı: oturumlu CRUD. Yetki sunucuda. Yarış iptal testi. WASM içinde gizli anahtar yok. Kapı geçti.

- [x] `--asyncify` ve host `fetch`. İzin yalnız aynı köken
- [x] Kayıtlı RPC. İstemci fonksiyon adı seçemez
- [x] CSRF, bugünkü `nyx.csrf` yolu
- [x] Yükleniyor, hata, iptal, nesil kimliği
- [x] İstemci grafiğinde `nyx.db` ve `nyx.auth` yasak

| Dosya | İş |
|---|---|
| `ui_net.nox` | aynı köken oturum ve RPC. `nyx.db` yok |
| `ui_rpc.nox` | kayıtlı işlemler, sahip kontrolü, CSRF |
| `examples/ui/notes.nox` | giriş, liste, ekle, sil, çıkış |
| `examples/ui/notes.html` | kabuk. Yazar HTML yazmaz |
| `examples/ui/notes.wasm` | `--asyncify` derlemesi |
| `examples/ui/server.nox` | geliştirme sunucusu, `8766` |
| `examples/ui/db/migrate/` | `ui_users` ve `ui_notes`, dosya başına bir SQL |
| `examples/ui-spike/session.js` | aynı köken fetch, çerez, iptal |
| `examples/ui-spike/phase3.mjs` | giriş, not, yarış, wasm taraması |
| `tests/ui/rpc_test.nox` | CSRF, yetki, yabancı işlem |

İstemci yalnız `http://nyx-ui.invalid/...` ister. Host bunu sayfa kökenine yazar. Başka köken reddedilir. Olay adresi ağ değildir. Kayıtlı adlar `session.login`, `session.logout`, `notes.list`, `notes.create`, `notes.delete`. `nyx.db.query` ve `nyx.auth.login` 404 `kayitli degil` döner. Çıkıştan sonra istemci yeni oturum ister. Boş oturumun CSRF jetonu istek kimliğine bağlıdır ve sonraki istekte geçmez.

Doğrulama, 16 Kasım 2026. `tests/ui/tree_test.nox`, `tests/ui/event_test.nox` ve `tests/ui/rpc_test.nox` geçti. `node examples/ui-spike/phase2.mjs` ve `phase3.mjs` geçti. RPC turu CSRF'siz girişte 403, yanlış parolada 401, `ada` girişinde 200 ve yeni çerez görür. Başka kullanıcının notunu silmek 403 `yetkisiz` bırakır ve not durur. Çıkıştan sonra taze oturumla yeniden giriş 200 döner. `phase3.mjs` `notes.wasm` içinde `nyx.db`, `nyx.auth`, sunucu sırrı ve parola metnini arar ve bulamaz. Geciken `notes.list` gövdesi `STALE-NOTE` sayfaya yazılmaz. Durum `iptal` olur ve çıkış formu gelir. Tarayıcıda `http://127.0.0.1:8766/ui/notes.html` ada ile açılır, notlar girişten hemen sonra listelenir. Yeni not `<script>alert(2)</script>` metin olarak basılır. `innerHTML` `&lt;script&gt;` olur. Sayfada tek script etiketi kabuğun kendisidir. Silinen not yeniden yüklemede gelmez. Çıkıştan sonra yeniden giriş aynı listeyi açar. `hata: csrf` çıkış yenilemesinden sonra görünmez. Gömülü tarayıcı düğmeye DOM `click` ulaştırmaz. Odaktaki düğmede güvenilmeyen Enter, tıklama olayını gönderir. Güvenilen Enter tarayıcının kendi tıklamasına kalır. Çevrimdışı yeniden bağlanma bu turda koşulmadı. CI globu `tests/*.nox` olduğu için `tests/ui/` henüz iş akışında değil.

## Faz 4 — Yerleşim, form, gezinme

Kapı: yalnız klavye, etiket, mobil genişlik, geri ve ileri, form hatası. Kapı geçti.

- [x] Satır, sütun, ızgara, kenar çubuğu, sekme, modal
- [x] Girdi, sayı, seçim, onay ve doğrulama
- [x] İstemci geçmişi
- [x] WCAG 2.2 AA hedefi, yerleşik bileşenler

| Dosya | İş |
|---|---|
| `ui.nox` | satır, sütun, ızgara, kenar, sekme, pencere, sayı, seçim, onay, etiket, hata, `navigate` |
| `ui_session.nox` | `nav` olayı |
| `examples/ui-spike/mount.js` | yeni düğümler, etiket, `aria-invalid`, sekme ve pencere |
| `examples/ui-spike/session.js` | geçmiş, ok tuşu, Escape, seçim ve onay |
| `ui/styles/base.css` | yerleşim, koyu tema, dar ekranda tek sütun |
| `examples/ui/desk.nox` | masa örneği |
| `examples/ui/desk.html` | kabuk |
| `examples/ui/desk.wasm` | `--asyncify` derlemesi |
| `examples/ui-spike/phase4.mjs` | form hatası, sekme, geçmiş, değerin kalması |
| `tests/ui/form_test.nox` | tel, sütun sınırı, yol, `nav` |

Geçmiş `?r=` sorgu parametresidir. Sayfa kabuğu değişmez. `nav` olayı yolu yazar ve yeni kayıt itmez. Tıklama `navigate` ile bir kayıt iter. Boş başlık, sayı olmayan adet ve işaretsiz onay kaydı açmaz. Hata metni alanın `aria-describedby` değeridir.

Doğrulama, 16 Kasım 2026. `tests/ui/form_test.nox`, `tree_test.nox` ve `event_test.nox` geçti. `node examples/ui-spike/phase4.mjs` ve `phase2.mjs` geçti. Boş kayıt `başlık gerekli`, `sayı gerekli` ve `onay gerekli` yazar. Pencere açılmaz. Başlık `Ada`, adet `3`, kutu `archive` ve onay `1` olunca pencere açılır. `nav home` yeni `H push` yazmaz. `nav form` başlığı, adedi ve onayı yerinde bulur. Tarayıcıda `http://127.0.0.1:8765/examples/ui/desk.html` kenar çubuğunda `navigation`, gövdede `main` vardır. Form düğmesi Enter ile `?r=form` açar. Başlık etiketi metin kutusuna, Adet sayı kutusuna, Kutu seçime bağlıdır. Ok tuşu Seçim sekmesini seçer, diğer paneli gizler. Boş kayıt üç `role=alert` ve `aria-invalid` bırakır. Dolu kayıt pencereyi açar, odak Kapat düğmesindedir, `aria-labelledby` başlığı gösterir. Escape pencereyi kapatır ve odağı Kaydet'e verir. Geri Ev'e döner, adres sorgusu boşalır. İleri formu `Ada`, `3` ve işaretli onayla geri getirir. 390 piksel genişlikte kenar çubuğu ve ızgara tek sütundur. `?r=form` ile açılış formu doğrudan gösterir.

## Faz 5 — Veri arayüzü

Kapı: gerçek Nyx arkasında pano. Paket boyu, açılış ve tıklama süreleri ölçülür. Ölçülmeyen hız yazılmaz. Kapı geçti.

Grafik kararı, kod ve bağımlılıktan önce: grafik paketi yok. Çubuk, 0 ile 100 arasındaki düzeyin genişliğidir. Düzey, notun karakter sayısıdır ve 100’de durur. İlerleme, gerçek not sayısının 20 kapasitesine oranıdır.

- [x] Tablo, sıralama, sayfalama
- [x] Bildirim ve ilerleme
- [x] Grafik için ayrı karar. Bağımlılık eklenmeden önce yazılır
- [x] Derleme komutu belgedeki `noxc` ile aynıdır

| Dosya | İş |
|---|---|
| `ui.nox` | tablo, satır, başlık, hücre, ilerleme, durum, çubuk |
| `ui_rpc.nox` | `board.page`. Sıralama dört hazır cümledir. Sayfa ve boyut bağlı değişkendir |
| `ui_net.nox` | `total`, `page` ve `size` sayıları |
| `examples/ui/board.nox` | pano |
| `examples/ui/board.html` | kabuk. Köken sayfanın kendisidir |
| `examples/ui/board.wasm` | belgedeki `noxc build --target wasm32-freestanding` ve bu sayfanın gerektirdiği `--asyncify` |
| `examples/ui-spike/mount.js` | tablo rolleri, `aria-sort`, ilerleme, çubuk |
| `ui/styles/base.css` | tablo ızgarası, ilerleme ve çubuk |
| `examples/ui-spike/phase5.mjs` | gerçek sunucu, boyut ve süre |
| `tests/ui/board_test.nox` | sayfa, sıra, yetki, tel |

Derleme komutu `noxc build --target wasm32-freestanding --asyncify examples/ui/board.nox -o examples/ui/board.wasm`. Kaynak haritası dosyası çıkmadı. Sıcak yükleme yok. Aynı komut art arda ölçüldü.

Doğrulama, 16 Kasım 2026, bu makinede Node v26.13.0. `tests/ui/board_test.nox` ve `form_test.nox` geçti. `phase4.mjs` ve `phase5.mjs` geçti. `board.page` gövdeye göre artan sırada ilk sayfada `alfa` ve `mira`, ikinci sayfada `zeta` döner. `id;drop` 400 `sayfa gecersiz` olur ve cümleye girmez. `bor` toplam 0 görür. `board.wasm` 284815 bayttır. `phase5.mjs` açılışı 14.9 ms, giriş turunu 20.0 ms, sıralama tıklamasının ilk çerçevesini 0.1 ms ve sıralı sayfayı 1.1 ms ölçtü. İlk derleme 1.34 s, hemen sonraki 0.59 s sürdü. Wasm içinde `nyx.db`, `nyx.auth`, sunucu sırrı ve parola metni yoktur. Tarayıcıda `http://127.0.0.1:8766/ui/board.html` ada ile açılır. Durum `sayfa 1, 3 not` olur. Not başlığı `aria-sort=ascending` yazar. Sonraki sayfa `sayfa 2, 3 not` ve tek satırdır. `kısa` eklenince durum `sayfa 1, 4 not` ve ilerleme yazısı `4 / 20` olur. Üç notta `aria-valuenow` 15 ölçüldü. Çubuk genişlikleri 24 px ve 151 px’tir. Boş not `hata: not gecersiz` bırakır ve tablo durur. `<script>alert(1)</script>` hücresinin `innerHTML` değeri `&lt;script&gt;` olur. 390 pikselde satır `64px 254px` kalır.

## Faz 6 — Worker ve threads

Kapı: ağır iş arayüzü dondurmaz. `COOP`/`COEP` kapalı tarayıcı tek iş parçacığında kalır. Kilitlenme yok. Kapı geçti.

Threads kararı: wasm iş parçacığı şart değildir. `COOP` ve `COEP` yalnız `/ui/threads.html` üzerindedir. O sayfa düşünce Faz 0 kararı durur. Ürün yolu, DOM’suz bir JavaScript işçisinde tek wasm örneğidir.

- [x] Threads tarayıcıda ayrıca denenir. Düşerse Faz 0 kararı durur
- [x] DOM ana iş parçacığında kalır
- [x] Worker kapanınca kaynak bırakılır

| Dosya | İş |
|---|---|
| `examples/ui-spike/ui-worker.js` | wasm örneği. DOM yok |
| `examples/ui-spike/session.js` | çerçeve ve olay iletisi. İşçi açılmazsa sayfa kendi iş parçacığında kalır |
| `examples/ui/load.nox` | uzun hesap |
| `examples/ui/load.html` | ana iş parçacığındaki saat. `?yerel=1` aynı hesabı yerelde çalıştırır |
| `examples/ui/load.wasm` | `--asyncify` derlemesi, 156241 bayt |
| `examples/ui/threads.nox` | `print("threads-ok")` |
| `examples/ui/threads.wasm` | `noxc build --target wasm32-freestanding-threads`, 56410 bayt |
| `examples/ui/threads.html` | yalnız bu belgede `COOP`/`COEP` |
| `examples/ui-spike/thread-host.js` | paylaşımlı bellek denemesi. Sayfa `Atomics.wait` yapmaz |
| `examples/ui-spike/phase6.mjs` | yerel ve işçi turu, kapanış, başlıklar |
| `ui_rpc.nox` | yük ve threads dosyaları. Yalıtım başlığı yalnız threads belgesinde |

Doğrulama, 16 Kasım 2026, bu makinede Node v26.13.0. `noxc run --target wasm32-freestanding-threads examples/ui/threads.nox` `threads-ok` yazdı. `phase6.mjs` geçti. Aynı sonuçta yerel tur 107.6 ms ve 1 zamanlayıcı tıkı, işçi turu 75.8 ms ve 14 tık gördü. Hesap sırasında işçi kapatılınca ana döngü sürdürüldü. `/ui/load.html` yanıtında `COOP` yok. `/ui/threads.html` `same-origin` ve `require-corp` taşır. Tarayıcıda işçi sayfasının çizim aralığı en çok 17.7 ms, `?yerel=1` sayfasında 100 ms oldu. İki mod da `1367360156732027587` yazdı. Saat wasm’in dışında kaldı. Kapat `kapandı, düğüm 0` bıraktı ve saat sürdü. Yalıtık threads sayfası `crossOriginIsolated` oldu, işçi `yüklenemedi @ işçi:0` ile düştü ve metin `Faz 0 kararı durur: tek iş parçacığı` oldu. Sayaç iki oturumu ayrı kaldı.

## Faz 7 — Yayın

Kapı: mevcut Nyx testleri yeşil. Üretim paketi geliştirme bağımlılığı taşımaz. Protokol sürümü paket sürümünden ayrıdır. Uyumsuz istemci anlaşılır hata verir. Kapı geçti.

Tel `nyx.ui.wire_version()` ile `nyx-ui 1` dir. Paket etiketi `v0.30.13`. Kayıt, CI yeşil olduktan sonra yapılır.

- [x] Güvenlik notu, örnek deploy, CI’de WASM derlemesi ve tarayıcı
- [x] Sürüm notu. Kayıt yayını beş iş yeşilken ve ayrıca istenince

| Dosya | İş |
|---|---|
| `ui.nox` | `wire_version`. `protocol` adı derlenmez |
| `docs/ui/SECURITY.md` | istemci sınırı, CSRF, köken, başlıklar |
| `docs/ui/DEPLOY.md` | vekil örneği ve gerçek `noxc` komutları |
| `docs/ui/API.md` | duran yüzey |
| `docs/ui/TROUBLESHOOTING.md` | kilit, tel, göç, threads |
| `docs/ui/RELEASE.md` | sürüm notu. Yayın komutu çalıştırılmaz |
| `examples/ui-spike/ci-browser.mjs` | başlıksız Chromium. Merhaba ve uyumsuz tel |
| `.github/workflows/ci.yml` | `ui` işi. Beş regresyon işi aynı kaldı |

Doğrulama, 16 Kasım 2026. `tests/ui/*.nox` geçti. `hello.wasm` `noxc build --target wasm32-freestanding examples/ui/hello.nox -o examples/ui/hello.wasm` ile yeniden kuruldu, 64577 bayt. İçinde `nyx.db`, `nyx.auth`, sunucu sırrı ve `ada-pass-9` yok. `NYX_PLAYWRIGHT` ile `ci-browser.mjs` `ci-browser ok` yazdı. Tarayıcıda başlık `Merhaba`, ham metin `<script>alert(1)</script>`, `innerHTML` `&lt;script&gt;` ve tek script etiketi görüldü. `?hata=1` `nyx ui protokolü uyumsuz` yazdı ve `#app` boş kaldı. Üretim paketine npm bağımlılığı eklenmedi. Playwright yalnız CI adımında ve yerel denemede geçici dizine kuruldu. GitHub Actions bu oturumda çalıştırılmadı. Kayıt komutu çalıştırılmadı.

## Bilinçli olarak yok

Aura, React, Vue, Svelte, JSX, zorunlu threads, istemciye veritabanı, sunucu WebSocket’i, ham HTML varsayılanı, sürükle-bırak editör, çevrimdışı sözü.
