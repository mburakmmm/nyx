#!/usr/bin/env bash
# Nyx vs Fastify (Node) vs Gin (Go) — HTTP microbenchmark (wrk)
#
#   cd benchmarks && ./run.sh
#
# Env knobs:
#   DURATION=10s CONNECTIONS=50 THREADS=4
#   NYX_WORKERS=1|8   SKIP_RELEASE=0|1   SKIP_QBE=0|1
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BENCH="$ROOT/benchmarks"
OUT="$BENCH/results"
mkdir -p "$OUT"

DURATION="${DURATION:-10s}"
CONNECTIONS="${CONNECTIONS:-50}"
THREADS="${THREADS:-4}"
NYX_PORT="${NYX_PORT:-3101}"
NYX_RELEASE_PORT="${NYX_RELEASE_PORT:-3104}"
FASTIFY_PORT="${FASTIFY_PORT:-3102}"
GIN_PORT="${GIN_PORT:-3103}"
NYX_WORKERS="${NYX_WORKERS:-1}"
NOX_POOL_WORKERS="${NOX_POOL_WORKERS:-$NYX_WORKERS}"

PIDS=()
cleanup() {
  for pid in "${PIDS[@]:-}"; do
    kill "$pid" 2>/dev/null || true
  done
}
trap cleanup EXIT

wait_http() {
  local url="$1"
  local i=0
  while [[ $i -lt 80 ]]; do
    if curl -fsS "$url" >/dev/null 2>&1; then
      return 0
    fi
    sleep 0.25
    i=$((i + 1))
  done
  echo "timeout waiting for $url" >&2
  return 1
}

run_wrk() {
  local name="$1"
  local url="$2"
  local extra="${3:-}"
  local file="$OUT/${name}.txt"
  echo "=== wrk $name $url (t=$THREADS c=$CONNECTIONS d=$DURATION) ===" | tee "$file"
  # shellcheck disable=SC2086
  wrk -t"$THREADS" -c"$CONNECTIONS" -d"$DURATION" --latency $extra "$url" | tee -a "$file"
}

echo "== build peers =="
(
  cd "$BENCH/fastify"
  npm install --silent
)
(
  cd "$BENCH/gin"
  go mod tidy
  go build -o "$OUT/gin-bench" .
)

echo "== start Gin :$GIN_PORT =="
PORT="$GIN_PORT" "$OUT/gin-bench" >"$OUT/gin-server.log" 2>&1 &
PIDS+=($!)

echo "== start Fastify :$FASTIFY_PORT =="
(
  cd "$BENCH/fastify"
  PORT="$FASTIFY_PORT" node server.mjs >"$OUT/fastify-server.log" 2>&1
) &
PIDS+=($!)

# Point package cache at current tree
(
  cd "$BENCH/nyx"
  python3 - <<PY
import json, os
root = os.path.abspath("../..")
data = {
  "name": "nyx-bench",
  "entry": "main.nox",
  "requires": [{"alias": "nyx", "repo": root, "ref": "master"}],
}
with open("nox.json", "w") as f:
    json.dump(data, f, indent=2); f.write("\n")
PY
  noxc fetch
  RESOLVED="$(python3 -c 'import json; print(json.load(open("nox.lock"))["packages"][0]["resolved"])')"
  CACHE="$HOME/.nox/pkg/mod/Users/melihburakmemis/Documents/nyx/${RESOLVED}"
  if [[ -d "$CACHE" ]]; then
    # Never --delete here: only refresh package sources into the resolved hash dir.
    rsync -a \
      --exclude '.git' \
      --exclude 'benchmarks/results' \
      --exclude 'benchmarks/fastify/node_modules' \
      "$ROOT/" "$CACHE/"
  fi
)

start_nyx_qbe() {
  (
    cd "$BENCH/nyx"
    NYX_ENV=test \
      NYX_PORT="$NYX_PORT" \
      NYX_WORKERS="$NYX_WORKERS" \
      NOX_POOL_WORKERS="$NOX_POOL_WORKERS" \
      NYX_RATE_LIMIT=0 \
      NYX_METRICS=0 \
      NYX_LOG_REQUESTS=0 \
      NYX_LOG_JSON=0 \
      NYX_CSRF=0 \
      NYX_AUTO_MIGRATE=0 \
      NYX_SESSION=0 \
      NYX_SECURITY_HEADERS=0 \
      NYX_REQUEST_ID=0 \
      NYX_REQUEST_HEADERS=0 \
      noxc run main.nox >"$OUT/nyx-qbe-server.log" 2>&1
  ) &
  NYX_QBE_PID=$!
  PIDS+=("$NYX_QBE_PID")
}

if [[ "${SKIP_QBE:-0}" != "1" ]]; then
  echo "== start Nyx QBE :$NYX_PORT workers=$NYX_WORKERS =="
  start_nyx_qbe
fi

if [[ "${SKIP_RELEASE:-0}" != "1" ]]; then
  echo "== build Nyx --release =="
  (
    cd "$BENCH/nyx"
    noxc build --release -o "$OUT/nyx-bench" main.nox
  )
fi

wait_http "http://127.0.0.1:$GIN_PORT/ping"
wait_http "http://127.0.0.1:$FASTIFY_PORT/ping"
if [[ "${SKIP_QBE:-0}" != "1" ]]; then
  wait_http "http://127.0.0.1:$NYX_PORT/ping"
fi

echo "== warmup =="
curl -fsS "http://127.0.0.1:$GIN_PORT/ping" >/dev/null
curl -fsS "http://127.0.0.1:$FASTIFY_PORT/ping" >/dev/null
[[ "${SKIP_QBE:-0}" == "1" ]] || curl -fsS "http://127.0.0.1:$NYX_PORT/ping" >/dev/null

LUA="$OUT/echo.lua"
cat >"$LUA" <<'EOF'
wrk.method = "POST"
wrk.body   = '{"msg":"hello"}'
wrk.headers["Content-Type"] = "application/json"
EOF

TAG="w${NYX_WORKERS}"

if [[ "${SKIP_QBE:-0}" != "1" ]]; then
  run_wrk "nyx_qbe_${TAG}_ping" "http://127.0.0.1:$NYX_PORT/ping"
  run_wrk "nyx_qbe_${TAG}_echo" "http://127.0.0.1:$NYX_PORT/echo" "-s $LUA"
fi

run_wrk "fastify_ping" "http://127.0.0.1:$FASTIFY_PORT/ping"
run_wrk "fastify_echo" "http://127.0.0.1:$FASTIFY_PORT/echo" "-s $LUA"
run_wrk "gin_ping" "http://127.0.0.1:$GIN_PORT/ping"
run_wrk "gin_echo" "http://127.0.0.1:$GIN_PORT/echo" "-s $LUA"

if [[ "${SKIP_RELEASE:-0}" != "1" ]]; then
  if [[ "${SKIP_QBE:-0}" != "1" ]]; then
    echo "== stop Nyx QBE; start --release :$NYX_RELEASE_PORT =="
    kill "$NYX_QBE_PID" 2>/dev/null || true
    wait "$NYX_QBE_PID" 2>/dev/null || true
  fi
  (
    cd "$BENCH/nyx"
    NYX_ENV=test \
      NYX_PORT="$NYX_RELEASE_PORT" \
      NYX_WORKERS="$NYX_WORKERS" \
      NOX_POOL_WORKERS="$NOX_POOL_WORKERS" \
      NYX_RATE_LIMIT=0 \
      NYX_METRICS=0 \
      NYX_LOG_REQUESTS=0 \
      NYX_LOG_JSON=0 \
      NYX_CSRF=0 \
      NYX_AUTO_MIGRATE=0 \
      NYX_SESSION=0 \
      NYX_SECURITY_HEADERS=0 \
      NYX_REQUEST_ID=0 \
      NYX_REQUEST_HEADERS=0 \
      "$OUT/nyx-bench" >"$OUT/nyx-release-server.log" 2>&1
  ) &
  PIDS+=($!)
  wait_http "http://127.0.0.1:$NYX_RELEASE_PORT/ping"
  curl -fsS "http://127.0.0.1:$NYX_RELEASE_PORT/ping" >/dev/null
  run_wrk "nyx_release_${TAG}_ping" "http://127.0.0.1:$NYX_RELEASE_PORT/ping"
  run_wrk "nyx_release_${TAG}_echo" "http://127.0.0.1:$NYX_RELEASE_PORT/echo" "-s $LUA"
fi

echo
echo "== summary (Requests/sec) =="
python3 - <<'PY'
import glob, os, re
out = os.environ.get("OUT") or "results"
# resolve from script context
import pathlib
root = pathlib.Path(__file__).resolve().parent if False else None
PY
OUT="$OUT" python3 - <<'PY'
import os, re, pathlib
out = pathlib.Path(os.environ["OUT"])
rows = []
for p in sorted(out.glob("*.txt")):
    text = p.read_text(errors="ignore")
    m = re.search(r"Requests/sec:\s+([0-9.]+)", text)
    if not m:
        continue
    lat = re.search(r"Latency\s+(\S+)", text)
    rows.append((float(m.group(1)), p.stem, lat.group(1) if lat else "?"))
rows.sort(reverse=True)
print(f"{'req/s':>12}  {'avg lat':>10}  name")
for rps, name, lat in rows:
    print(f"{rps:12.2f}  {lat:>10}  {name}")
PY

echo "Results under $OUT"
