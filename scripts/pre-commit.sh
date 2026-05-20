#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

scripts/format.sh

find lib test -name '*.dart' \
  ! -name '*.g.dart' \
  ! -name '*.freezed.dart' \
  ! -name '*.steps.dart' \
  ! -path 'lib/src/common/localization/generated/*' \
  -print0 | xargs -0 git add --

cider bump build

scripts/generate.sh

git add pubspec.yaml
git add -- "lib/**/*.freezed.dart" "lib/**/*.g.dart" "lib/**/*.steps.dart" "lib/src/common/localization/**/*.dart"
