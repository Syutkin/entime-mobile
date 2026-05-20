#!/usr/bin/env bash
set -euo pipefail

mode="${1:-write}"

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

format_args=()
case "$mode" in
  write)
    ;;
  check)
    format_args+=(--output=none --set-exit-if-changed)
    ;;
  *)
    echo "Usage: $0 [write|check]" >&2
    exit 64
    ;;
esac

find lib test -name '*.dart' \
  ! -name '*.g.dart' \
  ! -name '*.freezed.dart' \
  ! -name '*.steps.dart' \
  ! -path 'lib/src/common/localization/generated/*' \
  -print0 | xargs -0 dart format "${format_args[@]}"
