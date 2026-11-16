# Nyx UI sürüm notu

Paket sürümü `0.30.12`. Etiket `v0.30.12`. Tel sürümü paket sürümünden ayrıdır.

Tel sürümü `nyx-ui 1` dir. Paket sürümünden ayrıdır. Uyumsuz kabuk `nyx ui protokolü uyumsuz` yazar.

## Bu ağaçta

Merhaba, sayaç, form, oturumlu notlar, pano ve işçide hesap vardır. Grafik paketi yoktur. Threads tarayıcıda düştü ve şart değildir. `COOP`/`COEP` yalnız threads belgesindedir.

## Durum

| Konu | Durum |
|---|---|
| Tel `nyx-ui 1` | `v0.30.12` |
| Merhaba, sayaç, form, not, pano | `v0.30.12` |
| İşçi ve tek iş parçacığı yedeği | `v0.30.12` |
| Wasm threads şartı | yok |
| Sıcak yükleme, kaynak haritası | yok |
| Kayıt yayını | altı iş yeşil olunca |

## Yayın kapısı

Mevcut beş iş `test`, `pg-smoke`, `mysql-smoke`, `test-macos`, `test-windows` dir. UI işi `ui` ayrıca wasm derler ve tarayıcı açar. Kayıt yayını, altı iş yeşilken yapılır. Ref `v0.30.12` dir. Dal adı `main` değildir.

Komut, istenirse ve işler yeşilse, dal `master` olduğu için ref etikettir:

```text
noxc publish github.com/mburakmmm/nyx --ref <etiket> --description "Batteries-included web framework for Nox: HTTP, jobs, auth, and Postgres, MySQL, and SQLite." --tags web,framework,http,jobs --source nox
```

Komut, `v0.30.12` işleri yeşil olduktan sonra çalışır.
