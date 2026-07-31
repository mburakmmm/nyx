# Nox roadmap requests from Nyx
#
# Nyx 0.10+ batteries-included yolu 0.15'e kadar ilerler (sürüm 1.0 değil).
# Aşağıdakiler Nox tarafında kalıcı çözüm bekler; Nyx API'leri buna hazırlanır.

## Öncelikli (senin üzerinde çalıştığın)

### N1 — Task / fiber-local context
- Request state worker-local modül-global; eşzamanlı istek karışma riski.
- İstek: contextvars benzeri task-local.
- Bonus: `HttpRequest` peer/remote address (trusted proxy doğrulaması için).
- Nyx: `NYX_TRUST_X_FORWARDED_FOR` dürüst bayrak (peer yokken gerçek proxy IP doğrulanamaz); N1+peer gelince sıkılaştırılır.

### N5 — Exception diagnostics
- Dev page type/message/request_id; stack/source span yok.
- İstek: dosya:satır + kısa stack API.
- Nyx: `server_error_detail_for` — N5 gelince zenginleşir.

### N4 — Ortak query/Row protokolü
- `DbConnection` = `execute`+`close`; `query`/`Row` sürücüye özel.
- İstek: kovaryant `list[RowProtocol]` veya ortak Row.
- Nyx: dialect dispatcher (`model` / `pg_model`); protokol gelince tek yüzey.

### dict[int, T]
- Preload O(1) id→Record map.
- Nyx: str-key map veya `dict[int, Record]` Nox destekliyorsa.

## Kapandı (Nox 1.21–1.22)

| İstek | Nox |
|---|---|
| Sunucu TLS + WS Upgrade | 1.22.0 |
| sqlite execute int / DbConnection.execute | 1.21.3 |
| Nested fn-typed capture | 1.21.1 |
| on_shutdown + nested Router | 1.18.1+ |

## İzleme
`noxc upgrade` → full `tests/*.nox` → blog dogfood → PG CI smoke.
