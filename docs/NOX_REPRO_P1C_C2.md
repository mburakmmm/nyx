# Nox repro: P1c + C2 (historical — fixed in noxc 1.18.1)

These cases **failed on ≤1.17.x** and **pass on ≥1.18.1**. Kept for regression reference.

Minimal, verified packages for [nox-lang](https://github.com/mburakmmm/nox-lang).
Observed while integrating [nyx](https://github.com/mburakmmm/nyx) 0.8.

How to run: copy `repro-pkg/` + `consumer/`, `git init` inside `repro-pkg`, then in `consumer/`:
`noxc fetch && noxc run <file.nox>`.

---

## C2 — package function-type param → import SIGSEGV

### Precise trigger

In a **package** module:

1. A parameter of type `(T) -> dict[str, str]`
2. Its result is passed **inline** into another **same-module** function call  
   e.g. `use_ctx(to_context(rows[i]))` or `partial(path, to_context(rows[i]))`

**Import alone** of that module → exit **139** (SIGSEGV). No need to call the function.

### Workaround that does NOT crash

Store the callback result in a local first, then pass the local:

```nox
ctx: dict[str, str] = to_context(rows[i])
out = out + use_ctx(ctx)
```

### FAIL module (`repro-pkg/c2_inline.nox`)

```nox
class Row:
    def __init__(self: Row, title: str) -> None:
        self.title = title

def use_ctx(context: dict[str, str]) -> str:
    return context["title"]

def map_inline(rows: list[Row], to_context: (Row) -> dict[str, str]) -> str:
    out: str = ""
    i: int = 0
    while i < len(rows):
        out = out + use_ctx(to_context(rows[i]))
        i = i + 1
    return out
```

### FAIL consumer (`consumer/c2_import_inline.nox`)

```nox
import repro.c2_inline
print("should not print")
```

```sh
noxc run c2_import_inline.nox
# → exit 139, empty stdout/stderr
```

### OK control (`repro-pkg/c2_local.nox`)

```nox
class Row:
    def __init__(self: Row, title: str) -> None:
        self.title = title

def use_ctx(context: dict[str, str]) -> str:
    return context["title"]

def map_local(rows: list[Row], to_context: (Row) -> dict[str, str]) -> str:
    out: str = ""
    i: int = 0
    while i < len(rows):
        ctx: dict[str, str] = to_context(rows[i])
        out = out + use_ctx(ctx)
        i = i + 1
    return out
```

```nox
import repro.c2_local
print("c2_local ok")
```

### Real-world shape (nyx.view)

```nox
def partial(path: str, context: dict[str, str]) -> str:
    return path + ":" + context["title"]

def render_each_map(
    path: str,
    rows: list[str],
    to_context: (str) -> dict[str, str]
) -> str:
    out: str = ""
    i: int = 0
    while i < len(rows):
        out = out + partial(path, to_context(rows[i]))  # inline → SIGSEGV on import
        i = i + 1
    return out
```

### Notes

- Same shape as a **top-level script** (not a package module) works.
- `(str) -> str` with inline `use_s(f(xs[i]))` did **not** SIGSEGV in our probes.
- Returning `dict[str, str]` from the callback + inline sibling call is the hot path.

---

## P1c — package-module globals + nested closure → codegen error

### Precise trigger

1. A **package** module declares a module-global that is **read or written from a function** body.
2. The same linked program also contains a **nested `def`** (closure), e.g. middleware factory or route `setup`.

→ codegen:

```text
codegen: bu program şu an desteklenmeyen bir yapı içeriyor (ör. iç içe fonksiyon/sınıf tanımı, ...)
```

### Does NOT trigger

| Setup | Result |
|---|---|
| Package global **never** referenced from any function + nested/Router | OK |
| Package global read/write + `Router.get` **without** any nested `def` in the program | OK |
| **Script**-level globals + nested `def` (no package) | OK |
| Package global read/write, **no** nested `def` anywhere | OK |

### FAIL package (`repro-pkg/state.nox`)

```nox
_x: int = 0

def get_x() -> int:
    return _x

def set_x(n: int) -> None:
    _x = n
```

### FAIL consumer — nested closure (`consumer/p1c_nested.nox`)

```nox
from nox.http import HttpRequest, HttpResponse
from nox.router import Context
import repro.state

def make_mw(flag: str) -> (Context) -> HttpResponse | None:
    def handler(ctx: Context) -> HttpResponse | None:
        if ctx.request.method == "GET":
            return None
        return HttpResponse(403, "no", {})
    return handler

mw: (Context) -> HttpResponse | None = make_mw("x")
ctx: Context = Context(HttpRequest("GET", "/", "", {}), {})
ignore: HttpResponse | None = mw(ctx)
print("should not print")
```

```sh
noxc run p1c_nested.nox
# → codegen unsupported-structure error, exit 1
```

### OK control — same package globals, no nested (`consumer/p1c_control.nox`)

```nox
import repro.state
repro.state.set_x(7)
print(str(repro.state.get_x()))
```

### Real-world shape (nyx)

- `nyx.csrf.protect` / `nyx.app` middleware factories use nested `def handler`.
- Putting request state in package-module globals (`nyx.runtime`) therefore breaks every app that uses those middlewares.
- Nyx keeps `NYX_RT_*` env storage until this is fixed.

### Transitive variant

If package module `flash.nox` gains:

```nox
_probe_g: int = 0
def probe_get() -> int:
    return _probe_g
```

then `noxc test tests/csrf_test.nox` / `tests/app_test.nox` (which pull in nested middleware via imports) also hit the same codegen error — even if the test never calls `probe_get`.

---

## Environment

- `noxc --version` → **1.17.0**
- macOS arm64
- Package via path require + `noxc fetch` (git repo required for path packages)
