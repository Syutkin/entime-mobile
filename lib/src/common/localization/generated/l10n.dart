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

  /// `Настройки`
  String get I18nSettings_settings {
    return Intl.message(
      'Настройки',
      name: 'I18nSettings_settings',
      desc: '',
      args: [],
    );
  }

  /// `Основные`
  String get I18nSettings_general {
    return Intl.message(
      'Основные',
      name: 'I18nSettings_general',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth`
  String get I18nSettings_bluetooth {
    return Intl.message(
      'Bluetooth',
      name: 'I18nSettings_bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Переподключение`
  String get I18nSettings_reconnect {
    return Intl.message(
      'Переподключение',
      name: 'I18nSettings_reconnect',
      desc: '',
      args: [],
    );
  }

  /// `Пытаться переподключится к модулю при обрыве связи`
  String get I18nSettings_reconnectDescription {
    return Intl.message(
      'Пытаться переподключится к модулю при обрыве связи',
      name: 'I18nSettings_reconnectDescription',
      desc: '',
      args: [],
    );
  }

  /// `Звук`
  String get I18nSettings_sound {
    return Intl.message(
      'Звук',
      name: 'I18nSettings_sound',
      desc: '',
      args: [],
    );
  }

  /// `Всегда включённый экран`
  String get I18nSettings_wakelock {
    return Intl.message(
      'Всегда включённый экран',
      name: 'I18nSettings_wakelock',
      desc: '',
      args: [],
    );
  }

  /// `Обратный отсчёт`
  String get I18nSettings_countdown {
    return Intl.message(
      'Обратный отсчёт',
      name: 'I18nSettings_countdown',
      desc: '',
      args: [],
    );
  }

  /// `Голосовые сообщения`
  String get I18nSettings_voiceMessages {
    return Intl.message(
      'Голосовые сообщения',
      name: 'I18nSettings_voiceMessages',
      desc: '',
      args: [],
    );
  }

  /// `Голос`
  String get I18nSettings_voice {
    return Intl.message(
      'Голос',
      name: 'I18nSettings_voice',
      desc: '',
      args: [],
    );
  }

  /// `Называть имена участников`
  String get I18nSettings_participantsName {
    return Intl.message(
      'Называть имена участников',
      name: 'I18nSettings_participantsName',
      desc: '',
      args: [],
    );
  }

  /// `Громкость`
  String get I18nSettings_volume {
    return Intl.message(
      'Громкость',
      name: 'I18nSettings_volume',
      desc: '',
      args: [],
    );
  }

  /// `Тембр`
  String get I18nSettings_pitch {
    return Intl.message(
      'Тембр',
      name: 'I18nSettings_pitch',
      desc: '',
      args: [],
    );
  }

  /// `Скорость`
  String get I18nSettings_rate {
    return Intl.message(
      'Скорость',
      name: 'I18nSettings_rate',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get I18nSettings_language {
    return Intl.message(
      'Язык',
      name: 'I18nSettings_language',
      desc: '',
      args: [],
    );
  }

  /// `Стартовый экран`
  String get I18nSettings_startScreen {
    return Intl.message(
      'Стартовый экран',
      name: 'I18nSettings_startScreen',
      desc: '',
      args: [],
    );
  }

  /// `Кнопка "отсечка"`
  String get I18nSettings_startButton {
    return Intl.message(
      'Кнопка "отсечка"',
      name: 'I18nSettings_startButton',
      desc: '',
      args: [],
    );
  }

  /// `Размер кнопки "отсечка"`
  String get I18nSettings_startButtonSize {
    return Intl.message(
      'Размер кнопки "отсечка"',
      name: 'I18nSettings_startButtonSize',
      desc: '',
      args: [],
    );
  }

  /// `{size}px`
  String I18nSettings_pixelSize(Object size) {
    return Intl.message(
      '${size}px',
      name: 'I18nSettings_pixelSize',
      desc: '',
      args: [size],
    );
  }

  /// `Размер кнопки "отсечка" на стартовом экране`
  String get I18nSettings_startButtonSizeDescription {
    return Intl.message(
      'Размер кнопки "отсечка" на стартовом экране',
      name: 'I18nSettings_startButtonSizeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Обратный отсчёт`
  String get I18nSettings_countdownAtStart {
    return Intl.message(
      'Обратный отсчёт',
      name: 'I18nSettings_countdownAtStart',
      desc: '',
      args: [],
    );
  }

  /// `Размер обратного отсчёта`
  String get I18nSettings_countdownAtStartSize {
    return Intl.message(
      'Размер обратного отсчёта',
      name: 'I18nSettings_countdownAtStartSize',
      desc: '',
      args: [],
    );
  }

  /// `Заменять время старта обратным отсчётом`
  String get I18nSettings_replaceStartCountdown {
    return Intl.message(
      'Заменять время старта обратным отсчётом',
      name: 'I18nSettings_replaceStartCountdown',
      desc: '',
      args: [],
    );
  }

  /// `Финишный экран`
  String get I18nSettings_finishScreen {
    return Intl.message(
      'Финишный экран',
      name: 'I18nSettings_finishScreen',
      desc: '',
      args: [],
    );
  }

  /// `Задержка перед показом новых отсечек`
  String get I18nSettings_delayForNewEvents {
    return Intl.message(
      'Задержка перед показом новых отсечек',
      name: 'I18nSettings_delayForNewEvents',
      desc: '',
      args: [],
    );
  }

  /// `{milliseconds}мс`
  String I18nSettings_milliseconds(Object milliseconds) {
    return Intl.message(
      '$millisecondsмс',
      name: 'I18nSettings_milliseconds',
      desc: '',
      args: [milliseconds],
    );
  }

  /// `Автоподстановка номеров`
  String get I18nSettings_autosubstitution {
    return Intl.message(
      'Автоподстановка номеров',
      name: 'I18nSettings_autosubstitution',
      desc: '',
      args: [],
    );
  }

  /// `Задержка перед автоматическим подставлением новых номеров`
  String get I18nSettings_autosubstitutionDelay {
    return Intl.message(
      'Задержка перед автоматическим подставлением новых номеров',
      name: 'I18nSettings_autosubstitutionDelay',
      desc: '',
      args: [],
    );
  }

  /// `Кнопка "отсечка"`
  String get I18nSettings_finishButton {
    return Intl.message(
      'Кнопка "отсечка"',
      name: 'I18nSettings_finishButton',
      desc: '',
      args: [],
    );
  }

  /// `Размер кнопки "отсечка"`
  String get I18nSettings_finishButtonSize {
    return Intl.message(
      'Размер кнопки "отсечка"',
      name: 'I18nSettings_finishButtonSize',
      desc: '',
      args: [],
    );
  }

  /// `Размер кнопки "отсечка" на финишном экране`
  String get I18nSettings_finishButtonSizeDescription {
    return Intl.message(
      'Размер кнопки "отсечка" на финишном экране',
      name: 'I18nSettings_finishButtonSizeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Обновление`
  String get I18nSettings_update {
    return Intl.message(
      'Обновление',
      name: 'I18nSettings_update',
      desc: '',
      args: [],
    );
  }

  /// `Проверка обновлений при старте`
  String get I18nSettings_checkUpdateAtStartup {
    return Intl.message(
      'Проверка обновлений при старте',
      name: 'I18nSettings_checkUpdateAtStartup',
      desc: '',
      args: [],
    );
  }

  /// `Темы`
  String get I18nSettings_themes {
    return Intl.message(
      'Темы',
      name: 'I18nSettings_themes',
      desc: '',
      args: [],
    );
  }

  /// `Журнал`
  String get I18nSettings_journal {
    return Intl.message(
      'Журнал',
      name: 'I18nSettings_journal',
      desc: '',
      args: [],
    );
  }

  /// `Количество показываемых записей`
  String get I18nSettings_journalLinesNumber {
    return Intl.message(
      'Количество показываемых записей',
      name: 'I18nSettings_journalLinesNumber',
      desc: '',
      args: [],
    );
  }

  /// `Количество отображамых строк в журнале`
  String get I18nSettings_journalLinesNumberPopup {
    return Intl.message(
      'Количество отображамых строк в журнале',
      name: 'I18nSettings_journalLinesNumberPopup',
      desc: '',
      args: [],
    );
  }

  /// `Количество строк`
  String get I18nSettings_numberOfLines {
    return Intl.message(
      'Количество строк',
      name: 'I18nSettings_numberOfLines',
      desc: '',
      args: [],
    );
  }

  /// `Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений`
  String get I18nSettings_enterNumber {
    return Intl.message(
      'Введите положительное число,\r\nпустая строка или отрицательное\r\n- без ограничений',
      name: 'I18nSettings_enterNumber',
      desc: '',
      args: [],
    );
  }

  /// `По умолчанию`
  String get I18nSettings_defaults {
    return Intl.message(
      'По умолчанию',
      name: 'I18nSettings_defaults',
      desc: '',
      args: [],
    );
  }

  /// `Настройки по умолчанию`
  String get I18nSettings_resetToDefaults {
    return Intl.message(
      'Настройки по умолчанию',
      name: 'I18nSettings_resetToDefaults',
      desc: '',
      args: [],
    );
  }

  /// `Задержка`
  String get I18nSettings_delay {
    return Intl.message(
      'Задержка',
      name: 'I18nSettings_delay',
      desc: '',
      args: [],
    );
  }

  /// `Неверная задержка`
  String get I18nSettings_incorrectDelay {
    return Intl.message(
      'Неверная задержка',
      name: 'I18nSettings_incorrectDelay',
      desc: '',
      args: [],
    );
  }

  /// `Тембр голоса`
  String get I18nSettings_voicePitch {
    return Intl.message(
      'Тембр голоса',
      name: 'I18nSettings_voicePitch',
      desc: '',
      args: [],
    );
  }

  /// `Скорость произношения`
  String get I18nSettings_voiceRate {
    return Intl.message(
      'Скорость произношения',
      name: 'I18nSettings_voiceRate',
      desc: '',
      args: [],
    );
  }

  /// `Громкость голоса`
  String get I18nSettings_voiceVolume {
    return Intl.message(
      'Громкость голоса',
      name: 'I18nSettings_voiceVolume',
      desc: '',
      args: [],
    );
  }

  /// `Синяя светлая тема`
  String get I18nSettings_lightBlue {
    return Intl.message(
      'Синяя светлая тема',
      name: 'I18nSettings_lightBlue',
      desc: '',
      args: [],
    );
  }

  /// `Синяя тёмная тема`
  String get I18nSettings_darkBlue {
    return Intl.message(
      'Синяя тёмная тема',
      name: 'I18nSettings_darkBlue',
      desc: '',
      args: [],
    );
  }

  /// `Красная светлая тема`
  String get I18nSettings_lightRed {
    return Intl.message(
      'Красная светлая тема',
      name: 'I18nSettings_lightRed',
      desc: '',
      args: [],
    );
  }

  /// `Красная тёмная тема`
  String get I18nSettings_darkRed {
    return Intl.message(
      'Красная тёмная тема',
      name: 'I18nSettings_darkRed',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер финишировавшего участника`
  String get I18nProtocol_enterFinishNumber {
    return Intl.message(
      'Введите номер финишировавшего участника',
      name: 'I18nProtocol_enterFinishNumber',
      desc: '',
      args: [],
    );
  }

  /// `Номер`
  String get I18nProtocol_number {
    return Intl.message(
      'Номер',
      name: 'I18nProtocol_number',
      desc: '',
      args: [],
    );
  }

  /// `Неверный номер`
  String get I18nProtocol_incorrectNumber {
    return Intl.message(
      'Неверный номер',
      name: 'I18nProtocol_incorrectNumber',
      desc: '',
      args: [],
    );
  }

  /// `Предупреждение`
  String get I18nProtocol_warning {
    return Intl.message(
      'Предупреждение',
      name: 'I18nProtocol_warning',
      desc: '',
      args: [],
    );
  }

  /// `Участнику с номером {number} уже присвоено финишное время. Установить новое значение?`
  String I18nProtocol_updateNumber(Object number) {
    return Intl.message(
      'Участнику с номером $number уже присвоено финишное время. Установить новое значение?',
      name: 'I18nProtocol_updateNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Скрыть`
  String get I18nProtocol_hide {
    return Intl.message(
      'Скрыть',
      name: 'I18nProtocol_hide',
      desc: '',
      args: [],
    );
  }

  /// `Финишировал номер {number}`
  String I18nProtocol_finishNumber(Object number) {
    return Intl.message(
      'Финишировал номер $number',
      name: 'I18nProtocol_finishNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Убрать номер`
  String get I18nProtocol_clearNumber {
    return Intl.message(
      'Убрать номер',
      name: 'I18nProtocol_clearNumber',
      desc: '',
      args: [],
    );
  }

  /// `Скрыть всё`
  String get I18nProtocol_hideAll {
    return Intl.message(
      'Скрыть всё',
      name: 'I18nProtocol_hideAll',
      desc: '',
      args: [],
    );
  }

  /// `Не стартовал`
  String get I18nProtocol_didNotStart {
    return Intl.message(
      'Не стартовал',
      name: 'I18nProtocol_didNotStart',
      desc: '',
      args: [],
    );
  }

  /// `Не финишировал`
  String get I18nProtocol_didNotFinish {
    return Intl.message(
      'Не финишировал',
      name: 'I18nProtocol_didNotFinish',
      desc: '',
      args: [],
    );
  }

  /// `Тип`
  String get I18nProtocol_type {
    return Intl.message(
      'Тип',
      name: 'I18nProtocol_type',
      desc: '',
      args: [],
    );
  }

  /// `Время`
  String get I18nProtocol_time {
    return Intl.message(
      'Время',
      name: 'I18nProtocol_time',
      desc: '',
      args: [],
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
