# Nox roadmap requests from Nyx (open language/runtime gaps)
#
# Nyx 0.10.0, Nox ≥ 1.22.0 ile sunucu TLS/WS ve shutdown hooks kullanır.
# Aşağıdakiler hâlâ Nox tarafında kalıcı çözüm bekler.

## Öncelikli

### N1 — Task / fiber-local context
- **Sorun:** Request state (`nyx.runtime`) worker-local modül-global.
  Nested async/fiber veya aynı worker içinde eşzamanlı isteklerde karışma riski.
- **İstek:** Python `contextvars` benzeri task-local storage; veya `Context` üzerinde
  framework’ün doldurabileceği alanlar (P3).
- **Nyx bugün:** `nyx.runtime` + `dispatch` begin/end; fiber yokken yeterli.

### N5 — Exception diagnostics
- **Sorun:** Dev error page type/message/request_id gösterir; stack/source span yok.
- **İstek:** Yakalanan exception için dosya:satır + kısa stack API’si.
- **Nyx bugün:** `server_error_detail_for` development HTML/JSON (dispatch’e bağlı).

### N4 — Ortak Database query/Row protokolü
- **Sorun:** `DbConnection` artık `execute`+`close` paylaşıyor (1.21.3); `query`/`prepare`
  dönüşündeki sürücüye özel `Row` kovaryant protokole sığmıyor.
- **İstek:** Kovaryant `list[RowProtocol]` veya ortak Row tipi.
- **Nyx bugün:** `application.db` (sqlite) + `nyx.app.pg(application)` (postgres) + `pg_model`.

### N6 — Modül-global `str` ARC aliasing
- **Sorun:** Getter’dan dönen `str` ile body/session paylaşımı UAF (SIGSEGV).
- **İstek:** retain-on-return veya kopya semantiği.
- **Nyx bugün:** string getter/setter’larda `+ ""` kopyası.

## Kapandı (Nox 1.21–1.22)

| İstek | Nox | Nyx |
|---|---|---|
| Sunucu TLS + WS Upgrade (eski N2) | **1.22.0** | `nyx.server`, `cable.ws_*`, template `serve_tls` |
| sqlite execute int / DbConnection.execute | **1.21.3** | dialect-aware boot |
| Nested fn-typed capture | **1.21.1** | `post_with_override` |
| on_shutdown + nested Router | **1.18.1+** (doğrulandı 1.21.1) | gerçek hook listesi |
| Decorator metadata | **1.21.0** | isteğe bağlı `nox.reflect` |

## İzleme
Her Nox sürümünde: `noxc upgrade` → full `tests/*.nox` → blog dogfood.
