import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings.dart';

part 'app_settings.freezed.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // звук
    @Default(true) bool sound, // вкл/выкл

    // звук обратного отсчёта
    @Default(true) bool beep,

    // голосовые сообщения
    @Default(true) bool voice,
    @Default(true) bool voiceName,
    @Default(0.5) double volume, // громкость
    @Default(1) double pitch, // тон речи
    @Default(0.8) double rate, // скорость речи
    @Default('ru-RU') String language, // = "ru-RU", // язык

    @Default('') String recentFile,

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

    // лог
    // ограничение количества показываемых строк в окне лога
    // -1 = без ограничений
    @Default(-1) int logLimit,

    // активная тема
    @Default(AppTheme.lightBlue) AppTheme appTheme,
  }) = _AppSettings;
}
