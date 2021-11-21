part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object?> get props => [];
}

class SetDefaultSettings extends SettingsEvent {}

class SetBoolValueEvent extends SettingsEvent {
  final bool? sound;
  final bool? beep;
  final bool? voice;
  final bool? voiceName;
  final bool? wakelock;
  final bool? startFab;
  final bool? finishFab;
  final bool? countdown;
  final bool? countdownAtStartTime;
  final bool? checkUpdates;
  final bool? hideMarked;
  final bool? hideNumbers;
  final bool? hideManual;
  final bool? reconnect;
  final bool? substituteNumbers;

  const SetBoolValueEvent({
    this.sound,
    this.beep,
    this.voice,
    this.voiceName,
    this.wakelock,
    this.startFab,
    this.finishFab,
    this.countdown,
    this.countdownAtStartTime,
    this.checkUpdates,
    this.hideMarked,
    this.hideNumbers,
    this.hideManual,
    this.reconnect,
    this.substituteNumbers,
  });

  @override
  List<Object?> get props => [
        sound,
        beep,
        voice,
        voiceName,
        wakelock,
        startFab,
        finishFab,
        countdown,
        countdownAtStartTime,
        checkUpdates,
        hideMarked,
        hideNumbers,
        hideManual,
        reconnect,
        substituteNumbers,
      ];

  @override
  String toString() {
    String result = 'SetBoolValueEvent { ';
    if (sound != null) {
      result += 'sound: $sound';
    }
    if (beep != null) {
      result += 'beep: $beep';
    }
    if (voice != null) {
      result += 'voice: $voice';
    }
    if (voiceName != null) {
      result += 'voiceName: $voiceName';
    }
    if (wakelock != null) {
      result += 'wakelock: $wakelock';
    }
    if (startFab != null) {
      result += 'startFab: $startFab';
    }
    if (finishFab != null) {
      result += 'finishFab: $finishFab';
    }
    if (countdown != null) {
      result += 'countdown: $countdown';
    }
    if (countdownAtStartTime != null) {
      result += 'countdownAtStartTime: $countdownAtStartTime';
    }
    if (checkUpdates != null) {
      result += 'checkUpdates: $checkUpdates';
    }
    if (hideMarked != null) {
      result += 'hideMarked: $hideMarked';
    }
    if (hideNumbers != null) {
      result += 'hideNumbers: $hideNumbers';
    }
    if (hideManual != null) {
      result += 'hideManual: $hideManual';
    }
    if (reconnect != null) {
      result += 'reconnect: $reconnect';
    }
    if (substituteNumbers != null) {
      result += 'substituteNumbers: $substituteNumbers';
    }
    result += ' }';
    return result;
  }
}

class SetIntValueEvent extends SettingsEvent {
  final int? finishDelay;
  final int? substituteNumbersDelay;
  final int? logLimit;

  const SetIntValueEvent({
    this.finishDelay,
    this.substituteNumbersDelay,
    this.logLimit,
  });

  @override
  List<Object?> get props => [
        finishDelay,
        substituteNumbersDelay,
        logLimit,
      ];

  @override
  String toString() {
    String result = 'SetIntValueEvent { ';
    if (finishDelay != null) {
      result += 'finishDelay: $finishDelay';
    }
    if (substituteNumbersDelay != null) {
      result += 'substituteNumbersDelay: $substituteNumbersDelay';
    }
    if (logLimit != null) {
      result += 'log_limit: $logLimit';
    }
    result += ' }';
    return result;
  }
}

class SetDoubleValueEvent extends SettingsEvent {
  final double? volume; // громкость
  final double? pitch; // тон речи
  final double? rate; // скорость речи
  final double? startFabSize;
  final double? finishFabSize;
  final double? countdownSize;
  final double? countdownLeft;
  final double? countdownTop;

  const SetDoubleValueEvent({
    this.volume,
    this.pitch,
    this.rate,
    this.startFabSize,
    this.finishFabSize,
    this.countdownSize,
    this.countdownLeft,
    this.countdownTop,
  });

  @override
  List<Object?> get props => [
        volume,
        pitch,
        rate,
        startFabSize,
        finishFabSize,
        countdownSize,
        countdownLeft,
        countdownTop,
      ];

  @override
  String toString() {
    String result = 'SetDoubleValueEvent { ';
    if (volume != null) {
      result += 'volume: $volume';
    }
    if (pitch != null) {
      result += 'pitch: $pitch';
    }
    if (rate != null) {
      result += 'rate: $rate';
    }
    if (startFabSize != null) {
      result += 'startFabSize: $startFabSize';
    }
    if (finishFabSize != null) {
      result += 'finishFabSize: $finishFabSize';
    }
    if (countdownSize != null) {
      result += 'countdownSize: $countdownSize';
    }
    if (countdownLeft != null) {
      result += 'countdownLeft: $countdownLeft';
    }
    if (countdownTop != null) {
      result += 'countdownTop: $countdownTop';
    }
    result += ' }';
    return result;
  }
}

class SetStringValueEvent extends SettingsEvent {
  final String? language; // = "ru-RU"; // язык
  final String? recentFile;
  final String? previousVersion;

  const SetStringValueEvent({
    this.language,
    this.recentFile,
    this.previousVersion,
  });

  @override
  List<Object?> get props => [
        language,
        recentFile,
        previousVersion,
      ];

  @override
  String toString() {
    String result = 'SetStringValueEvent { ';
    if (language != null) {
      result += 'language: $language';
    }
    if (recentFile != null && recentFile!.isNotEmpty) {
      result += 'recentFile: $recentFile';
    }
    if (previousVersion != null) {
      result += 'previousVersion: $previousVersion';
    }
    result += ' }';
    return result;
  }
}

class ThemeChanged extends SettingsEvent {
  final AppTheme theme;

  const ThemeChanged(this.theme);

  @override
  List<Object> get props => [theme];

  @override
  String toString() => 'ThemeChanged { Theme: $theme }';
}
