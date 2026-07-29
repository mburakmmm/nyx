# Nyx → Rails seviyesi: boşluklar, bottlenecks, ilerleme planı

**Durum:** Nyx **0.9.0** · Nox **≥ 1.18.1**  
**Hedef:** Rails’in problem alanlarında production-grade ergonomi (klon değil, eşdeğer iş akışı)

Bu belge ChatGPT strateji notu + güncel kod taramasının birleşimidir.

---

## 1. Bugün neredeyiz (dürüst özet)

| Katman | Rails hissi | Durum |
|---|---|---|
| App lifecycle + middleware | Yüksek | Boot/dispatch + shutdown + health/ready |
| Security (CSRF/session/headers/password) | Yüksek | Çekirdek production-ready’ye yakın |
| Auth ürünü (Devise benzeri) | Düşük | Yalnızca middleware primitives |
| ORM / ActiveRecord | Orta | SQLite ORM + PG path (`pg_model`/migrate_postgres); typed generator |
| Views / templates | Orta | layout/partial/escape + SafeHtml + render_each_map |
| Jobs / mail / storage / cache | MVP | Çalışır; Redis/SMTP/S3 yok |
| Realtime | Düşük | SSE/long-poll; sunucu WS yok |
| CLI / generators | Yüksek | bin + scaffold auto-wire + typed model generator |
| Testing | Orta | HTTP helpers; fixture/system yok |
| Production scaling | Düşük | Tek instance / cookie session / process-local |

**Nyx’in asıl gücü:** Nox’u dikey zorlamak (P1c/C2/alias/prepare zaten kanıt).  
**Nyx’in asıl açığı:** Rails DX + multi-DB production path.

---

## 2. Bottleneck sınıfları

### A) Nox dil/runtime tavanı (Nyx tek başına çözemez)

| # | Bottleneck | Rails etkisi | Nox talebi |
|---|---|---|---|
| N1 | Task/fiber-local context yok | Request state karışma riski (async/fiber) | `contextvar` / task-local |
| N2 | Sunucu TLS + WS Upgrade yok | HTTPS/WS native serve yok | stdlib server TLS/WS |
| N3 | Template `{% for %}` / if yok | View DX düşük | template language |
| N4 | Ortak DB protokolü zayıf | Multi-driver AR | `Database` protocol + RETURNING helper |
| N5 | Exception diagnostics zayıf | Dev error page | stack/source spans |
| N6 | Modül-global `str` ARC aliasing | Runtime string kopyası zorunlu | retain-on-return semantics |
| N7 | Multicore shared Application yok | Horizontal scale | sharedmem veya dış store |

### B) Nyx tasarım/DX tavanı (biz çözebiliriz)

| # | Bottleneck | Etki |
|---|---|---|
| Y1 | Scaffold → manuel route paste | “Rails new” hissi kırılır |
| Y2 | Model = `table: str` + `Record` | Tip/ergonomi yok |
| Y3 | ORM yalnızca SQLite | Production PG beklentisi karşılanmaz |
| Y4 | `*_unescaped` string API | XSS DX tuzağı |
| Y5 | Shutdown / hook yok | Resource leak, graceful deploy zor |
| Y6 | Dev=prod aynı 500 sayfası | Debug yavaş |
| Y7 | Jobs/cable/cache process-local | Multicore/çok process kırılır |
| Y8 | `Record.get` lineer kolon tarama | View’da N×M maliyet |
| Y9 | Mailer SMTP yok | Gerçek mail için dış HTTP şart |
| Y10 | `noxc install` + `bin` yok | Global `nyx` CLI vitrini kaçıyor |

### C) Ürün kapsamı (bilinçli erteleme)

Devise full, Hotwire, ActiveStorage variants, multi-tenant SaaS, OAuth, 2FA — 1.0 sonrası.

---

## 3. Alan bazlı gap matrisi

### 3.1 Application lifecycle
- **Var:** `boot`, secret checks, migrate opt-in, middleware sırası, `dispatch` + finally `runtime.end`
- **Eksik:** `shutdown(application)`, `on_start` / `on_shutdown`, SIGTERM, DB/cache/job handle close
- **Bottleneck:** Testler `db.close()` elle; serve sürecinde resmi teardown yok

### 3.2 Middleware & hatalar
- **Var:** session → CSRF → session after → security → log; Model/App/Db → 500
- **Eksik:** development debug page (type/message/request_id/route/SQL), `rescue_from`, CORS default wire
- **Bottleneck:** Tüm hatalar aynı generic 500; Nox stack trace yoksa sayfa sınırlı kalır

### 3.3 Request state
- **Var:** worker-local modül-global runtime (0.9); string copy savunması
- **Eksik:** task-local (Nox); nested internal request izolasyonu
- **Bottleneck:** `serve_multicore` + ileride fiber = yanlış varsayım riski

### 3.4 Model / DB
- **Var:** Attributes, prepare/bind CRUD, transaction, assoc belongs_to/has_many/has_one, validations (required/max_len)
- **Eksik:** generated typed models, callbacks, query builder, preload, uniqueness, soft delete, PG ORM, pool
- **Bottleneck:** `Application.db: sqlite.Connection`; PG `last_insert_rowid` yok

### 3.5 Views
- **Var:** layout, partial, render_each/_map, form helpers, escape
- **Eksik:** SafeHtml tipi, for/if, content_for zenginliği, compiled templates, auto-reload
- **Bottleneck:** Koleksiyon DX Nox tarafında; unescaped isim tuzağı

### 3.6 CLI / generators
- **Var:** new/generate/db/jobs/console/server
- **Eksik:** auto-wire main.nox, mailer/job generators, `bin` manifest + `noxc install`
- **Bottleneck:** Scaffold “yorum snippet” — Rails hissinin #1 kırığı

### 3.7 Jobs / mail / storage / cache / cable / i18n
- **Var:** SQLite job queue, file/http mail, local storage, LRU+SQLite cache, SSE hub, JSON i18n
- **Eksik:** Redis queue, SMTP, S3, Redis cache, server WS, nested i18n/pluralization
- **Bottleneck:** Tek SQLite contention; cable worker’lar arası paylaşılmaz

### 3.8 Auth / session
- **Var:** signed cookie session, CSRF seed, bearer/session middleware, argon2, JWT HS256
- **Eksik:** encrypted cookie, DB/Redis session store, key rotation, Devise flows
- **Bottleneck:** Cookie size; revocation zor

---

## 4. Rails seviyesine giden fazlar (önerilen)

### Faz 0 — Release hijyeni (şimdi)
0.9.0 commit/tag/publish; CI 1.18.1 yeşil; dogfood blog örneği güncel.

### Faz 1 — Production core (0.10)
Öncelik: deploy edilebilir güven + DX iskeleti.

1. `nyx.app.shutdown` + close hooks  
2. Dev error page + structured request log (prod generic)  
3. `nox.json` `bin` + `noxc install nyx`  
4. Scaffold **auto-wire** (`main.nox` / routes dosyasına yaz)  
5. Health/readiness endpoint helper  
6. Deployment guide (proxy TLS, `NYX_*`, migrate CLI)

### Faz 2 — PostgreSQL path (0.11)
Öncelik: production DB.

1. Nox ile ortak `Database` yüzeyi / RETURNING insert helper (gerekirse Nox PR)  
2. `Application.db` dialect-aware (sqlite|postgres)  
3. Migration dialect (sqlite vs pg SQL)  
4. Transaction/savepoint PG’de  
5. Connection pool (sonra)  
6. Jobs’un app DB’den ayrılabilir kuyruk DB’si

### Faz 3 — Model ergonomisi (0.12)
1. `nyx generate model` → typed class + `find`/`save`/`create`  
2. Validations genişlet (uniqueness, format, numericality)  
3. Callbacks (before/after create/save)  
4. Query builder (where/order/limit zinciri)  
5. `Record` kolon index map (perf)  
6. Association preload (N+1 azalt)

### Faz 4 — View safety & DX (0.13)
1. `SafeHtml` tipi + yalnızca helper’lar üretir  
2. `render` default escape; raw bilinçli  
3. Nox template loops gelince migrate  
4. Partial/collection helper sadeleştirme

### Faz 5 — Background & realtime (0.14)
1. Job retry/backoff + dead set  
2. Mailer SMTP adapter (Nox net/tls üstüne)  
3. Cable: sharedmem veya Redis pubsub adapter  
4. Server WS gelince channel API

### Faz 6 — 1.0 dogfood kriteri
Orta boy SaaS (PG + auth + jobs + mail + storage + deploy) **30 gün** sorunsuz.

---

## 5. Nox’a her sürümde dayatılacak entegrasyon kapısı

```
noxc upgrade
  → nyx paketi derlenir
  → noxc test (tüm tests/*.nox)
  → examples/blog boot + CSRF + create roundtrip
  → (ileride) PG integration job
```

Bu unit golden’dan daha yüksek güven verir.

---

## 6. Bilinçli “Rails olmayacağız” listesi

- Hotwire/Stimulus varsayılan stack (isteğe bağlı sonra)  
- Full Devise (kendi auth primitives + generators yeterli)  
- ActiveStorage image variants (önce S3 store)  
- Multi-DB shards / apartment gem seviyesi multi-tenant  

---

## 7. İlk 6 sprint (somut TODO sırası)

| # | İş | Faz | Bağımlılık |
|---|---|---|---|
| 1 | 0.9.0 release (commit/tag/publish) | 0 | — |
| 2 | `shutdown` + boot dokümantasyonu | 1 | — |
| 3 | Dev error page + request_id log | 1 | N5 kısmen |
| 4 | `bin` manifest + install | 1 | Nox 1.17+ install |
| 5 | Scaffold auto-wire | 1 | — |
| 6 | PG insert/RETURNING + dialect spike | 2 | N4 |
| 7 | Generated typed model spike | 3 | scaffold |
| 8 | SafeHtml spike | 4 | — |
| 9 | Nox’a task-local RFC/repro | N1 | — |
