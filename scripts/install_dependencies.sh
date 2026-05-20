#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

dart pub global activate intl_translation
dart pub global activate intl_utils
dart pub global activate cider
dart pub global activate pubspec_generator
