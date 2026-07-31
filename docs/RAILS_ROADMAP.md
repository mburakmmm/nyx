# Nyx → Rails seviyesi: batteries-included yol haritası (B + Devise-core)

**Durum:** Nyx **0.15.0** (1.0 değil) · Nox **≥ 1.22.0**  
**Karar:** Stack B (`nyx new` = SQLite; PG production birinci sınıf) · Auth = Devise-core (OAuth/2FA sonra)

Hedef: Rails’in problem alanlarında production-grade ergonomi (klon değil, eşdeğer iş akışı).

---

## 1. Bugün (0.10)

| Katman | Durum |
|---|---|
| Lifecycle | boot / dispatch / shutdown hooks / health |
| Security | CSRF / signed session / headers / argon2 / JWT |
| ORM | SQLite `nyx.model` + PG `pg_model` (ayrı tip) |
| Realtime | SSE + `serve_ws*` helpers |
| Jobs/mail/storage | MVP (sqlite queue, SMTPS, local disk) |
| Auth ürünü | Yalnızca middleware primitives |

## 2. Hedef mimari (0.15)

Tek paket `nyx.*`, adapter’lı batteries:

- **Session store (db):** cookie’de signed `sid`; sunucu `sessions` tablosu (revoke / logout-all)
- **Auth engine:** register / login / logout / reset / lockout + `generate auth`
- **Rate limit** + structured JSON log + deeper `/ready` + metrics
- **Birleşik model API** (dialect dispatcher; Nox Row protokolü gelince tek Connection)
- **Jobs worker** production + storage limit/S3 + mail templates + cable WS auth

## 3. Sürüm dilimleri (1.0 yok)

| Sürüm | İçerik |
|---|---|
| **0.10** | TLS/WS, hooks, dialect boot (yayında) |
| **0.11** | db session_store, rate_limit, JSON log, deeper ready |
| **0.12** | birleşik model API, dual migrate gen, preload map, callbacks/soft delete |
| **0.13** | Devise-core auth_engine + generate auth |
| **0.14** | worker, storage/S3, mail templates, WS auth cable |
| **0.15** | metrics, secret rotation, PG CI, blog SaaS dogfood |

## 4. Bilinçli dışarı (0.15 sonrası)

Hotwire, OAuth/OIDC/2FA, ActiveStorage variants, multi-tenant, MySQL first-class boot, sürüm **1.0** etiketi.

## 5. Nox kapısı (paralel)

N1 task-local · N5 exception stack · ortak query/Row · `dict[int, Record]`  
→ runtime / error page / ORM birleşimi pin yükseltince aktive.

## 6. Dogfood kriteri (0.15)

Blog örneği: auth + CRUD + job mail + cable; CI sqlite + PG smoke; `noxc test tests/*.nox` yeşil.
