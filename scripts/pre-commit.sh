#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

dart pub global activate cider
cider bump build

dart pub global activate pubspec_generator
dart pub global run pubspec_generator:generate --input pubspec.yaml --output lib/src/constants/pubspec.yaml.g.dart

dart run build_runner build --delete-conflicting-outputs

git add pubspec.yaml
git add -- "lib/**/*.freezed.dart" "lib/**/*.g.dart" "lib/**/*.steps.dart" "lib/src/common/localization/**/*.dart"
