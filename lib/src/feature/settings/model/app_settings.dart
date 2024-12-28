import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings.dart';

part 'app_settings.freezed.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // язык
    required String language, // = "ru", // локаль

    // восстанавливать Bluetooth подключение при обрыве
    required bool reconnect,

    // звук
    required bool sound, // вкл/выкл

    // звук обратного отсчёта
    required bool beep,
    // звуком обратного отсчёта управляет приложение
    required bool beepFromApp,

    // голосовые сообщения
    required bool voice,
    required bool voiceFromApp,
    required bool voiceName,
    required double volume, // громкость
    required double pitch, // тон речи
    required double rate, // скорость речи
    required String voiceLanguage, // = "ru-RU", // язык tts

    // id выбранного соревнования и участка
    required int raceId,
    required int stageId,

    // всегда включённый экран
    required bool wakelock,

    // кнопки "добавить вручную" на экранах старта и финиша
    required bool startFab,
    required double startFabSize,
    required bool finishFab,
    required double finishFabSize,

    // обратный отсчёт на экране старта
    required bool countdown,
    required double countdownSize,
    required double countdownLeft,
    required double countdownTop,

    // показывать обратный отсчёт вместо стартового времени
    required bool countdownAtStartTime,

    // проверка обновлений
    required bool checkUpdates,

    // выборка значений на старте
    required bool showDNS,
    required bool showDNF,
    required bool showDSQ,

    // выборка значений на финише
    required bool showHidden,
    required bool showNumbers,
    required bool showManual,

    // задержка в миллисекундах перед показыванием нового финишного времени
    required int finishDelay,

    // автоподстановка номеров в финишном протоколе
    required bool substituteNumbers,
    required int substituteNumbersDelay,

    // показывать разницу между автоматическим временем старта с модуля и временем устройства
    required bool showStartDifference,

    // показывать разницу цветом между автоматическим временем старта с модуля и временем устройства
    required bool showColorStartDifference,

    // разница между автоматическим временем старта с модуля и временем устройства в миллисекундах
    // при превышении которого будет цветовая индикация
    required int startDifferenceThreshold,

    // показывать разницу между временем финиша с модуля и временем устройства
    required bool showFinishDifference,

    // показывать разницу цветом между временем финиша с модуля и временем устройства
    required bool showColorFinishDifference,

    // разница между временем финиша с модуля и временем устройства в миллисекундах
    // при превышении которого будет цветовая индикация
    required int finishDifferenceThreshold,

    // дельта в секундах для автоматического подставления стартового времени
    required int deltaInSeconds,

    // задержка в миллисекундах перед обновлением стартовой поправки,
    // если она уже была установлена
    required int updateStartCorrectionDelay,

    // лог
    // ограничение количества показываемых строк в окне лога
    // -1 = без ограничений
    required int logLimit,

    // активная тема
    // required AppTheme appTheme,
    required ColorSeed seedColor,
    required Brightness brightness,
    required double contrastLevel,
    required DynamicSchemeVariant dynamicSchemeVariant,
    required bool isOLEDBackground,

    // версия при предыдущем запуске
    required String previousVersion,

    // обновлять ntp offset при запуске
    required bool updateNtpOffsetAtStartup,
  }) = _AppSettings;

  const factory AppSettings.defaults({
    // язык
    @Default('ru') String language,

    // восстанавливать Bluetooth подключение при обрыве
    @Default(true) bool reconnect,

    // звук
    @Default(true) bool sound, // вкл/выкл

    // звук обратного отсчёта
    @Default(true) bool beep,
    // звуком обратного отсчёта управляет приложение
    @Default(false) bool beepFromApp,

    // голосовые сообщения
    @Default(true) bool voice, // использовать голосовые сообщения
    @Default(false)
    bool
        voiceFromApp, // использовать голосовые сообщения и брать данные из приложения
    @Default(true) bool voiceName, // называть имена участников
    @Default(1.0) double volume, // громкость
    @Default(1.0) double pitch, // тон речи
    @Default(0.5) double rate, // скорость речи
    @Default('ru-RU') String voiceLanguage, // = "ru-RU", // язык

    // id выбранного соревнования и участка
    @Default(-1) int raceId,
    @Default(-1) int stageId,

    // всегда включённый экран
    @Default(true) bool wakelock,

    // кнопки "добавить вручную" на экранах старта и финиша
    @Default(true) bool startFab,
    @Default(75) double startFabSize,
    @Default(true) bool finishFab,
    @Default(75) double finishFabSize,

    // обратный отсчёт на экране старта
    @Default(false) bool countdown,
    @Default(75) double countdownSize,
    @Default(0) double countdownLeft,
    @Default(0) double countdownTop,

    // показывать обратный отсчёт вместо стартового времени
    @Default(true) bool countdownAtStartTime,

    // проверка обновлений
    @Default(true) bool checkUpdates,

    // выборка значений на старте
    @Default(false) bool showDNS,
    @Default(false) bool showDNF,
    @Default(false) bool showDSQ,

    // выборка значений на финише
    @Default(false) bool showHidden,
    @Default(true) bool showNumbers,
    @Default(true) bool showManual,

    // задержка в миллисекундах перед показыванием нового финишного времени
    @Default(350) int finishDelay,

    // автоподстановка номеров в финишном протоколе
    @Default(false) bool substituteNumbers,
    @Default(500) int substituteNumbersDelay,

    // показывать разницу между автоматическим временем старта с модуля и временем устройства
    @Default(false) bool showStartDifference,

    // показывать разницу цветом между автоматическим временем старта с модуля и временем устройства
    @Default(false) bool showColorStartDifference,

    // разница между автоматическим временем старта с модуля и временем устройства в миллисекундах
    // при превышении которого будет цветовая индикация
    @Default(2000) int startDifferenceThreshold,

    // показывать разницу между временем финиша с модуля и временем устройства
    @Default(false) bool showFinishDifference,

    // показывать разницу цветом между временем финиша с модуля и временем устройства
    @Default(false) bool showColorFinishDifference,

    // разница между временем финиша с модуля и временем устройства в миллисекундах
    // при превышении которого будет цветовая индикация
    @Default(2000) int finishDifferenceThreshold,

    // дельта в секундах для автоматического подставления стартового времени
    @Default(15) int deltaInSeconds,

    // задержка в миллисекундах перед обновлением стартовой поправки,
    // если она уже была установлена
    @Default(2000) int updateStartCorrectionDelay,

    // лог
    // ограничение количества показываемых строк в окне лога
    // -1 = без ограничений
    @Default(100) int logLimit,

    // активная тема
    // @Default(AppTheme.lightBlue) AppTheme appTheme,
    @Default(ColorSeed.blue) ColorSeed seedColor,
    @Default(Brightness.light) Brightness brightness,
    @Default(-1.0) double contrastLevel,
    @Default(DynamicSchemeVariant.vibrant)
    DynamicSchemeVariant dynamicSchemeVariant,
    @Default(false) bool isOLEDBackground,

    // версия при предыдущем запуске
    @Default('0.0.0') String previousVersion,

    // обновлять ntp offset при запуске
    @Default(false) bool updateNtpOffsetAtStartup,
  }) = _AppSettingsDefaults;
}
