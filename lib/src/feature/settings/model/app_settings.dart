import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings.dart';

part 'app_settings.freezed.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // звук
    required bool sound, // вкл/выкл

    // звук обратного отсчёта
    required bool beep,

    // голосовые сообщения
    required bool voice,
    required bool voiceName,
    required double volume, // громкость
    required double pitch, // тон речи
    required double rate, // скорость речи
    required String language, // = "ru-RU", // язык

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

    // выборка значений в финише
    required bool hideMarked,
    required bool hideNumbers,
    required bool hideManual,

    // восстанавливать Bluetooth подключение при обрыве
    required bool reconnect,

    // задержка в миллисекундах перед показыванием нового финишного времени
    required int finishDelay,

    // автоподстановка номеров в финишном протоколе
    required bool substituteNumbers,
    required int substituteNumbersDelay,

    // дельта в секундах для автоматического подставления стартового времени
    required int deltaInSeconds,

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

    // версия при предыдущем запуске
    required String previousVersion,
  }) = _AppSettings;

  const factory AppSettings.defaults({
    // звук
    @Default(true) bool sound, // вкл/выкл

    // звук обратного отсчёта
    @Default(true) bool beep,

    // голосовые сообщения
    @Default(true) bool voice, // использовать голосовые сообщения
    @Default(true) bool voiceName, // называть имена участников
    @Default(1.0) double volume, // громкость
    @Default(1.0) double pitch, // тон речи
    @Default(0.5) double rate, // скорость речи
    @Default('ru-RU') String language, // = "ru-RU", // язык

    // ToDo: не изменять эти настройки при установке значений по умолчанию
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

    // выборка значений в финише
    @Default(true) bool hideMarked,
    @Default(false) bool hideNumbers,
    @Default(false) bool hideManual,

    // восстанавливать Bluetooth подключение при обрыве
    @Default(true) bool reconnect,

    // задержка в миллисекундах перед показыванием нового финишного времени
    @Default(350) int finishDelay,

    // автоподстановка номеров в финишном протоколе
    @Default(false) bool substituteNumbers,
    @Default(500) int substituteNumbersDelay,

    // дельта в секундах для автоматического подставления стартового времени
    @Default(15) int deltaInSeconds,

    // лог
    // ограничение количества показываемых строк в окне лога
    // -1 = без ограничений
    @Default(-1) int logLimit,

    // активная тема
    // @Default(AppTheme.lightBlue) AppTheme appTheme,
    @Default(ColorSeed.blue) ColorSeed seedColor,
    @Default(Brightness.light)  Brightness brightness,
    @Default(-1.0) double contrastLevel,
    @Default(DynamicSchemeVariant.vibrant) DynamicSchemeVariant dynamicSchemeVariant,

    // версия при предыдущем запуске
    @Default('0.0.0') String previousVersion,
  }) = _AppSettingsDefaults;
}
