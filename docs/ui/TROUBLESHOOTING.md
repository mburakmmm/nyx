# Nyx UI arıza notu

`import: module not found` ve `nyx.ui`: eski `nox.lock` `v0.30.11` ağacını çözer. O etikette bu modüller yoktur. `v0.30.13` onları taşır. CI, paketi çalışma kopyasına çevirir. `nox.lock` depoya yazılmaz.

`nyx ui protokolü uyumsuz`: ilk satır `nyx-ui 1` değildir. `#app` boş kalır. `?hata=1` bu yolu açar.

`wasm-opt` yok: `--asyncify` derlemesi durur. `hello.nox` bu bayrak olmadan derlenir.

`hata: csrf`: çıkıştan sonra eski jeton kullanıldı. İstemci yeni `GET /ui/session` alır.

`prepare failed: no such table`: bir göç dosyasında birden fazla SQL cümlesi vardır. `Connection.execute` ilk cümleyi çalıştırır. Her cümle ayrı dosyadır.

Yalıtık threads sayfası `yüklenemedi` yazar. Bu, Faz 0 kararını değiştirmez. `COOP` kapalı sayfa işçide tek wasm tutar.

Sayaç iki örnektir. Birindeki tıklama diğerinin sayısını değiştirmez.
