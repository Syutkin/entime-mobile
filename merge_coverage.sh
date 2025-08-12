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

echo "Запуск тестов в $TEST_PATH с отдельным файлом покрытия..."
flutter test --coverage --coverage-path="$PARTIAL_COVERAGE_FILE" "$TEST_PATH"

echo "Нормализация путей..."
PROJECT_ROOT=$(pwd)
sed -i "s|$PROJECT_ROOT/||g" "$PARTIAL_COVERAGE_FILE"
sed -i "s|$PROJECT_ROOT/||g" "$MAIN_COVERAGE_FILE"

echo "Объединение с существующим покрытием..."
lcov -a "$MAIN_COVERAGE_FILE" -a "$PARTIAL_COVERAGE_FILE" -o "$MERGED_COVERAGE_FILE"

echo "Удаление мусорных файлов из покрытия..."
for pattern in "${IGNORE_PATTERNS[@]}"; do
    lcov -r "$MERGED_COVERAGE_FILE" "$pattern" --ignore-errors unused -o "$MERGED_COVERAGE_FILE"
done

echo "Обновляем основной файл покрытия..."
mv "$MERGED_COVERAGE_FILE" "$MAIN_COVERAGE_FILE"

echo "Очистка временного файла..."
rm -f "$PARTIAL_COVERAGE_FILE"

echo "Готово! Обновлённое покрытие: $MAIN_COVERAGE_FILE"

# Печать сводной статистики
lcov --summary coverage/lcov.info
