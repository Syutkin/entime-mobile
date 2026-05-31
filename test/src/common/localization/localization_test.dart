import 'package:entime/src/common/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppLanguage', () {
    test('fromValue normalizes persisted locale values', () {
      expect(AppLanguage.fromValue('ru'), AppLanguage.ru);
      expect(AppLanguage.fromValue('ru-RU'), AppLanguage.ru);
      expect(AppLanguage.fromValue('ru_RU'), AppLanguage.ru);
      expect(AppLanguage.fromValue('en'), AppLanguage.en);
      expect(AppLanguage.fromValue('en-US'), AppLanguage.en);
      expect(AppLanguage.fromValue('en_US'), AppLanguage.en);
      expect(AppLanguage.fromValue('en-GB'), AppLanguage.en);
      expect(AppLanguage.fromValue('en_GB'), AppLanguage.en);
      expect(AppLanguage.fromValue('system'), AppLanguage.system);
      expect(AppLanguage.fromValue(null), AppLanguage.system);
      expect(AppLanguage.fromValue(''), AppLanguage.system);
      expect(AppLanguage.fromValue('fr'), AppLanguage.system);
    });

    test('locale is null only for system language', () {
      expect(AppLanguage.system.locale, isNull);
      expect(AppLanguage.ru.locale, const Locale('ru'));
      expect(AppLanguage.en.locale, const Locale('en'));
    });
  });
}
