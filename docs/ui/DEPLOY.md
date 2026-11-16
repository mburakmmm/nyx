# Nyx UI örneğini vekilin arkasına almak

Pin `noxc 2.1.186`. Bayrak yoldan önce gelir. Bu sayfanın derlemesi:

```text
noxc build --target wasm32-freestanding examples/ui/hello.nox -o examples/ui/hello.wasm
noxc build --target wasm32-freestanding --asyncify examples/ui/counter.nox -o examples/ui/counter.wasm
```

`--asyncify`, `nox.http` ile olay bekleyen sayfalar içindir. `hello.nox` onu kullanmaz. `wasm-opt` bu ikinci komutta gerekir.

Örnek süreç, depo kökünden:

```text
noxc run examples/ui/server.nox
```

Bu süreç `127.0.0.1:8766` dinler ve geliştirme sırrını taşır. Üretimde süreç `NYX_ENV=production`, en az 32 karakter `NYX_SECRET_KEY`, `NYX_SECURE_COOKIES=1` ile açılır. Ayrıntı `docs/DEPLOY.md` içindedir.

Vekil TLS’i kendisi bitirir ve Nyx’e düz HTTP verir. `Host` başlığı geçer. `X-Forwarded-For` ancak `NYX_TRUST_X_FORWARDED_FOR=1` iken okunur. Dolu `NYX_TRUSTED_PROXIES` de bu güveni açar. Güvenilmeyen bir istemci bu başlığı kendisi yazabiliyorsa bayrak kapalı kalır.

```nginx
server {
    listen 443 ssl;
    server_name ui.example.com;
    location / {
        proxy_pass http://127.0.0.1:8766;
        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto https;
    }
}
```

Vekil `Cross-Origin-Opener-Policy` eklemez. Threads sayfasının kendi yanıtı bu başlığı taşır. Vekil onu silmez. Diğer sayfalar tek iş parçacığında kalır.

Statik Merhaba sayfası Nyx süreci olmadan da açılır. Depo kökünden `python3 -m http.server 8765` ve `http://127.0.0.1:8765/examples/ui/index.html`. Bu yol oturum ve CSRF vermez. Pano ve notlar `8766` üzerindeki Nyx sürecindedir.

Geri alma: önceki paket `v0.30.11` etiketindedir ve UI modüllerini taşımaz. `v0.30.13` teli `nyx-ui 1` dir. Eski bir kabuk bu teli tanımazsa `nyx ui protokolü uyumsuz` yazar ve `#app` boş kalır.
