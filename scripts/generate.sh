#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

scripts/generate_intl.sh
dart pub global run pubspec_generator:generate --no-timestamp --input pubspec.yaml --output lib/src/constants/pubspec.yaml.g.dart
dart run build_runner build
