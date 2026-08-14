# Nyx benchmarks

HTTP microbenchmarks: **Nyx** (Application.dispatch) vs **Fastify** (Node) vs **Gin** (Go).

```sh
./benchmarks/run.sh
# DURATION=15s NYX_WORKERS=8 ./benchmarks/run.sh
```

Requires: `wrk`, `curl`, `noxc`, `go`, `node`/`npm`.

Endpoints: `GET /ping`, `POST /echo` with `{"msg":"hello"}`.

## Fair flags (Aether-parity)

`run.sh` sets for Nyx:

```
NYX_SESSION=0 NYX_SECURITY_HEADERS=0 NYX_REQUEST_ID=0 NYX_REQUEST_HEADERS=0
NYX_CSRF=0 NYX_RATE_LIMIT=0 NYX_METRICS=0 NYX_LOG_REQUESTS=0
```

`handle_bare` + `EMPTY_HEADERS` skips Nox `iterateHeaders`. Production defaults keep session + security headers on.
