#!/usr/bin/env bash
# Nox >= 1.142.7 publishes linux-x64 with -Dcpu=x86_64_v2 and bundles qbe.
# The official installer is enough on GitHub-hosted runners; a native-CPU
# rebuild is no longer required to avoid SIGILL.
set -euo pipefail

NOX_TAG="v1.170.0"
PREFIX="${NOX_INSTALL_DIR:-$HOME/.nox-lang}"

curl -fsSL https://raw.githubusercontent.com/mburakmmm/nox-lang/v1.170.0/install.sh \
  | NOX_VERSION="$NOX_TAG" NOX_INSTALL_DIR="$PREFIX" bash

"$PREFIX/bin/noxc" --version
test -x "$PREFIX/bin/qbe"
test -f "$PREFIX/lib/noxrt.o"
test -f "$PREFIX/lib/nox/stdlib/nox/core.nox"
