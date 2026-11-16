# AGENTS.md — Nyx UI Engineering Plan

> Status: implementation specification and agent operating rules. This document describes **planned** functionality, not existing Nyx/Nox APIs. Before writing code, inspect the actual repositories and record compatibility findings.

## 0. Mission and non-negotiable decisions

Build **Nyx UI**, an optional, first-party, Nox-first web UI layer for Nyx. Developers author pages, components, state and client behavior in **Nox only**; they do not need to author HTML, CSS or JavaScript. Internally, browser execution uses **Nox WebAssembly** plus a minimal **vanilla JavaScript browser bridge**, with Nyx handling native Nox server concerns.

1. **No Aura dependency**: do not import, port or share Aura runtime/components as a prerequisite. Nyx UI is web-native and independent.
2. **No React/Vue/Svelte** or mandatory third-party UI framework. Vanilla JS owns browser DOM APIs; Nox owns component definitions, application state, reconciliation and event semantics.
3. **Nox `wasi-threads` is a reported available target with async/browser support**, but its precise browser ABI, worker bootstrapping, import/export and deployment requirements MUST be verified against actual compiler source and executable tests. Never equate WASI threads with automatic DOM access.
4. **Native Nyx backend remains authoritative** for authentication, authorization, secrets, database access, mutations and privileged operations. WASM is untrusted client code.
5. **Backward compatible and opt-in**: existing Nyx routes, templates, static assets, auth, ORM and deployments must continue unchanged.
6. **No invented Nox syntax**: every committed `.nox` file must compile with the pinned supported `noxc` version. Examples in proposals are illustrative until compiler-verified.
7. Prefer a small, auditable implementation over premature feature breadth. No new language/compiler features without a documented blocker and an independently reviewed change.

## 1. Repository reconnaissance — required first task

Inspect `https://github.com/mburakmmm/nyx` and `https://github.com/mburakmmm/nox-lang` at pinned SHAs (record SHAs and date). Read README, VERSION, package layout, build scripts, CI, existing route/static/WS/HTTP/auth/ORM APIs, tests, Nox WASM target implementation, async runtime, thread model, allocator, string/array ABI, FFI, and browser examples. Inspect the Nox package publishing/import conventions. Do not assume prior version descriptions are still accurate.

Create `docs/ui/00-feasibility.md` with a **verified/unsupported/unknown** matrix for: browser WASM compile; browser instantiate; JS→WASM call; WASM→JS import; linear memory access; string passing; memory growth; exceptions; async suspension; worker/thread spawn; atomics; SharedArrayBuffer; cross-origin isolation; WebSocket/fetch bridge; module size; devtools debugging; Windows/macOS/Linux build; CI browser testing. Include exact source paths, commands, outputs and limitations. Create a minimal real browser spike before implementing UI abstractions. If a feature is missing, document fallback, open an issue, and gate dependent phases. Do not fake support.

## 2. Target architecture

```text
Nox app source
  ├─ server entry/modules ── noxc native ── Nyx HTTP/Auth/ORM/RPC
  └─ client entry/modules ── noxc browser WASM (`wasi-threads` where viable)
                                   │
                     Nyx UI Core (Nox WASM)
                 components / state / events / diff
                                   │
                        versioned bridge ABI
                                   │
                   vanilla JS browser bridge
                 DOM / events / fetch / workers
                                   │
                        browser HTML + CSS
```

A **single app WASM bundle** is the v1 default. Do not require dynamic WASM linking, shared runtime modules, or threads for the baseline. Worker parallelism is an opt-in progressive enhancement after compatibility testing. A single-thread fallback MUST be functional where threaded WASM is unavailable.

### Package boundaries (adapt names to real repo conventions)

- `nyx.ui` public Nox API: application, pages, components, events, state, navigation, forms.
- `nyx.ui.core` Nox/WASM internal: tree, stable IDs, hooks/state, scheduler, reconciler, patch serializer, bridge ABI.
- `nyx.ui.server` native Nox integration: assets, SSR/pre-render if supported, RPC, auth adapters, sessions, static serving, CSP headers.
- `ui/browser/` minimal TypeScript-free vanilla `.js`: bootstrap, DOM renderer, delegated events, fetch/WS transport, worker loader, accessibility helpers.
- `ui/styles/` prebuilt accessible design tokens, light/dark theme and responsive primitives.
- `examples/ui/`, `tests/ui/`, `docs/ui/`.

Prefer additive folders/modules; avoid changing existing Nyx public APIs unless explicitly required and tested.

## 3. Runtime contracts

### 3.1 Component tree

Nox UI functions produce a deterministic, serializable tree of typed nodes. Each node has: `type`, stable `key`/ID, validated props, children, event references and optional accessibility metadata. Keys are scoped to parent and unique among siblings. No arbitrary executable code or trusted HTML in node props. Separate DOM properties from attributes; preserve controlled/uncontrolled input semantics. Initial render and subsequent renders use the same schema.

### 3.2 State and lifecycle

- State is per mounted app instance/tab by default, never a process-global singleton.
- Define deterministic initialization, state update batching, render scheduling, component unmount cleanup, async cancellation, effect cleanup, and error boundaries.
- Explicitly choose and document component identity and state retention across reorders, conditional rendering and route changes.
- Start with **component-level rerender + keyed tree diff**. Fine-grained signal dependency tracking is deferred until measured need.
- Async responses use generation IDs/abort semantics to prevent stale writes after unmount or navigation.
- Bound memory, event queues, pending tasks, patch size and render loops; detect infinite rerenders.

### 3.3 Browser bridge ABI

Version ABI independently of package version. Prefer a small number of coarse-grained calls: `init`, `dispatch_event`, `poll/flush_patches`, `notify_async_result`, `dispose` (exact exported names depend on Nox ABI feasibility). Define byte encoding (UTF-8), length-prefix or pointer+length, ownership/free rules, memory-growth invalidation, maximum payload sizes, error codes, async completion IDs, and binary/JSON protocol choice. **Do not send a separate WASM↔JS call per DOM node**; batch patches. Avoid unsafe string-pointer assumptions. Include protocol negotiation and deterministic failure on mismatched versions.

### 3.4 DOM patch model

Support minimal operations: `create`, `insert/move`, `remove`, `set_text`, `set_safe_property`, `remove_property`, `listen/unlisten`, `focus` (as needed). Validate patch shape, node existence and allowed element/attribute/property names. Use `textContent` for text, never raw `innerHTML` by default. Preserve focus, selection, scroll, IME composition and input cursor when updating. Apply patches in order, with error recovery to full subtree remount. Schedule updates with `requestAnimationFrame` when useful. Use delegated events and stable handler IDs; prevent event listener leaks.

### 3.5 Browser worker/thread model

Main thread exclusively owns DOM and accessibility interactions. If Nox WASM runs in a worker, exchange batched messages with the main-thread JS bridge; never assume workers can touch DOM. For threads, verify browser `SharedArrayBuffer`, atomics, worker bootstrap, secure context and cross-origin isolation. COOP/COEP must be configurable and documented because they can block third-party resources, OAuth popups or embeds; test deployment behavior. Use a non-threaded fallback and publish a browser support matrix. Do not block the main thread with synchronous worker waits.

### 3.6 Network and server RPC

Client-side Nox requests go through a typed bridge to `fetch`/WebSocket. Prefer Nyx-native routes for backend APIs. Enforce same-origin defaults, explicit external-origin allowlists, request timeouts, cancellation, retries only for safe/idempotent requests, backpressure and structured error handling. Session credentials and CSRF handling follow Nyx's actual auth conventions. Client RPC must never expose arbitrary server function invocation: only explicitly registered, authenticated and authorized endpoints with schema validation. Mutations are validated server-side; browser checks are UX only.

### 3.7 Styling and accessibility

Ship a default responsive CSS stylesheet with design tokens, CSS custom properties, dark/light mode, typography scale, spacing, focus indicators, reduced-motion handling, keyboard navigation and accessible labels. Expose Nox-level theme/layout props with allowlisted values; no user-authored CSS required. Semantic HTML is mandatory. Target WCAG 2.2 AA for built-in components and test keyboard and screen reader semantics. Provide escape hatches for advanced HTML/CSS later, clearly separated from the zero-HTML/CSS/JS default.

## 4. Public API design rules

Before implementation, write `docs/ui/01-api-rfc.md` with **compiler-validated** code examples and explicit choices for:

- App startup, mounting, routing and page registration.
- Declarative components, nested layouts, event callbacks, component keys and lifecycle.
- Local state, derived state, async resources, forms and validation.
- Client-only vs server-only module boundaries; build-time import restrictions.
- Typed HTTP/RPC, errors/loading states, auth-aware navigation.
- Theming, accessibility labels, table/chart extension contracts.

Avoid designing around unverified decorators, lambdas, `with`, generic syntax or JSX-like constructs. Prefer APIs naturally expressible in the existing Nox language. Do not force every interaction to rerun the entire app; establish stable event handler semantics. If the language cannot express callbacks conveniently, propose a tested event-ID/handler-registration pattern rather than inventing syntax.

## 5. Security invariants

- Treat WASM, all events, component props, URL params, RPC payloads and user-generated content as untrusted.
- Escape all text by default. No unrestricted HTML injection, `eval`, dynamic JS execution, unsafe URL schemes or unvalidated DOM attributes.
- Server authorization for every privileged action; CSRF protection where cookie-based auth is used; secure session/cookie handling; rate limits and payload limits.
- Content Security Policy compatible with WASM loading, without `unsafe-eval` unless a verified platform constraint is documented and mitigated. No implicit remote CDN dependency.
- Do not bundle secrets, database credentials or server-only code into client WASM. Implement dependency-graph checks and a negative test that fails builds when forbidden server imports appear in client bundles.
- Guard against event spoofing, stale handler IDs, patch protocol abuse, oversized allocations, denial-of-service render loops and unbounded async tasks.
- Audit third-party dependencies and licenses; generate SBOM if project tooling supports it.

## 6. Phased implementation and acceptance gates

Each phase must finish with code, unit tests, browser integration tests, docs, benchmark baseline, CI results and a short `docs/ui/progress.md` update. Do not advance when acceptance criteria fail.

### Phase 0 — Compiler/browser feasibility (blocking)

**Deliver:** actual Nox browser WASM hello-world; JS↔WASM round trip; async callback; thread capability probe; baseline/fallback decision; ABI RFC; browser compatibility table. **Pass:** reproducible build and browser run, verified string/memory ownership, no unexplained runtime traps. If threaded mode fails, proceed only with documented single-thread fallback, not a fictional threads implementation.

### Phase 1 — Bridge + static render

**Deliver:** bootstrap, Nox component tree, tree serialization, JS DOM mount, stylesheet, basic text/heading/button/container primitives. **Pass:** real Nox app renders without authoring HTML/CSS/JS; safe escaping; deterministic IDs; browser reload works; bridge errors visible in dev mode.

### Phase 2 — Events + state

**Deliver:** delegated event pipeline, local state, component identity, render scheduler, patch diff, disposal. **Pass:** counter, controlled input, conditional component, keyed reorder, multi-tab isolation; no focus/cursor loss; no listener leaks after 1,000 mount/unmount cycles; no full page reload for clicks.

### Phase 3 — Async + backend integration

**Deliver:** typed fetch adapter, Nyx endpoint integration, loading/error/cancel states, RPC allowlist, authentication/CSRF integration. **Pass:** real authenticated CRUD sample; server-side authorization verified; race cancellation test; network offline/reconnect behavior documented; secrets absent from WASM artifact.

### Phase 4 — Layout, forms and navigation

**Deliver:** row/column/grid, responsive containers, sidebar, tabs, modal, input/number/select/checkbox, form validation, client navigation/history, default theme. **Pass:** keyboard-only workflows, label/focus checks, mobile viewport tests, route back/forward and form errors; accessible defaults.

### Phase 5 — Data UI and developer experience

**Deliver:** tables, sorting/pagination, metrics, progress, notifications, charts through a minimal renderer or explicitly evaluated dependency; dev server/build command integration, source-mapped errors where supported, hot reload if feasible, examples. **Pass:** functional admin dashboard with real Nyx backend; documented bundle size, startup and interaction measurements; cold build and incremental build on supported OSes.

### Phase 6 — Threaded/worker optimization (optional enhancement)

**Deliver:** worker orchestration for expensive compute, thread feature detection, cross-origin isolation configuration, main-thread DOM isolation, single-thread fallback. **Pass:** heavy compute does not freeze UI; tested unsupported-browser fallback; no deadlocks; worker cleanup; measurable improvement over baseline. Do not make threads a hard requirement without explicit product decision.

### Phase 7 — Release hardening

**Deliver:** versioned protocol, migration/compatibility policy, security audit, API reference, troubleshooting, sample deployment with reverse proxy, CI matrix, release notes. **Pass:** zero regressions in existing Nyx tests; production build with no dev-only dependencies; documented upgrade/rollback; reproducible release artifacts.

## 7. Testing strategy

- **Unit (Nox):** tree generation, key identity, state transitions, diff correctness, event dispatch, serialization, invalid props, cleanup, cancellation, bounds.
- **Unit (JS):** DOM patch validation, event delegation, focus/IME behavior, browser bridge errors, safe URL/attribute handling.
- **Integration (real browser):** Nox→WASM compile→serve→instantiate→render→interact→RPC; test Chromium and Firefox, WebKit where infrastructure permits; both threaded and fallback paths.
- **Security:** XSS payloads in text/props, CSRF, forged RPC calls, client bundle secret scanning, unauthorized endpoints, oversized patches, CSP violations, cross-origin resources.
- **Concurrency:** rapid clicks, simultaneous requests, out-of-order responses, navigation during pending tasks, multiple tabs, worker shutdown, no global state leakage.
- **Performance:** compressed JS/WASM/CSS size, cold start, hydration/mount, click-to-paint p50/p95, patch counts, memory growth, 1k/10k-node render, CPU-heavy worker responsiveness. Record hardware/browser and compare to previous baseline; do not claim unmeasured gains.
- **Compatibility:** Windows/macOS/Linux build where supported; current Nyx and pinned Nox compiler; browsers without cross-origin isolation; static asset serving behind reverse proxies.

## 8. CI and release rules

Add jobs to compile the smallest Nox UI example to WASM, serve it through Nyx, run browser automation, execute JS/Nox tests, enforce formatting/linting, scan client bundle for forbidden imports/secrets, and run existing Nyx regression suite. Pin tool versions and cache safely. CI status must be reported from actual runs, never inferred from workflow files. Version UI API and bridge protocol; reject incompatible clients with actionable errors. Provide a feature flag or opt-in import so stable Nyx deployments are unaffected.

## 9. Developer experience and documentation

Document: 5-minute quickstart; minimal counter; form + validation; authenticated CRUD; dashboard; async requests; route navigation; error handling; deployment and COOP/COEP; supported browsers; server/client security boundaries; custom components; performance profiling; limitations. Commands must match actual Nyx/noxc CLI; do not invent commands in shipped docs. Maintain a changelog and a feature matrix (`stable`, `experimental`, `unsupported`).

## 10. Agent execution protocol

1. **Inspect first**: repository tree, versions, actual APIs and tests. State verified facts separately from proposals.
2. **Plan narrowly**: open an issue or design note for each phase; identify blockers, modified files and test plan.
3. **Implement incrementally**: smallest compiling Nox slice, then JS bridge, then browser proof. Avoid sweeping rewrites.
4. **Run checks**: compiler, unit tests, browser tests, security checks, Nyx regressions. Paste exact commands and results.
5. **Review security**: client/server boundary, XSS, RPC authorization, memory ownership, async cancellation, thread isolation.
6. **Update docs**: API examples must compile; record decisions and deviations in `docs/ui/decisions/`.
7. **Report accurately**: `implemented`, `tested`, `blocked`, `proposed` must not be conflated. No fabricated benchmarks or green CI claims.
8. **Stop on architectural blockers**: when Nox browser ABI, compiler syntax or Nyx integration contradicts the design, produce a concise ADR with alternatives and wait for a decision rather than silently adding a new compiler feature.

## 11. Definition of Done for first public experimental release

A developer can install/pin the supported Nox + Nyx versions, write a **single Nox-authored** interactive page with heading, input, button, counter, responsive layout and authenticated data fetch, compile/serve it with documented real commands, and use it in a supported browser without writing HTML/CSS/JS. All client logic runs in Nox WASM; the JS bridge only performs browser/platform operations. Existing Nyx apps remain unaffected. The release includes security defaults, test coverage, browser compatibility notes, known limitations and reproducible examples.

## 12. Explicit non-goals for v1

No Aura integration, no React compatibility layer, no general-purpose JS transpilation, no mandatory multi-threading, no automatic splitting of arbitrary Nox source into secure client/server bundles, no unrestricted DOM/HTML escape hatch by default, no native mobile rendering, no visual drag-and-drop editor, no full Streamlit API compatibility, no promise of offline-first behavior, no speculative performance superiority over JS frameworks.

## 13. First agent assignment — execute now

**Do not start by implementing the entire framework.** Complete Phase 0 first. Return:

1. Exact Nyx and Nox SHAs and relevant file paths.
2. Verified browser/WASI threads/async capability matrix with reproducible commands.
3. A minimal Nox WASM ↔ vanilla JS browser round-trip demo committed under a suitable experimental directory.
4. A concrete ABI and memory-ownership proposal.
5. A list of compiler/runtime blockers and safe fallbacks.
6. Phase 1 file-by-file implementation plan with acceptance tests.

Only after Phase 0 is accepted should the agent implement Phase 1.
