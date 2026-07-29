# Nox sınırları ve Nyx’te gözlemlenen çökme / codegen hataları

Bu belge, [nyx](https://github.com/mburakmmm/nyx) geliştirirken **Nox dili / stdlib / codegen** kısıtlarını listeler.

**Kaynak:** nyx 0.3.x → 0.9.0  
**Nox sürümü (güncel doğrulama):** noxc **1.18.1** (2026-07-29)

Nyx **0.9.0** için minimum Nox: **≥ 1.18.1** (P1c + C2 codegen düzeltmeleri).

Runnable repro (tarihsel): `docs/repro-p1c-c2/` · `docs/NOX_REPRO_P1C_C2.md`

---

## 1. Özet tablo (2026-07-29, noxc 1.18.1)

| # | Konu | Durum | Nox | Nyx etkisi |
|---|---|---|---|---|
| C1 | `list[dict[K,V]]` | **Düzeltildi** | 1.8.2 | `render_each` |
| C2 | Callback `(T) -> dict` inline kardeş çağrı (paket) | **Düzeltildi** | **1.18.1** | `render_each_map` |
| C3 | `() -> None` / fn list | **Çalışıyor** | ≤1.8.2 | JobRegistry OK |
| C4 | Metod `T \| None` | **Düzeltildi** | ≤1.8.2 | `Record.get_opt` |
| C5 | `"\r"` / `"\n"` escape | **Düzeltildi** | 1.8.2 | mailer CRLF |
| P1 | Modül global — uygulama scripti | **Açıldı** | **1.10.0** | boot-once `Application` |
| P1c | Paket-modül global + nested closure | **Düzeltildi** | **1.18.1** | `nyx.runtime` modul-global |
| P3 | `Context` genişletme | Açık | — | `nyx.runtime` (worker-local) |
| P4 | Dict `keys()` | OK | — | with_header |
| P5 | Çıplak `except:` | **Açıldı** | **1.9.0** | job/txn/dispatch |
| P6 | Alias = paket `name` | **Düzeltildi** | **1.12.1** | tüketici alias serbest |
| P7 | postgres / mysql | **Var** | **1.11.0** | `open_postgres` / `open_mysql` |
| P7b | PG/MySQL prepare/bind | **Açıldı** | **1.13.0** | ham sürücüler; ORM SQLite (tip birliği) |
| P8 | Process’ler arası shared state | **Kısmi** | **1.15+ `nox.sharedmem`** | worker globals paylaşılmaz |
| P9 | TLS / WebSocket | **İstemci var** | **1.14.0** | `nyx.tls` / `nyx.websocket`; sunucu Upgrade yok |

---

## 2. Nyx 0.9.0

1. Min Nox **≥ 1.18.1**; CI pin **1.18.1**  
2. `nyx.runtime` → worker-local **modül-global** (`NYX_RT_*` kaldırıldı)  
3. `view.render_each_map` / `render_each_map_unescaped`  
4. (0.8 birikimi) prepare/bind docs, `nyx.tls` / `nyx.websocket`, alias gevşetme  

---

## 3. Hâlâ açık

- Sunucu TLS + sunucu WebSocket Upgrade  
- Task/fiber-local context (N1) + zengin exception stack (N5)  
- `Application.db` tek tip: SQLite; Postgres ORM ayrı (`nyx.pg_model`) — ortak protokol sınırlı  
- `dict[int, Record]` yok → preload list API  
- `on_shutdown` hook registry Application üzerinde codegen-kırılgan; teardown: `shutdown` + try/finally  

## 4. Nox 1.18.1 notu

P1c: `genNoxInitGlobals` terfi etmemiş üst-düzey `var_decl` paniği.  
C2: `genIndirectCallThroughClosurePtr` `dict_info` kopyalamıyordu.

## 5. Nyx runtime string kopyası

Modül-global `str` doğrudan `HttpResponse` body / `session.create` ile paylaşılınca ARC use-after-free (SIGSEGV) görüldü.  
`session_json()` ve diğer string getter’lar `+ ""` ile kopya döner; `load_session`/`set_session` da kopya yazar.
