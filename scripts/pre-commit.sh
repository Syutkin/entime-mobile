#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

unstaged_before=0
if ! git diff --name-only --quiet; then
  unstaged_before=1
fi

cider bump build

dart run build_runner build --delete-conflicting-outputs

if [ "$unstaged_before" -eq 1 ]; then
  echo "pre-commit: unstaged changes existed before hook; stage pubspec.yaml and generated files, then re-run commit." >&2
  exit 1
fi

git add pubspec.yaml
git add -u
