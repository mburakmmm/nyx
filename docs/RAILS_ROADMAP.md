# Nyx → Rails seviyesi: batteries-included yol haritası (B + Devise-core)

**Durum:** Nyx **0.21.0** (1.0 değil) · Nox **≥ 1.170.0** (CI **1.170.0**)  
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
| **0.15.1** | SID rotation, PG session/auth, metrics/rate/WS/auth harden |
| **0.15.2** | CI bash install, PG WS auth + E2E, TRUST_XFF, auth timing |
| **0.15.3** | Nox ≥ 1.23 + CI lock SHA fix |
| **0.15.4** | PG CI smoke via ci/pg_smoke.nox |
| **0.15.5** | PG smoke Row typing |
| **0.16.0** | TaskLocal runtime, Exception, dict[int,Record] |
| **0.17.0** | Nox 1.27–1.29: NYX_WORKERS/multicore, SharedBuffer metrics, --release M:N |
| **0.18.0** | Nox 1.104: nox.smtp STARTTLS (Gmail/Outlook TLS sınırı), ortak nox.db.Statement |
| **0.19.0** | Nox 1.142: peer_addr rate-limit + trusted proxy allowlist, Exception.line |
| **0.20.0** | Nox 1.142.23: MySQL boot/migrate/model/session/auth, `NYX_IPV6`, IPv6 peer ayrıştırma |
| **0.21.0** | Nox 1.170: `nox.json` `parse`/`dump`/`dump_string` (1.171 `decode`/`encode*` kaldırır) |

## 4. Bilinçli dışarı (0.15 sonrası)

Hotwire, OAuth/OIDC/2FA, ActiveStorage variants, multi-tenant, sürüm **1.0** etiketi.

## 5. Nox kapısı (paralel)

N1/N5/`dict[int,Record]`/Row → Nox 1.23–1.26  
M:N / `--release` / `serve_multicore` work-steal → Nox 1.27–1.29  
STARTTLS API + ortak `Statement` → Nox 1.75–1.76. Peer IP + yakalanmış Exception satırı → Nox 1.126–1.127. `listen_v6` → Nox 1.142.10 (CI **1.142.23**).
(`nox.orm` Nyx modeli değil. Gmail/Office365 SMTP el sıkışması 1.142.23’te yeniden denendi ve tamamlandı; auth ve gerçek posta gönderilmedi)

## 6. Dogfood kriteri (0.15)

Blog örneği: auth + CRUD + job mail + cable; CI sqlite + PG smoke; `noxc test tests/*.nox` yeşil.
