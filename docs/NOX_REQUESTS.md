# Nox roadmap requests from Nyx (open language/runtime gaps)
#
# Bu belge Nyx'in Nox'a dayattığı açık istekleri listeler.
# Nyx 0.9.0 workaround'ları ile çalışır; kalıcı çözüm Nox tarafındadır.

## Öncelikli

### N1 — Task / fiber-local context
- **Sorun:** Request state (`nyx.runtime`) worker-local modül-global.
  Nested async/fiber veya aynı worker içinde eşzamanlı isteklerde karışma riski.
- **İstek:** Python `contextvars` benzeri task-local storage; veya `Context` üzerinde
  framework'ün doldurabileceği alanlar (P3).
- **Nyx bugün:** `nyx.runtime` + `dispatch` begin/end; fiber yokken yeterli.

### N5 — Exception diagnostics
- **Sorun:** Dev error page type/message/request_id gösterir; stack/source span yok.
- **İstek:** Yakalanan exception için dosya:satır + kısa stack API'si.
- **Nyx bugün:** `server_error_detail_for` development HTML/JSON.

### N2 — Sunucu TLS + WebSocket Upgrade
- **Sorun:** Inbound HTTPS ve server WS yok.
- **İstek:** `nox.http.serve_tls` + HTTP Upgrade → WebSocket server.
- **Nyx bugün:** Reverse-proxy TLS; cable = SSE/long-poll + SQLite store;
  `nyx.websocket` yalnızca istemci; `Channel` API Upgrade'e hazır.

### N4 — Ortak Database protokolü
- **Sorun:** `execute` dönüş tipi / `Row` tipi sürücüler arası protokole sığmıyor.
- **İstek:** Ortak `query`/`prepare` protokolü veya RETURNING helper stdlib'de.
- **Nyx bugün:** `dialect` + `application.db` | `application.pg` + `nyx.pg_model`
  + `migrate_postgres` / `postgres_insert_returning_id_bound`.

### N6 — Modül-global `str` ARC aliasing
- **Sorun:** Getter'dan dönen `str` ile body/session paylaşımı UAF (SIGSEGV).
- **İstek:** retain-on-return veya kopya semantiği.
- **Nyx bugün:** string getter/setter'larda `+ ""` kopyası.

## İzleme
Her Nox sürümünde: `noxc upgrade` → full `tests/*.nox` → blog dogfood.
