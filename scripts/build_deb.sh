#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

if ! command -v fastforge >/dev/null 2>&1; then
  echo "Fastforge is not installed. Run: dart pub global activate fastforge" >&2
  exit 127
fi

if ! command -v dpkg-deb >/dev/null 2>&1; then
  echo "dpkg-deb is not installed." >&2
  exit 127
fi

fastforge package --platform linux --targets deb "$@"
