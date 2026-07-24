# Nox Web örnek uygulaması

Demo kullanıcı: `alice` / `secret123`

```sh
# nox-lib kökünde önce bağımlılığı getirin (veya bu dizinden):
noxc fetch
noxc run main.nox
```

```sh
curl -s -X POST http://127.0.0.1:8080/login \
  -H 'Content-Type: application/json' \
  -d '{"username":"alice","password":"secret123"}'

curl -s http://127.0.0.1:8080/me \
  -H "Authorization: Bearer <token>"
```
