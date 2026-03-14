#!/usr/bin/env bash
set -euo pipefail

ok()   { echo "[OK]   $*"; }
fail() { echo "[FAIL] $*"; }

check_cmd() {
  local name="$1"
  local cmd="$2"
  if command -v "$cmd" >/dev/null 2>&1; then
    ok "$name: $($cmd --version 2>/dev/null | head -n 1 || echo 'installed')"
  else
    fail "$name: not installed"
  fi
}

echo "== DevOps Week 1: environment check =="
check_cmd "Git" "git"
check_cmd "curl" "curl"
check_cmd "nano" "nano"
check_cmd "vi" "vi"
check_cmd "tree" "tree"

echo
echo "== System =="
uname -a || true
echo "umask: $(umask)"
