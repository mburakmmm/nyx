#!/usr/bin/env bash
# Published linux-x64 binaries are `zig build -Dcpu=native`.
# Release runners often have AVX-512; GitHub-hosted EPYC 7763 does not,
# so that binary dies with SIGILL (exit 132). Build the same tag for
# x86-64-v3, which those runners support.
set -euo pipefail

NOX_TAG="v1.142.3"
ZIG_VER="0.16.0"
CPU="x86_64_v3"
PREFIX="${NOX_INSTALL_DIR:-$HOME/.nox-lang}"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

curl -fsSL -o "$work/zig.tar.xz" \
  "https://ziglang.org/download/${ZIG_VER}/zig-x86_64-linux-${ZIG_VER}.tar.xz"
tar -xf "$work/zig.tar.xz" -C "$work"
git clone --depth 1 --branch "$NOX_TAG" https://github.com/mburakmmm/nox-lang.git "$work/nox"
(
  cd "$work/nox"
  "$work/zig-x86_64-linux-${ZIG_VER}/zig" build \
    -Doptimize=ReleaseFast \
    -Dcpu="$CPU" \
    --prefix "$PREFIX"
)
curl -fsSL -o "$work/qbe.tar.xz" https://c9x.me/compile/release/qbe-1.3.tar.xz
tar -xf "$work/qbe.tar.xz" -C "$work"
make -C "$work/qbe-1.3" -j"$(nproc)"
mkdir -p "$PREFIX/bin"
cp "$work/qbe-1.3/qbe" "$PREFIX/bin/qbe"

"$PREFIX/bin/noxc" --version
test -x "$PREFIX/bin/qbe"
test -f "$PREFIX/lib/noxrt.o"
test -f "$PREFIX/lib/nox/stdlib/nox/core.nox"
