import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import 'generated/l10n.dart' as generated show AppLocalizationDelegate, GeneratedLocalization;

enum AppLanguage {
  system('system'),
  ru('ru'),
  en('en');

  const AppLanguage(this.value);

  final String value;

  static AppLanguage fromValue(String? value) {
    return switch (value) {
      'ru' || 'ru-RU' || 'ru_RU' => AppLanguage.ru,
      'en' || 'en-US' || 'en_US' => AppLanguage.en,
      /*   */ 'en-GB' || 'en_GB' => AppLanguage.en,
      'system' || null || '' => AppLanguage.system,
      _ => AppLanguage.system,
    };
  }

  Locale? get locale {
    return switch (this) {
      AppLanguage.system => null,
      AppLanguage.ru => const Locale('ru'),
      AppLanguage.en => const Locale('en'),
    };
  }
}

@sealed
class Localization extends generated.GeneratedLocalization {
  Localization._();
  static const LocalizationsDelegate<Localization> delegate = _LocalizationView(generated.AppLocalizationDelegate());
  static late Localization current;
  static List<Locale> get supportedLocales => const generated.AppLocalizationDelegate().supportedLocales;
}

@sealed
@immutable
class _LocalizationView extends LocalizationsDelegate<Localization> {
  @literal
  const _LocalizationView(LocalizationsDelegate<generated.GeneratedLocalization> delegate) : _delegate = delegate;

  final LocalizationsDelegate<generated.GeneratedLocalization> _delegate;

  @override
  bool isSupported(Locale locale) => _delegate.isSupported(locale);

  @override
  Future<Localization> load(Locale locale) =>
      generated.GeneratedLocalization.load(locale).then<Localization>((_) => Localization.current = Localization._());

  @override
  bool shouldReload(covariant _LocalizationView old) => false;
}
