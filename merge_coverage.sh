#!/usr/bin/env bash
set -e

# === Настройки ===
MAIN_COVERAGE_FILE="coverage/lcov.info"
PARTIAL_COVERAGE_FILE="coverage/partial.info"
MERGED_COVERAGE_FILE="coverage/merged.info"

# Путь к тестам (можно передавать первым аргументом скрипта)
TEST_PATH="${1:-test/}"

# Фильтры для удаления мусора
IGNORE_PATTERNS=(
    "lib/**.freezed.dart"
    "lib/**.g.dart"
    "lib/**.steps.dart"
    "lib/src/common/localization/**.dart"
)

echo "📦 Запуск тестов в $TEST_PATH с отдельным файлом покрытия..."
flutter test --coverage --coverage-path="$PARTIAL_COVERAGE_FILE" "$TEST_PATH"

echo "🛠 Нормализация путей..."
# Flutter пишет абсолютные пути, меняем на относительные (от корня проекта)
PROJECT_ROOT=$(pwd | sed 's_/_\\/_g') # экранируем слеши
sed -i "s/$PROJECT_ROOT\///g" "$PARTIAL_COVERAGE_FILE"
sed -i "s/$PROJECT_ROOT\///g" "$MAIN_COVERAGE_FILE"

echo "➕ Объединение с существующим покрытием..
