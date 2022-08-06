// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class GeneratedLocalization {
  GeneratedLocalization();

  static GeneratedLocalization? _current;

  static GeneratedLocalization get current {
    assert(_current != null,
        'No instance of GeneratedLocalization was loaded. Try to initialize the GeneratedLocalization delegate before accessing GeneratedLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<GeneratedLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = GeneratedLocalization();
      GeneratedLocalization._current = instance;

      return instance;
    });
  }

  static GeneratedLocalization of(BuildContext context) {
    final instance = GeneratedLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of GeneratedLocalization present in the widget tree. Did you add GeneratedLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static GeneratedLocalization? maybeOf(BuildContext context) {
    return Localizations.of<GeneratedLocalization>(
        context, GeneratedLocalization);
  }

  /// `Что нового`
  String get I18nUpdate_whatsNew {
    return Intl.message(
      'Что нового',
      name: 'I18nUpdate_whatsNew',
      desc: '',
      args: [],
    );
  }

  /// `Соединение...`
  String get I18nUpdate_connecting {
    return Intl.message(
      'Соединение...',
      name: 'I18nUpdate_connecting',
      desc: '',
      args: [],
    );
  }

  /// `Обновить до {version}`
  String I18nUpdate_updateToVersion(Object version) {
    return Intl.message(
      'Обновить до $version',
      name: 'I18nUpdate_updateToVersion',
      desc: '',
      args: [version],
    );
  }

  /// `Проверить обновления`
  String get I18nUpdate_checkForUpdates {
    return Intl.message(
      'Проверить обновления',
      name: 'I18nUpdate_checkForUpdates',
      desc: '',
      args: [],
    );
  }

  /// `Список изменений`
  String get I18nUpdate_changelog {
    return Intl.message(
      'Список изменений',
      name: 'I18nUpdate_changelog',
      desc: '',
      args: [],
    );
  }

  /// `{current} из {total}`
  String I18nUpdate_downloaded(Object current, Object total) {
    return Intl.message(
      '$current из $total',
      name: 'I18nUpdate_downloaded',
      desc: 'Сколько скачано байт относительно общего количества',
      args: [current, total],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<GeneratedLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<GeneratedLocalization> load(Locale locale) =>
      GeneratedLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
