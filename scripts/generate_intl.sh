#!/bin/bash
flutter pub global run intl_translation:extract_to_arb --output-dir=lib/src/common/localization/generated lib/src/common/localization/i18n.dart
cp -rf lib/src/common/localization/generated/intl_messages.arb lib/src/common/localization/intl_ru.arb
flutter --no-color pub global run intl_utils:generate