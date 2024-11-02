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

  /// `Редактировать`
  String get I18nCore_edit {
    return Intl.message(
      'Редактировать',
      name: 'I18nCore_edit',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get I18nCore_delete {
    return Intl.message(
      'Удалить',
      name: 'I18nCore_delete',
      desc: '',
      args: [],
    );
  }

  /// `Предупреждение`
  String get I18nCore_warning {
    return Intl.message(
      'Предупреждение',
      name: 'I18nCore_warning',
      desc: '',
      args: [],
    );
  }

  /// `Поправка`
  String get I18nCore_correction {
    return Intl.message(
      'Поправка',
      name: 'I18nCore_correction',
      desc: '',
      args: [],
    );
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

  /// `Язык`
  String get I18nSettings_language {
    return Intl.message(
      'Язык',
      name: 'I18nSettings_language',
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

  /// `Использовать время приложения`
  String get I18nSettings_countdownFromApp {
    return Intl.message(
      'Использовать время приложения',
      name: 'I18nSettings_countdownFromApp',
      desc: '',
      args: [],
    );
  }

  /// `Для озвучивания без модуля`
  String get I18nSettings_countdownFromAppDetails {
    return Intl.message(
      'Для озвучивания без модуля',
      name: 'I18nSettings_countdownFromAppDetails',
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

  /// `Использовать время приложения`
  String get I18nSettings_voiceFromApp {
    return Intl.message(
      'Использовать время приложения',
      name: 'I18nSettings_voiceFromApp',
      desc: '',
      args: [],
    );
  }

  /// `Для озвучивания без модуля`
  String get I18nSettings_voiceFromAppDetails {
    return Intl.message(
      'Для озвучивания без модуля',
      name: 'I18nSettings_voiceFromAppDetails',
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
  String get I18nSettings_voiceLanguage {
    return Intl.message(
      'Язык',
      name: 'I18nSettings_voiceLanguage',
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

  /// `Светлая тема`
  String get I18nSettings_brightness {
    return Intl.message(
      'Светлая тема',
      name: 'I18nSettings_brightness',
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

  /// `NTP смещение`
  String get I18nSettings_ntpOffset {
    return Intl.message(
      'NTP смещение',
      name: 'I18nSettings_ntpOffset',
      desc: '',
      args: [],
    );
  }

  /// `Синхронизировать при старте приложения`
  String get I18nSettings_ntpOffsetDescription {
    return Intl.message(
      'Синхронизировать при старте приложения',
      name: 'I18nSettings_ntpOffsetDescription',
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

  /// `Результаты стартов гонки {raceName}, этап {stageName}`
  String I18nProtocol_shareStartResults(Object raceName, Object stageName) {
    return Intl.message(
      'Результаты стартов гонки $raceName, этап $stageName',
      name: 'I18nProtocol_shareStartResults',
      desc: '',
      args: [raceName, stageName],
    );
  }

  /// `Результаты финишей гонки {raceName}, этап {stageName}`
  String I18nProtocol_shareFinishResults(Object raceName, Object stageName) {
    return Intl.message(
      'Результаты финишей гонки $raceName, этап $stageName',
      name: 'I18nProtocol_shareFinishResults',
      desc: '',
      args: [raceName, stageName],
    );
  }

  /// `Неизвестное устройство`
  String get I18nBluetooth_unknownDevice {
    return Intl.message(
      'Неизвестное устройство',
      name: 'I18nBluetooth_unknownDevice',
      desc: '',
      args: [],
    );
  }

  /// `дБм`
  String get I18nBluetooth_dbm {
    return Intl.message(
      'дБм',
      name: 'I18nBluetooth_dbm',
      desc: '',
      args: [],
    );
  }

  /// `Выберите устройство`
  String get I18nBluetooth_selectDevice {
    return Intl.message(
      'Выберите устройство',
      name: 'I18nBluetooth_selectDevice',
      desc: '',
      args: [],
    );
  }

  /// `Обратный отсчёт`
  String get I18nCountdown_countdown {
    return Intl.message(
      'Обратный отсчёт',
      name: 'I18nCountdown_countdown',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get I18nDrawer_settings {
    return Intl.message(
      'Настройки',
      name: 'I18nDrawer_settings',
      desc: '',
      args: [],
    );
  }

  /// `Помощь`
  String get I18nDrawer_help {
    return Intl.message(
      'Помощь',
      name: 'I18nDrawer_help',
      desc: '',
      args: [],
    );
  }

  /// `О программе`
  String get I18nDrawer_about {
    return Intl.message(
      'О программе',
      name: 'I18nDrawer_about',
      desc: '',
      args: [],
    );
  }

  /// `v{version}`
  String I18nDrawer_version(Object version) {
    return Intl.message(
      'v$version',
      name: 'I18nDrawer_version',
      desc: '',
      args: [version],
    );
  }

  /// `Руководство`
  String get I18nHelp_manual {
    return Intl.message(
      'Руководство',
      name: 'I18nHelp_manual',
      desc: '',
      args: [],
    );
  }

  /// `# Entime mobile\n\nПеред началом работы можно изменить настройки приложения.\n\n![](resource:assets/1.png)\n\n - Включить звук обратного отсчёта\n - Включить и настроить голосовые оповещения\n - Отключить выключение эрана во время работы приложения.\n\n![](resource:assets/9.png)\n![](resource:assets/11.png)\n\nДля непосредственной работы нужно выбрать файл стартового протокола.\n\n![](resource:assets/2.png)\n\nЗатем bluetooth модуль, который предварительно должен быть сопряжён с мобильным устройством.\n\n![](resource:assets/4.png)\n\nПосле выбора bluetooth модуля, нужно нажать на любой из появившихся bluetooth значков, для соединения с модулем.\n\n![](resource:assets/5.png)\n\nПосле установки соединения, можно ~~изменить~~ пока только посмотреть настройки модуля.\n\n![](resource:assets/8.png)\n\n\nДля работы на старте переходим во вкладку "Start", в ней отображается стартовый протокол.\n\nВ первом столбце номер участника, во втором - плановое стартовое время, в третьем - реальное стартовое время (поступает от стартового модуля), в четвёртом - поправка в миллисекундах относительно планового времени старта.\n\n| Номер | Время старта | Фактическое время старта | Поправка |\n|-------|--------------|--------------------------|----------|\n\nЕсли участник не стартовал, выставить DNS можно свайпом в левую сторону на строке с нужным номером.\n\nПосле окончания стартов передать результаты можно нажав стандартную кнопку **share** вверху.\n\n![](resource:assets/12.png)\n\nПри нажатии на синий плюс внизу, можно добавить нового участника, либо изменить время старта уже существующего.\n\nДля этого в открывшемся диалоге вводим номер и новое стартовое время.\n\n![](resource:assets/20.png)\n\nДля работы на финише переходим во вкладку "Finish", в ней отображаются финишные времена, введённые либо вручную, при нажатии на иконку руки внизу экрана, либо полученные от финишного модуля. Значок слева поможет определить, как именно было получено значение времени финиша.\n\nВнизу отображаются номера гонщиков, которые сейчас должны быть на трассе.\n\n![](resource:assets/13.png)\n\nДля присвоения номеру времени финиша, либо перетащите номер снизу на нужное время, либо выставите номер вручную из диалога, который появится при нажатии на любое значение времени в основной таблице.\n\n![](resource:assets/15.png)\n\nОтработанные, либо ненужные времена финиша, можно либо скрывать поодиночке свайпом в любую сторону,\n\n![](resource:assets/17.png)\n\nлибо сразу все из всплывающего меню, которое появляется при долгом нажатии на любом значении времени.\n\n![](resource:assets/14.png)\n\nПосле окончания заездов передать результаты финиша можно нажав стандартную кнопку **share** вверху.\n  `
  String get I18nHelp_manualMd {
    return Intl.message(
      '# Entime mobile\n\nПеред началом работы можно изменить настройки приложения.\n\n![](resource:assets/1.png)\n\n - Включить звук обратного отсчёта\n - Включить и настроить голосовые оповещения\n - Отключить выключение эрана во время работы приложения.\n\n![](resource:assets/9.png)\n![](resource:assets/11.png)\n\nДля непосредственной работы нужно выбрать файл стартового протокола.\n\n![](resource:assets/2.png)\n\nЗатем bluetooth модуль, который предварительно должен быть сопряжён с мобильным устройством.\n\n![](resource:assets/4.png)\n\nПосле выбора bluetooth модуля, нужно нажать на любой из появившихся bluetooth значков, для соединения с модулем.\n\n![](resource:assets/5.png)\n\nПосле установки соединения, можно ~~изменить~~ пока только посмотреть настройки модуля.\n\n![](resource:assets/8.png)\n\n\nДля работы на старте переходим во вкладку "Start", в ней отображается стартовый протокол.\n\nВ первом столбце номер участника, во втором - плановое стартовое время, в третьем - реальное стартовое время (поступает от стартового модуля), в четвёртом - поправка в миллисекундах относительно планового времени старта.\n\n| Номер | Время старта | Фактическое время старта | Поправка |\n|-------|--------------|--------------------------|----------|\n\nЕсли участник не стартовал, выставить DNS можно свайпом в левую сторону на строке с нужным номером.\n\nПосле окончания стартов передать результаты можно нажав стандартную кнопку **share** вверху.\n\n![](resource:assets/12.png)\n\nПри нажатии на синий плюс внизу, можно добавить нового участника, либо изменить время старта уже существующего.\n\nДля этого в открывшемся диалоге вводим номер и новое стартовое время.\n\n![](resource:assets/20.png)\n\nДля работы на финише переходим во вкладку "Finish", в ней отображаются финишные времена, введённые либо вручную, при нажатии на иконку руки внизу экрана, либо полученные от финишного модуля. Значок слева поможет определить, как именно было получено значение времени финиша.\n\nВнизу отображаются номера гонщиков, которые сейчас должны быть на трассе.\n\n![](resource:assets/13.png)\n\nДля присвоения номеру времени финиша, либо перетащите номер снизу на нужное время, либо выставите номер вручную из диалога, который появится при нажатии на любое значение времени в основной таблице.\n\n![](resource:assets/15.png)\n\nОтработанные, либо ненужные времена финиша, можно либо скрывать поодиночке свайпом в любую сторону,\n\n![](resource:assets/17.png)\n\nлибо сразу все из всплывающего меню, которое появляется при долгом нажатии на любом значении времени.\n\n![](resource:assets/14.png)\n\nПосле окончания заездов передать результаты финиша можно нажав стандартную кнопку **share** вверху.\n  ',
      name: 'I18nHelp_manualMd',
      desc: '',
      args: [],
    );
  }

  /// `Участнику под номером {number} уже установлена стартовая поправка {prevCorrection}. Обновить её на {correction}?`
  String I18nHome_updateAutomaticCorrection(
      Object number, Object prevCorrection, Object correction) {
    return Intl.message(
      'Участнику под номером $number уже установлена стартовая поправка $prevCorrection. Обновить её на $correction?',
      name: 'I18nHome_updateAutomaticCorrection',
      desc: '',
      args: [number, prevCorrection, correction],
    );
  }

  /// `Стартовое время {time} уже присвоено номеру {prevNumber}. Вы уверены что хотите установить одинаковое стартовое время для номеров {currentNumber} и {prevNumber}?\n`
  String I18nHome_equalStartTime(
      Object time, Object prevNumber, Object currentNumber) {
    return Intl.message(
      'Стартовое время $time уже присвоено номеру $prevNumber. Вы уверены что хотите установить одинаковое стартовое время для номеров $currentNumber и $prevNumber?\n',
      name: 'I18nHome_equalStartTime',
      desc: '',
      args: [time, prevNumber, currentNumber],
    );
  }

  /// `У номера {number} уже проставлена автоматическая стартовая отсечка: {automaticCorrection}. Установить новое стартовое время и удалить предыдущее значение?\n`
  String I18nHome_updateAutomaticStartCorrection(
      Object number, Object automaticCorrection) {
    return Intl.message(
      'У номера $number уже проставлена автоматическая стартовая отсечка: $automaticCorrection. Установить новое стартовое время и удалить предыдущее значение?\n',
      name: 'I18nHome_updateAutomaticStartCorrection',
      desc: '',
      args: [number, automaticCorrection],
    );
  }

  /// `У номера {number} уже проставлена ручная стартовая отсечка: {manualCorrection}. Установить новое стартовое время и удалить предыдущее значение?\n`
  String I18nHome_updateManualStartCorrection(
      Object number, Object manualCorrection) {
    return Intl.message(
      'У номера $number уже проставлена ручная стартовая отсечка: $manualCorrection. Установить новое стартовое время и удалить предыдущее значение?\n',
      name: 'I18nHome_updateManualStartCorrection',
      desc: '',
      args: [number, manualCorrection],
    );
  }

  /// `Ошибка при добавлении участника! Для продолжения нажмите "{cancelButtonLabel}"\n`
  String I18nHome_errorAddParticipant(Object cancelButtonLabel) {
    return Intl.message(
      'Ошибка при добавлении участника! Для продолжения нажмите "$cancelButtonLabel"\n',
      name: 'I18nHome_errorAddParticipant',
      desc: '',
      args: [cancelButtonLabel],
    );
  }

  /// `Начало`
  String get I18nHome_home {
    return Intl.message(
      'Начало',
      name: 'I18nHome_home',
      desc: '',
      args: [],
    );
  }

  /// `Старт`
  String get I18nHome_start {
    return Intl.message(
      'Старт',
      name: 'I18nHome_start',
      desc: '',
      args: [],
    );
  }

  /// `Финиш`
  String get I18nHome_finish {
    return Intl.message(
      'Финиш',
      name: 'I18nHome_finish',
      desc: '',
      args: [],
    );
  }

  /// `Доступна новая версия {version}`
  String I18nHome_updateAvailable(Object version) {
    return Intl.message(
      'Доступна новая версия $version',
      name: 'I18nHome_updateAvailable',
      desc: '',
      args: [version],
    );
  }

  /// `Обновить`
  String get I18nHome_update {
    return Intl.message(
      'Обновить',
      name: 'I18nHome_update',
      desc: '',
      args: [],
    );
  }

  /// `Добавить участника`
  String get I18nHome_addRacer {
    return Intl.message(
      'Добавить участника',
      name: 'I18nHome_addRacer',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться`
  String get I18nHome_share {
    return Intl.message(
      'Поделиться',
      name: 'I18nHome_share',
      desc: '',
      args: [],
    );
  }

  /// `Стартовый протокол`
  String get I18nHome_selectStartProtocol {
    return Intl.message(
      'Стартовый протокол',
      name: 'I18nHome_selectStartProtocol',
      desc: '',
      args: [],
    );
  }

  /// `Обратный отсчёт`
  String get I18nHome_countdown {
    return Intl.message(
      'Обратный отсчёт',
      name: 'I18nHome_countdown',
      desc: '',
      args: [],
    );
  }

  /// `Страница с обратным отсчётом`
  String get I18nHome_countdownPage {
    return Intl.message(
      'Страница с обратным отсчётом',
      name: 'I18nHome_countdownPage',
      desc: '',
      args: [],
    );
  }

  /// `FAB`
  String get I18nHome_fab {
    return Intl.message(
      'FAB',
      name: 'I18nHome_fab',
      desc: '',
      args: [],
    );
  }

  /// `Импорт стартового протокола`
  String get I18nHome_importStartProtocolCsv {
    return Intl.message(
      'Импорт стартового протокола',
      name: 'I18nHome_importStartProtocolCsv',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth`
  String get I18nHome_bluetooth {
    return Intl.message(
      'Bluetooth',
      name: 'I18nHome_bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Скрытые`
  String get I18nHome_hideMarked {
    return Intl.message(
      'Скрытые',
      name: 'I18nHome_hideMarked',
      desc: '',
      args: [],
    );
  }

  /// `С номерами`
  String get I18nHome_hideNumbers {
    return Intl.message(
      'С номерами',
      name: 'I18nHome_hideNumbers',
      desc: '',
      args: [],
    );
  }

  /// `Ручная отсечка`
  String get I18nHome_hideManual {
    return Intl.message(
      'Ручная отсечка',
      name: 'I18nHome_hideManual',
      desc: '',
      args: [],
    );
  }

  /// `По умолчанию`
  String get I18nHome_setDefaults {
    return Intl.message(
      'По умолчанию',
      name: 'I18nHome_setDefaults',
      desc: '',
      args: [],
    );
  }

  /// `Выберите соревнование`
  String get I18nInit_selectRace {
    return Intl.message(
      'Выберите соревнование',
      name: 'I18nInit_selectRace',
      desc: '',
      args: [],
    );
  }

  /// `Выберите спецучасток`
  String get I18nInit_selectStage {
    return Intl.message(
      'Выберите спецучасток',
      name: 'I18nInit_selectStage',
      desc: '',
      args: [],
    );
  }

  /// `Нажмите чтобы выбрать`
  String get I18nInit_pressToSelect {
    return Intl.message(
      'Нажмите чтобы выбрать',
      name: 'I18nInit_pressToSelect',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth модуль`
  String get I18nInit_bluetoothModule {
    return Intl.message(
      'Bluetooth модуль',
      name: 'I18nInit_bluetoothModule',
      desc: '',
      args: [],
    );
  }

  /// `Выберите файл`
  String get I18nInit_selectFile {
    return Intl.message(
      'Выберите файл',
      name: 'I18nInit_selectFile',
      desc: '',
      args: [],
    );
  }

  /// `Нет данных`
  String get I18nInit_noData {
    return Intl.message(
      'Нет данных',
      name: 'I18nInit_noData',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться`
  String get I18nInit_share {
    return Intl.message(
      'Поделиться',
      name: 'I18nInit_share',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get I18nInit_delete {
    return Intl.message(
      'Удалить',
      name: 'I18nInit_delete',
      desc: '',
      args: [],
    );
  }

  /// `Импорт протокола из csv`
  String get I18nInit_importFromCsv {
    return Intl.message(
      'Импорт протокола из csv',
      name: 'I18nInit_importFromCsv',
      desc: '',
      args: [],
    );
  }

  /// `Не стартовал`
  String get I18nStart_didNotStart {
    return Intl.message(
      'Не стартовал',
      name: 'I18nStart_didNotStart',
      desc: '',
      args: [],
    );
  }

  /// `Добавить участника`
  String get I18nStart_addParticipant {
    return Intl.message(
      'Добавить участника',
      name: 'I18nStart_addParticipant',
      desc: '',
      args: [],
    );
  }

  /// `№`
  String get I18nStart_sliverNumber {
    return Intl.message(
      '№',
      name: 'I18nStart_sliverNumber',
      desc: '',
      args: [],
    );
  }

  /// `Старт`
  String get I18nStart_sliverStart {
    return Intl.message(
      'Старт',
      name: 'I18nStart_sliverStart',
      desc: '',
      args: [],
    );
  }

  /// `Ручная\r\nпоправка`
  String get I18nStart_sliverManualCorrection {
    return Intl.message(
      'Ручная\r\nпоправка',
      name: 'I18nStart_sliverManualCorrection',
      desc: '',
      args: [],
    );
  }

  /// `Авто\r\nпоправка`
  String get I18nStart_sliverAutomaticCorrection {
    return Intl.message(
      'Авто\r\nпоправка',
      name: 'I18nStart_sliverAutomaticCorrection',
      desc: '',
      args: [],
    );
  }

  /// `Неверное значение поправки`
  String get I18nStart_incorrectCorrection {
    return Intl.message(
      'Неверное значение поправки',
      name: 'I18nStart_incorrectCorrection',
      desc: '',
      args: [],
    );
  }

  /// `Неверное значение времени`
  String get I18nStart_incorrectTime {
    return Intl.message(
      'Неверное значение времени',
      name: 'I18nStart_incorrectTime',
      desc: '',
      args: [],
    );
  }

  /// `Участник №{number}`
  String I18nStart_participantNumber(Object number) {
    return Intl.message(
      'Участник №$number',
      name: 'I18nStart_participantNumber',
      desc: '',
      args: [number],
    );
  }

  /// `№{number}, {name}`
  String I18nStart_participantNumberWithName(Object number, Object name) {
    return Intl.message(
      '№$number, $name',
      name: 'I18nStart_participantNumberWithName',
      desc: '',
      args: [number, name],
    );
  }

  /// `Категория: {category}`
  String I18nStart_participantCategory(Object category) {
    return Intl.message(
      'Категория: $category',
      name: 'I18nStart_participantCategory',
      desc: '',
      args: [category],
    );
  }

  /// `Никнейм: {nickname}`
  String I18nStart_participantNickname(Object nickname) {
    return Intl.message(
      'Никнейм: $nickname',
      name: 'I18nStart_participantNickname',
      desc: '',
      args: [nickname],
    );
  }

  /// `Город: {city}`
  String I18nStart_participantCity(Object city) {
    return Intl.message(
      'Город: $city',
      name: 'I18nStart_participantCity',
      desc: '',
      args: [city],
    );
  }

  /// `Команда: {team}`
  String I18nStart_participantTeam(Object team) {
    return Intl.message(
      'Команда: $team',
      name: 'I18nStart_participantTeam',
      desc: '',
      args: [team],
    );
  }

  /// `Год/Возраст: {year}`
  String I18nStart_participantYear(Object year) {
    return Intl.message(
      'Год/Возраст: $year',
      name: 'I18nStart_participantYear',
      desc: '',
      args: [year],
    );
  }

  /// `Время старта`
  String get I18nStart_startTime {
    return Intl.message(
      'Время старта',
      name: 'I18nStart_startTime',
      desc: '',
      args: [],
    );
  }

  /// `Время старта на смартфоне`
  String get I18nStart_startTimeAtSmartphone {
    return Intl.message(
      'Время старта на смартфоне',
      name: 'I18nStart_startTimeAtSmartphone',
      desc: '',
      args: [],
    );
  }

  /// `Информация Bluetooth`
  String get I18nLog_bluetoothInformation {
    return Intl.message(
      'Информация Bluetooth',
      name: 'I18nLog_bluetoothInformation',
      desc: '',
      args: [],
    );
  }

  /// `Записать новые настройки в модуль?`
  String get I18nModuleSettings_saveSettingsToModule {
    return Intl.message(
      'Записать новые настройки в модуль?',
      name: 'I18nModuleSettings_saveSettingsToModule',
      desc: '',
      args: [],
    );
  }

  /// `Настройки модуля`
  String get I18nModuleSettings_moduleSettings {
    return Intl.message(
      'Настройки модуля',
      name: 'I18nModuleSettings_moduleSettings',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка загрузки настроек!`
  String get I18nModuleSettings_errorLoadSettings {
    return Intl.message(
      'Ошибка загрузки настроек!',
      name: 'I18nModuleSettings_errorLoadSettings',
      desc: '',
      args: [],
    );
  }

  /// `Ждём настройки...`
  String get I18nModuleSettings_awaitingSettings {
    return Intl.message(
      'Ждём настройки...',
      name: 'I18nModuleSettings_awaitingSettings',
      desc: '',
      args: [],
    );
  }

  /// `Модуль`
  String get I18nModuleSettings_module {
    return Intl.message(
      'Модуль',
      name: 'I18nModuleSettings_module',
      desc: '',
      args: [],
    );
  }

  /// `Buzzer`
  String get I18nModuleSettings_buzzer {
    return Intl.message(
      'Buzzer',
      name: 'I18nModuleSettings_buzzer',
      desc: '',
      args: [],
    );
  }

  /// `Частота коротких гудков`
  String get I18nModuleSettings_shortFrequency {
    return Intl.message(
      'Частота коротких гудков',
      name: 'I18nModuleSettings_shortFrequency',
      desc: '',
      args: [],
    );
  }

  /// `Выберите частоту короткого гудка`
  String get I18nModuleSettings_selectShortFrequency {
    return Intl.message(
      'Выберите частоту короткого гудка',
      name: 'I18nModuleSettings_selectShortFrequency',
      desc: '',
      args: [],
    );
  }

  /// `Частота длинных гудков`
  String get I18nModuleSettings_longFrequency {
    return Intl.message(
      'Частота длинных гудков',
      name: 'I18nModuleSettings_longFrequency',
      desc: '',
      args: [],
    );
  }

  /// `Выберите частоту длинного гудка`
  String get I18nModuleSettings_selectLongFrequency {
    return Intl.message(
      'Выберите частоту длинного гудка',
      name: 'I18nModuleSettings_selectLongFrequency',
      desc: '',
      args: [],
    );
  }

  /// `Нота {note}, {frequency}Гц`
  String I18nModuleSettings_noteFrequency(Object note, Object frequency) {
    return Intl.message(
      'Нота $note, $frequencyГц',
      name: 'I18nModuleSettings_noteFrequency',
      desc: '',
      args: [note, frequency],
    );
  }

  /// `LoRa`
  String get I18nModuleSettings_lora {
    return Intl.message(
      'LoRa',
      name: 'I18nModuleSettings_lora',
      desc: '',
      args: [],
    );
  }

  /// `Частота`
  String get I18nModuleSettings_frequency {
    return Intl.message(
      'Частота',
      name: 'I18nModuleSettings_frequency',
      desc: '',
      args: [],
    );
  }

  /// `{frequency}Гц`
  String I18nModuleSettings_frequencyHz(Object frequency) {
    return Intl.message(
      '$frequencyГц',
      name: 'I18nModuleSettings_frequencyHz',
      desc: '',
      args: [frequency],
    );
  }

  /// `TX Power`
  String get I18nModuleSettings_txPower {
    return Intl.message(
      'TX Power',
      name: 'I18nModuleSettings_txPower',
      desc: '',
      args: [],
    );
  }

  /// `Spreading Factor`
  String get I18nModuleSettings_spreadingFactor {
    return Intl.message(
      'Spreading Factor',
      name: 'I18nModuleSettings_spreadingFactor',
      desc: '',
      args: [],
    );
  }

  /// `Signal Bandwidth`
  String get I18nModuleSettings_signalBandwidth {
    return Intl.message(
      'Signal Bandwidth',
      name: 'I18nModuleSettings_signalBandwidth',
      desc: '',
      args: [],
    );
  }

  /// `Coding Rate Denominator`
  String get I18nModuleSettings_codingRateDenominator {
    return Intl.message(
      'Coding Rate Denominator',
      name: 'I18nModuleSettings_codingRateDenominator',
      desc: '',
      args: [],
    );
  }

  /// `Preamble Length`
  String get I18nModuleSettings_preambleLength {
    return Intl.message(
      'Preamble Length',
      name: 'I18nModuleSettings_preambleLength',
      desc: '',
      args: [],
    );
  }

  /// `Sync Word`
  String get I18nModuleSettings_syncWord {
    return Intl.message(
      'Sync Word',
      name: 'I18nModuleSettings_syncWord',
      desc: '',
      args: [],
    );
  }

  /// `CRC`
  String get I18nModuleSettings_crc {
    return Intl.message(
      'CRC',
      name: 'I18nModuleSettings_crc',
      desc: '',
      args: [],
    );
  }

  /// `Экран`
  String get I18nModuleSettings_screen {
    return Intl.message(
      'Экран',
      name: 'I18nModuleSettings_screen',
      desc: '',
      args: [],
    );
  }

  /// `TFT`
  String get I18nModuleSettings_tft {
    return Intl.message(
      'TFT',
      name: 'I18nModuleSettings_tft',
      desc: '',
      args: [],
    );
  }

  /// `Спящий режим`
  String get I18nModuleSettings_sleepMode {
    return Intl.message(
      'Спящий режим',
      name: 'I18nModuleSettings_sleepMode',
      desc: '',
      args: [],
    );
  }

  /// `{seconds,plural, =1{{seconds} секунда}few{{seconds} секунды}other{секунд}}`
  String I18nModuleSettings_sleepModeSeconds(num seconds) {
    return Intl.plural(
      seconds,
      one: '$seconds секунда',
      few: '$seconds секунды',
      other: 'секунд',
      name: 'I18nModuleSettings_sleepModeSeconds',
      desc: '',
      args: [seconds],
    );
  }

  /// `Включать после события`
  String get I18nModuleSettings_turnOnAtEvent {
    return Intl.message(
      'Включать после события',
      name: 'I18nModuleSettings_turnOnAtEvent',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth`
  String get I18nModuleSettings_bluetooth {
    return Intl.message(
      'Bluetooth',
      name: 'I18nModuleSettings_bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Имя модуля`
  String get I18nModuleSettings_bluetoothModuleName {
    return Intl.message(
      'Имя модуля',
      name: 'I18nModuleSettings_bluetoothModuleName',
      desc: '',
      args: [],
    );
  }

  /// `Номер модуля`
  String get I18nModuleSettings_bluetoothModuleNumber {
    return Intl.message(
      'Номер модуля',
      name: 'I18nModuleSettings_bluetoothModuleNumber',
      desc: '',
      args: [],
    );
  }

  /// `Номер`
  String get I18nModuleSettings_bluetoothNumber {
    return Intl.message(
      'Номер',
      name: 'I18nModuleSettings_bluetoothNumber',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер модуля`
  String get I18nModuleSettings_enterBluetoothModuleNumber {
    return Intl.message(
      'Введите номер модуля',
      name: 'I18nModuleSettings_enterBluetoothModuleNumber',
      desc: '',
      args: [],
    );
  }

  /// `WiFi`
  String get I18nModuleSettings_wifi {
    return Intl.message(
      'WiFi',
      name: 'I18nModuleSettings_wifi',
      desc: '',
      args: [],
    );
  }

  /// `Сеть`
  String get I18nModuleSettings_wifiNetwork {
    return Intl.message(
      'Сеть',
      name: 'I18nModuleSettings_wifiNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Введите имя WiFi сети`
  String get I18nModuleSettings_enterWifiSsid {
    return Intl.message(
      'Введите имя WiFi сети',
      name: 'I18nModuleSettings_enterWifiSsid',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль WiFi сети {ssid}`
  String I18nModuleSettings_enterWifiPassword(Object ssid) {
    return Intl.message(
      'Введите пароль WiFi сети $ssid',
      name: 'I18nModuleSettings_enterWifiPassword',
      desc: '',
      args: [ssid],
    );
  }

  /// `Пароль`
  String get I18nModuleSettings_password {
    return Intl.message(
      'Пароль',
      name: 'I18nModuleSettings_password',
      desc: '',
      args: [],
    );
  }

  /// `VCC`
  String get I18nModuleSettings_vcc {
    return Intl.message(
      'VCC',
      name: 'I18nModuleSettings_vcc',
      desc: '',
      args: [],
    );
  }

  /// `R1`
  String get I18nModuleSettings_resistor1 {
    return Intl.message(
      'R1',
      name: 'I18nModuleSettings_resistor1',
      desc: '',
      args: [],
    );
  }

  /// `R2`
  String get I18nModuleSettings_resistor2 {
    return Intl.message(
      'R2',
      name: 'I18nModuleSettings_resistor2',
      desc: '',
      args: [],
    );
  }

  /// `Ом`
  String get I18nModuleSettings_ohm {
    return Intl.message(
      'Ом',
      name: 'I18nModuleSettings_ohm',
      desc: '',
      args: [],
    );
  }

  /// `{ohm} Ом`
  String I18nModuleSettings_resistorOhm(Object ohm) {
    return Intl.message(
      '$ohm Ом',
      name: 'I18nModuleSettings_resistorOhm',
      desc: '',
      args: [ohm],
    );
  }

  /// `Введите значение резистора R1`
  String get I18nModuleSettings_enterResistor1 {
    return Intl.message(
      'Введите значение резистора R1',
      name: 'I18nModuleSettings_enterResistor1',
      desc: '',
      args: [],
    );
  }

  /// `Введите значение резистора R2`
  String get I18nModuleSettings_enterResistor2 {
    return Intl.message(
      'Введите значение резистора R2',
      name: 'I18nModuleSettings_enterResistor2',
      desc: '',
      args: [],
    );
  }

  /// `Ввод измеренного напряжения`
  String get I18nModuleSettings_enterMeasuredVoltage {
    return Intl.message(
      'Ввод измеренного напряжения',
      name: 'I18nModuleSettings_enterMeasuredVoltage',
      desc: '',
      args: [],
    );
  }

  /// `мВ`
  String get I18nModuleSettings_mv {
    return Intl.message(
      'мВ',
      name: 'I18nModuleSettings_mv',
      desc: '',
      args: [],
    );
  }

  /// `Введите текущее значение напряжения на батареях`
  String get I18nModuleSettings_enterCurrentVoltage {
    return Intl.message(
      'Введите текущее значение напряжения на батареях',
      name: 'I18nModuleSettings_enterCurrentVoltage',
      desc: '',
      args: [],
    );
  }

  /// `Яркость`
  String get I18nModuleSettings_brightness {
    return Intl.message(
      'Яркость',
      name: 'I18nModuleSettings_brightness',
      desc: '',
      args: [],
    );
  }

  /// `Установите яркость панели`
  String get I18nModuleSettings_setBrightness {
    return Intl.message(
      'Установите яркость панели',
      name: 'I18nModuleSettings_setBrightness',
      desc: '',
      args: [],
    );
  }

  /// `Яркость {brightness}`
  String I18nModuleSettings_brightnessInt(Object brightness) {
    return Intl.message(
      'Яркость $brightness',
      name: 'I18nModuleSettings_brightnessInt',
      desc: '',
      args: [brightness],
    );
  }

  /// `Неизвестный тип модуля: {type}`
  String I18nModuleSettings_unknownModuleType(Object type) {
    return Intl.message(
      'Неизвестный тип модуля: $type',
      name: 'I18nModuleSettings_unknownModuleType',
      desc: '',
      args: [type],
    );
  }

  /// `Соревнования`
  String get I18nDatabase_races {
    return Intl.message(
      'Соревнования',
      name: 'I18nDatabase_races',
      desc: '',
      args: [],
    );
  }

  /// `Создать соревнование`
  String get I18nDatabase_addRace {
    return Intl.message(
      'Создать соревнование',
      name: 'I18nDatabase_addRace',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование`
  String get I18nDatabase_editRace {
    return Intl.message(
      'Редактирование',
      name: 'I18nDatabase_editRace',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get I18nDatabase_raceName {
    return Intl.message(
      'Название',
      name: 'I18nDatabase_raceName',
      desc: '',
      args: [],
    );
  }

  /// `Введите название соревнования`
  String get I18nDatabase_enterRaceName {
    return Intl.message(
      'Введите название соревнования',
      name: 'I18nDatabase_enterRaceName',
      desc: '',
      args: [],
    );
  }

  /// `Даты проведения`
  String get I18nDatabase_raceDates {
    return Intl.message(
      'Даты проведения',
      name: 'I18nDatabase_raceDates',
      desc: '',
      args: [],
    );
  }

  /// `Сайт`
  String get I18nDatabase_raceUrl {
    return Intl.message(
      'Сайт',
      name: 'I18nDatabase_raceUrl',
      desc: '',
      args: [],
    );
  }

  /// `Некорректная ссылка`
  String get I18nDatabase_incorrectRaceUrl {
    return Intl.message(
      'Некорректная ссылка',
      name: 'I18nDatabase_incorrectRaceUrl',
      desc: '',
      args: [],
    );
  }

  /// `Место проведения`
  String get I18nDatabase_raceLocation {
    return Intl.message(
      'Место проведения',
      name: 'I18nDatabase_raceLocation',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get I18nDatabase_raceDescription {
    return Intl.message(
      'Описание',
      name: 'I18nDatabase_raceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Создать спецучасток`
  String get I18nDatabase_addStage {
    return Intl.message(
      'Создать спецучасток',
      name: 'I18nDatabase_addStage',
      desc: '',
      args: [],
    );
  }

  /// `Название спецучастка`
  String get I18nDatabase_stageName {
    return Intl.message(
      'Название спецучастка',
      name: 'I18nDatabase_stageName',
      desc: '',
      args: [],
    );
  }

  /// `Введите название спецучастка`
  String get I18nDatabase_enterStageName {
    return Intl.message(
      'Введите название спецучастка',
      name: 'I18nDatabase_enterStageName',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get I18nDatabase_stageDescription {
    return Intl.message(
      'Описание',
      name: 'I18nDatabase_stageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Активный`
  String get I18nDatabase_isActiveStage {
    return Intl.message(
      'Активный',
      name: 'I18nDatabase_isActiveStage',
      desc: '',
      args: [],
    );
  }

  /// `Трейл`
  String get I18nDatabase_trail {
    return Intl.message(
      'Трейл',
      name: 'I18nDatabase_trail',
      desc: '',
      args: [],
    );
  }

  /// `Трейлы`
  String get I18nDatabase_trails {
    return Intl.message(
      'Трейлы',
      name: 'I18nDatabase_trails',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get I18nDatabase_trailName {
    return Intl.message(
      'Название',
      name: 'I18nDatabase_trailName',
      desc: '',
      args: [],
    );
  }

  /// `Введите название трейла`
  String get I18nDatabase_enterTrailName {
    return Intl.message(
      'Введите название трейла',
      name: 'I18nDatabase_enterTrailName',
      desc: '',
      args: [],
    );
  }

  /// `Длина`
  String get I18nDatabase_trailDistance {
    return Intl.message(
      'Длина',
      name: 'I18nDatabase_trailDistance',
      desc: '',
      args: [],
    );
  }

  /// `Неверная длина`
  String get I18nDatabase_incorrectTrailDistance {
    return Intl.message(
      'Неверная длина',
      name: 'I18nDatabase_incorrectTrailDistance',
      desc: '',
      args: [],
    );
  }

  /// `Перепад высот`
  String get I18nDatabase_trailElevation {
    return Intl.message(
      'Перепад высот',
      name: 'I18nDatabase_trailElevation',
      desc: '',
      args: [],
    );
  }

  /// `Неверный перепад высот`
  String get I18nDatabase_incorrectTrailElevation {
    return Intl.message(
      'Неверный перепад высот',
      name: 'I18nDatabase_incorrectTrailElevation',
      desc: '',
      args: [],
    );
  }

  /// `Трек`
  String get I18nDatabase_trailGpxTrack {
    return Intl.message(
      'Трек',
      name: 'I18nDatabase_trailGpxTrack',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка`
  String get I18nDatabase_trailUrl {
    return Intl.message(
      'Ссылка',
      name: 'I18nDatabase_trailUrl',
      desc: '',
      args: [],
    );
  }

  /// `Некорректная ссылка`
  String get I18nDatabase_incorrectTrailUrl {
    return Intl.message(
      'Некорректная ссылка',
      name: 'I18nDatabase_incorrectTrailUrl',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get I18nDatabase_trailDescription {
    return Intl.message(
      'Описание',
      name: 'I18nDatabase_trailDescription',
      desc: '',
      args: [],
    );
  }

  /// `Активен`
  String get I18nDatabase_trailIsActive {
    return Intl.message(
      'Активен',
      name: 'I18nDatabase_trailIsActive',
      desc: '',
      args: [],
    );
  }

  /// `NTP offset`
  String get I18nNtp_ntpOffset {
    return Intl.message(
      'NTP offset',
      name: 'I18nNtp_ntpOffset',
      desc: '',
      args: [],
    );
  }

  /// `Нажмите для синхронизации`
  String get I18nNtp_sync {
    return Intl.message(
      'Нажмите для синхронизации',
      name: 'I18nNtp_sync',
      desc: '',
      args: [],
    );
  }

  /// `Синхронизация...`
  String get I18nNtp_syncing {
    return Intl.message(
      'Синхронизация...',
      name: 'I18nNtp_syncing',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка синхронизации`
  String get I18nNtp_syncError {
    return Intl.message(
      'Ошибка синхронизации',
      name: 'I18nNtp_syncError',
      desc: '',
      args: [],
    );
  }

  /// `{offset,plural, =1{Смещение {offset} миллисекунда}few{Смещение {offset} миллисекунды}other{Смещение {offset} миллисекунд}}`
  String I18nNtp_offsetInMilliseconds(num offset) {
    return Intl.plural(
      offset,
      one: 'Смещение $offset миллисекунда',
      few: 'Смещение $offset миллисекунды',
      other: 'Смещение $offset миллисекунд',
      name: 'I18nNtp_offsetInMilliseconds',
      desc: '',
      args: [offset],
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
