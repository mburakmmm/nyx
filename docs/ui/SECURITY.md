# Nyx UI güvenlik notu

Paket sürümü `VERSION` dosyasındadır. Tel sürümü `nyx.ui.wire_version()` değeridir: `nyx-ui 1`. İkisi aynı sayı değildir.

## Sınır

İstemci wasm’i güvenilmezdir. `nyx.db` ve `nyx.auth` istemci grafiğinde yoktur. Oturum sırrı ve örnek parolalar yalnız sunucu modülündedir. Derlenen sayfa wasm’inde bu metinler aranır.

Yazarın ürettiği metin DOM’a `textContent` ile basılır. `innerHTML` kullanılmaz. `<script>` bir düğümün metnidir, sayfaya etiket olarak girmez.

## Sunucu

`POST /ui/rpc` işlem adını bir listeden seçer. Liste dışı ad, `nyx.db.query` ve `nyx.auth.login` dahil, fonksiyon olarak çağrılmaz ve `404` `kayitli degil` döner. Notlar oturumdaki sahip ile süzülür. Başka kullanıcının kaydı `403` `yetkisiz` olur ve silinmez.

`X-CSRF-Token` yoksa yanıt `403` olur. Jeton oturuma bağlıdır. Çıkıştan sonra istemci yeni `GET /ui/session` ister. Boş oturumun jetonu bir sonraki istekte geçmez.

İstemci yalnız `http://nyx-ui.invalid/...` adresini ister. Host bunu sayfanın kendi kökenine çevirir. Başka köken reddedilir.

## Başlıklar

`COOP` ve `COEP` varsayılan sayfalarda yoktur. Yalnız `/ui/threads.html` bu iki başlığı ve `Cross-Origin-Resource-Policy: same-origin` değerini alır. Threads düşünce arayüz tek wasm iş parçacığında kalır. İşçi, DOM tutmaz.

Örnek sunucudaki `nyx-ui-notes-secret-key-32b!!` geliştirme anahtarıdır. Üretimde `NYX_SECRET_KEY` bunun yerini alır. `examples/ui/db/*.sqlite` depoya girmez.
