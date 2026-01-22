#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

cider bump build

dart run build_runner build --delete-conflicting-outputs

git add pubspec.yaml
git add -- "lib/**/*.freezed.dart" "lib/**/*.g.dart" "lib/**/*.steps.dart" "lib/src/common/localization/**/*.dart"
