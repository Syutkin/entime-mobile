#!/usr/bin/env bash
set -euo pipefail

generated_arb="lib/src/common/localization/generated/intl_messages.arb"
ru_arb="lib/src/common/localization/intl_ru.arb"

strip_last_modified() {
  local file="$1"
  sed '/^[[:space:]]*"@@last_modified"[[:space:]]*:/d' "$file" > "$file.tmp"
  mv "$file.tmp" "$file"
}

flutter pub global run intl_translation:extract_to_arb --output-dir=lib/src/common/localization/generated lib/src/common/localization/i18n.dart
strip_last_modified "$generated_arb"
cp -f "$generated_arb" "$ru_arb"
flutter --no-color pub global run intl_utils:generate
