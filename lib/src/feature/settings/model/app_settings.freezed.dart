// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSettings {

// язык
 String get language;// = "ru", // локаль
// восстанавливать Bluetooth подключение при обрыве
 bool get reconnect;// звук
 bool get sound;// вкл/выкл
// звук обратного отсчёта
 bool get beep;// звуком обратного отсчёта управляет приложение
 bool get beepFromApp;// голосовые сообщения
 bool get voice;// использовать голосовые сообщения
 bool get voiceFromApp;// использовать голосовые сообщения и брать данные из приложения
 bool get voiceName;// называть имена участников
 double get volume;// громкость
 double get pitch;// тон речи
 double get rate;// скорость речи
 String get voiceLanguage;// = "ru-RU", // язык tts
// id выбранного соревнования и участка
 int get raceId; int get stageId;// всегда включённый экран
 bool get wakelock;// кнопки "добавить вручную" на экранах старта и финиша
 bool get startFab; double get startFabSize; bool get finishFab; double get finishFabSize;// обратный отсчёт на экране старта
 bool get countdown; double get countdownSize; double get countdownLeft; double get countdownTop;// показывать обратный отсчёт вместо стартового времени
 bool get countdownAtStartTime;// проверка обновлений
 bool get checkUpdates;// выборка значений на старте
 bool get showDNS; bool get showDNF; bool get showDSQ;// выборка значений на финише
 bool get showHidden; bool get showNumbers; bool get showManual;// задержка в миллисекундах перед показыванием нового финишного времени
 int get finishDelay;// автоподстановка номеров в финишном протоколе
 bool get substituteNumbers; int get substituteNumbersDelay;// показывать разницу между автоматическим временем старта с модуля и временем устройства
 bool get showStartDifference;// показывать разницу цветом между автоматическим временем старта с модуля и временем устройства
 bool get showColorStartDifference;// разница между автоматическим временем старта с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
 int get startDifferenceThreshold;// показывать разницу между временем финиша с модуля и временем устройства
 bool get showFinishDifference;// показывать разницу цветом между временем финиша с модуля и временем устройства
 bool get showColorFinishDifference;// разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
 int get finishDifferenceThreshold;// дельта в секундах для автоматического подставления стартового времени
 int get deltaInSeconds;// задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
 int get updateStartCorrectionDelay;// лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
 int get logLimit;// активная тема
// required AppTheme appTheme,
 ColorSeed get seedColor; Brightness get brightness; double get contrastLevel; DynamicSchemeVariant get dynamicSchemeVariant; bool get isOLEDBackground;// версия при предыдущем запуске
 String get previousVersion;// обновлять ntp offset при запуске
 bool get updateNtpOffsetAtStartup;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.language, language) || other.language == language)&&(identical(other.reconnect, reconnect) || other.reconnect == reconnect)&&(identical(other.sound, sound) || other.sound == sound)&&(identical(other.beep, beep) || other.beep == beep)&&(identical(other.beepFromApp, beepFromApp) || other.beepFromApp == beepFromApp)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.voiceFromApp, voiceFromApp) || other.voiceFromApp == voiceFromApp)&&(identical(other.voiceName, voiceName) || other.voiceName == voiceName)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.pitch, pitch) || other.pitch == pitch)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.voiceLanguage, voiceLanguage) || other.voiceLanguage == voiceLanguage)&&(identical(other.raceId, raceId) || other.raceId == raceId)&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.wakelock, wakelock) || other.wakelock == wakelock)&&(identical(other.startFab, startFab) || other.startFab == startFab)&&(identical(other.startFabSize, startFabSize) || other.startFabSize == startFabSize)&&(identical(other.finishFab, finishFab) || other.finishFab == finishFab)&&(identical(other.finishFabSize, finishFabSize) || other.finishFabSize == finishFabSize)&&(identical(other.countdown, countdown) || other.countdown == countdown)&&(identical(other.countdownSize, countdownSize) || other.countdownSize == countdownSize)&&(identical(other.countdownLeft, countdownLeft) || other.countdownLeft == countdownLeft)&&(identical(other.countdownTop, countdownTop) || other.countdownTop == countdownTop)&&(identical(other.countdownAtStartTime, countdownAtStartTime) || other.countdownAtStartTime == countdownAtStartTime)&&(identical(other.checkUpdates, checkUpdates) || other.checkUpdates == checkUpdates)&&(identical(other.showDNS, showDNS) || other.showDNS == showDNS)&&(identical(other.showDNF, showDNF) || other.showDNF == showDNF)&&(identical(other.showDSQ, showDSQ) || other.showDSQ == showDSQ)&&(identical(other.showHidden, showHidden) || other.showHidden == showHidden)&&(identical(other.showNumbers, showNumbers) || other.showNumbers == showNumbers)&&(identical(other.showManual, showManual) || other.showManual == showManual)&&(identical(other.finishDelay, finishDelay) || other.finishDelay == finishDelay)&&(identical(other.substituteNumbers, substituteNumbers) || other.substituteNumbers == substituteNumbers)&&(identical(other.substituteNumbersDelay, substituteNumbersDelay) || other.substituteNumbersDelay == substituteNumbersDelay)&&(identical(other.showStartDifference, showStartDifference) || other.showStartDifference == showStartDifference)&&(identical(other.showColorStartDifference, showColorStartDifference) || other.showColorStartDifference == showColorStartDifference)&&(identical(other.startDifferenceThreshold, startDifferenceThreshold) || other.startDifferenceThreshold == startDifferenceThreshold)&&(identical(other.showFinishDifference, showFinishDifference) || other.showFinishDifference == showFinishDifference)&&(identical(other.showColorFinishDifference, showColorFinishDifference) || other.showColorFinishDifference == showColorFinishDifference)&&(identical(other.finishDifferenceThreshold, finishDifferenceThreshold) || other.finishDifferenceThreshold == finishDifferenceThreshold)&&(identical(other.deltaInSeconds, deltaInSeconds) || other.deltaInSeconds == deltaInSeconds)&&(identical(other.updateStartCorrectionDelay, updateStartCorrectionDelay) || other.updateStartCorrectionDelay == updateStartCorrectionDelay)&&(identical(other.logLimit, logLimit) || other.logLimit == logLimit)&&(identical(other.seedColor, seedColor) || other.seedColor == seedColor)&&(identical(other.brightness, brightness) || other.brightness == brightness)&&(identical(other.contrastLevel, contrastLevel) || other.contrastLevel == contrastLevel)&&(identical(other.dynamicSchemeVariant, dynamicSchemeVariant) || other.dynamicSchemeVariant == dynamicSchemeVariant)&&(identical(other.isOLEDBackground, isOLEDBackground) || other.isOLEDBackground == isOLEDBackground)&&(identical(other.previousVersion, previousVersion) || other.previousVersion == previousVersion)&&(identical(other.updateNtpOffsetAtStartup, updateNtpOffsetAtStartup) || other.updateNtpOffsetAtStartup == updateNtpOffsetAtStartup));
}


@override
int get hashCode => Object.hashAll([runtimeType,language,reconnect,sound,beep,beepFromApp,voice,voiceFromApp,voiceName,volume,pitch,rate,voiceLanguage,raceId,stageId,wakelock,startFab,startFabSize,finishFab,finishFabSize,countdown,countdownSize,countdownLeft,countdownTop,countdownAtStartTime,checkUpdates,showDNS,showDNF,showDSQ,showHidden,showNumbers,showManual,finishDelay,substituteNumbers,substituteNumbersDelay,showStartDifference,showColorStartDifference,startDifferenceThreshold,showFinishDifference,showColorFinishDifference,finishDifferenceThreshold,deltaInSeconds,updateStartCorrectionDelay,logLimit,seedColor,brightness,contrastLevel,dynamicSchemeVariant,isOLEDBackground,previousVersion,updateNtpOffsetAtStartup]);

@override
String toString() {
  return 'AppSettings(language: $language, reconnect: $reconnect, sound: $sound, beep: $beep, beepFromApp: $beepFromApp, voice: $voice, voiceFromApp: $voiceFromApp, voiceName: $voiceName, volume: $volume, pitch: $pitch, rate: $rate, voiceLanguage: $voiceLanguage, raceId: $raceId, stageId: $stageId, wakelock: $wakelock, startFab: $startFab, startFabSize: $startFabSize, finishFab: $finishFab, finishFabSize: $finishFabSize, countdown: $countdown, countdownSize: $countdownSize, countdownLeft: $countdownLeft, countdownTop: $countdownTop, countdownAtStartTime: $countdownAtStartTime, checkUpdates: $checkUpdates, showDNS: $showDNS, showDNF: $showDNF, showDSQ: $showDSQ, showHidden: $showHidden, showNumbers: $showNumbers, showManual: $showManual, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, showStartDifference: $showStartDifference, showColorStartDifference: $showColorStartDifference, startDifferenceThreshold: $startDifferenceThreshold, showFinishDifference: $showFinishDifference, showColorFinishDifference: $showColorFinishDifference, finishDifferenceThreshold: $finishDifferenceThreshold, deltaInSeconds: $deltaInSeconds, updateStartCorrectionDelay: $updateStartCorrectionDelay, logLimit: $logLimit, seedColor: $seedColor, brightness: $brightness, contrastLevel: $contrastLevel, dynamicSchemeVariant: $dynamicSchemeVariant, isOLEDBackground: $isOLEDBackground, previousVersion: $previousVersion, updateNtpOffsetAtStartup: $updateNtpOffsetAtStartup)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 String language, bool reconnect, bool sound, bool beep, bool beepFromApp, bool voice, bool voiceFromApp, bool voiceName, double volume, double pitch, double rate, String voiceLanguage, int raceId, int stageId, bool wakelock, bool startFab, double startFabSize, bool finishFab, double finishFabSize, bool countdown, double countdownSize, double countdownLeft, double countdownTop, bool countdownAtStartTime, bool checkUpdates, bool showDNS, bool showDNF, bool showDSQ, bool showHidden, bool showNumbers, bool showManual, int finishDelay, bool substituteNumbers, int substituteNumbersDelay, bool showStartDifference, bool showColorStartDifference, int startDifferenceThreshold, bool showFinishDifference, bool showColorFinishDifference, int finishDifferenceThreshold, int deltaInSeconds, int updateStartCorrectionDelay, int logLimit, ColorSeed seedColor, Brightness brightness, double contrastLevel, DynamicSchemeVariant dynamicSchemeVariant, bool isOLEDBackground, String previousVersion, bool updateNtpOffsetAtStartup
});




}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,Object? reconnect = null,Object? sound = null,Object? beep = null,Object? beepFromApp = null,Object? voice = null,Object? voiceFromApp = null,Object? voiceName = null,Object? volume = null,Object? pitch = null,Object? rate = null,Object? voiceLanguage = null,Object? raceId = null,Object? stageId = null,Object? wakelock = null,Object? startFab = null,Object? startFabSize = null,Object? finishFab = null,Object? finishFabSize = null,Object? countdown = null,Object? countdownSize = null,Object? countdownLeft = null,Object? countdownTop = null,Object? countdownAtStartTime = null,Object? checkUpdates = null,Object? showDNS = null,Object? showDNF = null,Object? showDSQ = null,Object? showHidden = null,Object? showNumbers = null,Object? showManual = null,Object? finishDelay = null,Object? substituteNumbers = null,Object? substituteNumbersDelay = null,Object? showStartDifference = null,Object? showColorStartDifference = null,Object? startDifferenceThreshold = null,Object? showFinishDifference = null,Object? showColorFinishDifference = null,Object? finishDifferenceThreshold = null,Object? deltaInSeconds = null,Object? updateStartCorrectionDelay = null,Object? logLimit = null,Object? seedColor = null,Object? brightness = null,Object? contrastLevel = null,Object? dynamicSchemeVariant = null,Object? isOLEDBackground = null,Object? previousVersion = null,Object? updateNtpOffsetAtStartup = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,reconnect: null == reconnect ? _self.reconnect : reconnect // ignore: cast_nullable_to_non_nullable
as bool,sound: null == sound ? _self.sound : sound // ignore: cast_nullable_to_non_nullable
as bool,beep: null == beep ? _self.beep : beep // ignore: cast_nullable_to_non_nullable
as bool,beepFromApp: null == beepFromApp ? _self.beepFromApp : beepFromApp // ignore: cast_nullable_to_non_nullable
as bool,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as bool,voiceFromApp: null == voiceFromApp ? _self.voiceFromApp : voiceFromApp // ignore: cast_nullable_to_non_nullable
as bool,voiceName: null == voiceName ? _self.voiceName : voiceName // ignore: cast_nullable_to_non_nullable
as bool,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,voiceLanguage: null == voiceLanguage ? _self.voiceLanguage : voiceLanguage // ignore: cast_nullable_to_non_nullable
as String,raceId: null == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int,stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,wakelock: null == wakelock ? _self.wakelock : wakelock // ignore: cast_nullable_to_non_nullable
as bool,startFab: null == startFab ? _self.startFab : startFab // ignore: cast_nullable_to_non_nullable
as bool,startFabSize: null == startFabSize ? _self.startFabSize : startFabSize // ignore: cast_nullable_to_non_nullable
as double,finishFab: null == finishFab ? _self.finishFab : finishFab // ignore: cast_nullable_to_non_nullable
as bool,finishFabSize: null == finishFabSize ? _self.finishFabSize : finishFabSize // ignore: cast_nullable_to_non_nullable
as double,countdown: null == countdown ? _self.countdown : countdown // ignore: cast_nullable_to_non_nullable
as bool,countdownSize: null == countdownSize ? _self.countdownSize : countdownSize // ignore: cast_nullable_to_non_nullable
as double,countdownLeft: null == countdownLeft ? _self.countdownLeft : countdownLeft // ignore: cast_nullable_to_non_nullable
as double,countdownTop: null == countdownTop ? _self.countdownTop : countdownTop // ignore: cast_nullable_to_non_nullable
as double,countdownAtStartTime: null == countdownAtStartTime ? _self.countdownAtStartTime : countdownAtStartTime // ignore: cast_nullable_to_non_nullable
as bool,checkUpdates: null == checkUpdates ? _self.checkUpdates : checkUpdates // ignore: cast_nullable_to_non_nullable
as bool,showDNS: null == showDNS ? _self.showDNS : showDNS // ignore: cast_nullable_to_non_nullable
as bool,showDNF: null == showDNF ? _self.showDNF : showDNF // ignore: cast_nullable_to_non_nullable
as bool,showDSQ: null == showDSQ ? _self.showDSQ : showDSQ // ignore: cast_nullable_to_non_nullable
as bool,showHidden: null == showHidden ? _self.showHidden : showHidden // ignore: cast_nullable_to_non_nullable
as bool,showNumbers: null == showNumbers ? _self.showNumbers : showNumbers // ignore: cast_nullable_to_non_nullable
as bool,showManual: null == showManual ? _self.showManual : showManual // ignore: cast_nullable_to_non_nullable
as bool,finishDelay: null == finishDelay ? _self.finishDelay : finishDelay // ignore: cast_nullable_to_non_nullable
as int,substituteNumbers: null == substituteNumbers ? _self.substituteNumbers : substituteNumbers // ignore: cast_nullable_to_non_nullable
as bool,substituteNumbersDelay: null == substituteNumbersDelay ? _self.substituteNumbersDelay : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
as int,showStartDifference: null == showStartDifference ? _self.showStartDifference : showStartDifference // ignore: cast_nullable_to_non_nullable
as bool,showColorStartDifference: null == showColorStartDifference ? _self.showColorStartDifference : showColorStartDifference // ignore: cast_nullable_to_non_nullable
as bool,startDifferenceThreshold: null == startDifferenceThreshold ? _self.startDifferenceThreshold : startDifferenceThreshold // ignore: cast_nullable_to_non_nullable
as int,showFinishDifference: null == showFinishDifference ? _self.showFinishDifference : showFinishDifference // ignore: cast_nullable_to_non_nullable
as bool,showColorFinishDifference: null == showColorFinishDifference ? _self.showColorFinishDifference : showColorFinishDifference // ignore: cast_nullable_to_non_nullable
as bool,finishDifferenceThreshold: null == finishDifferenceThreshold ? _self.finishDifferenceThreshold : finishDifferenceThreshold // ignore: cast_nullable_to_non_nullable
as int,deltaInSeconds: null == deltaInSeconds ? _self.deltaInSeconds : deltaInSeconds // ignore: cast_nullable_to_non_nullable
as int,updateStartCorrectionDelay: null == updateStartCorrectionDelay ? _self.updateStartCorrectionDelay : updateStartCorrectionDelay // ignore: cast_nullable_to_non_nullable
as int,logLimit: null == logLimit ? _self.logLimit : logLimit // ignore: cast_nullable_to_non_nullable
as int,seedColor: null == seedColor ? _self.seedColor : seedColor // ignore: cast_nullable_to_non_nullable
as ColorSeed,brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as Brightness,contrastLevel: null == contrastLevel ? _self.contrastLevel : contrastLevel // ignore: cast_nullable_to_non_nullable
as double,dynamicSchemeVariant: null == dynamicSchemeVariant ? _self.dynamicSchemeVariant : dynamicSchemeVariant // ignore: cast_nullable_to_non_nullable
as DynamicSchemeVariant,isOLEDBackground: null == isOLEDBackground ? _self.isOLEDBackground : isOLEDBackground // ignore: cast_nullable_to_non_nullable
as bool,previousVersion: null == previousVersion ? _self.previousVersion : previousVersion // ignore: cast_nullable_to_non_nullable
as String,updateNtpOffsetAtStartup: null == updateNtpOffsetAtStartup ? _self.updateNtpOffsetAtStartup : updateNtpOffsetAtStartup // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AppSettings implements AppSettings {
  const _AppSettings({required this.language, required this.reconnect, required this.sound, required this.beep, required this.beepFromApp, required this.voice, required this.voiceFromApp, required this.voiceName, required this.volume, required this.pitch, required this.rate, required this.voiceLanguage, required this.raceId, required this.stageId, required this.wakelock, required this.startFab, required this.startFabSize, required this.finishFab, required this.finishFabSize, required this.countdown, required this.countdownSize, required this.countdownLeft, required this.countdownTop, required this.countdownAtStartTime, required this.checkUpdates, required this.showDNS, required this.showDNF, required this.showDSQ, required this.showHidden, required this.showNumbers, required this.showManual, required this.finishDelay, required this.substituteNumbers, required this.substituteNumbersDelay, required this.showStartDifference, required this.showColorStartDifference, required this.startDifferenceThreshold, required this.showFinishDifference, required this.showColorFinishDifference, required this.finishDifferenceThreshold, required this.deltaInSeconds, required this.updateStartCorrectionDelay, required this.logLimit, required this.seedColor, required this.brightness, required this.contrastLevel, required this.dynamicSchemeVariant, required this.isOLEDBackground, required this.previousVersion, required this.updateNtpOffsetAtStartup});
  

// язык
@override final  String language;
// = "ru", // локаль
// восстанавливать Bluetooth подключение при обрыве
@override final  bool reconnect;
// звук
@override final  bool sound;
// вкл/выкл
// звук обратного отсчёта
@override final  bool beep;
// звуком обратного отсчёта управляет приложение
@override final  bool beepFromApp;
// голосовые сообщения
@override final  bool voice;
@override final  bool voiceFromApp;
@override final  bool voiceName;
@override final  double volume;
// громкость
@override final  double pitch;
// тон речи
@override final  double rate;
// скорость речи
@override final  String voiceLanguage;
// = "ru-RU", // язык tts
// id выбранного соревнования и участка
@override final  int raceId;
@override final  int stageId;
// всегда включённый экран
@override final  bool wakelock;
// кнопки "добавить вручную" на экранах старта и финиша
@override final  bool startFab;
@override final  double startFabSize;
@override final  bool finishFab;
@override final  double finishFabSize;
// обратный отсчёт на экране старта
@override final  bool countdown;
@override final  double countdownSize;
@override final  double countdownLeft;
@override final  double countdownTop;
// показывать обратный отсчёт вместо стартового времени
@override final  bool countdownAtStartTime;
// проверка обновлений
@override final  bool checkUpdates;
// выборка значений на старте
@override final  bool showDNS;
@override final  bool showDNF;
@override final  bool showDSQ;
// выборка значений на финише
@override final  bool showHidden;
@override final  bool showNumbers;
@override final  bool showManual;
// задержка в миллисекундах перед показыванием нового финишного времени
@override final  int finishDelay;
// автоподстановка номеров в финишном протоколе
@override final  bool substituteNumbers;
@override final  int substituteNumbersDelay;
// показывать разницу между автоматическим временем старта с модуля и временем устройства
@override final  bool showStartDifference;
// показывать разницу цветом между автоматическим временем старта с модуля и временем устройства
@override final  bool showColorStartDifference;
// разница между автоматическим временем старта с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
@override final  int startDifferenceThreshold;
// показывать разницу между временем финиша с модуля и временем устройства
@override final  bool showFinishDifference;
// показывать разницу цветом между временем финиша с модуля и временем устройства
@override final  bool showColorFinishDifference;
// разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
@override final  int finishDifferenceThreshold;
// дельта в секундах для автоматического подставления стартового времени
@override final  int deltaInSeconds;
// задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
@override final  int updateStartCorrectionDelay;
// лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
@override final  int logLimit;
// активная тема
// required AppTheme appTheme,
@override final  ColorSeed seedColor;
@override final  Brightness brightness;
@override final  double contrastLevel;
@override final  DynamicSchemeVariant dynamicSchemeVariant;
@override final  bool isOLEDBackground;
// версия при предыдущем запуске
@override final  String previousVersion;
// обновлять ntp offset при запуске
@override final  bool updateNtpOffsetAtStartup;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsCopyWith<_AppSettings> get copyWith => __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.language, language) || other.language == language)&&(identical(other.reconnect, reconnect) || other.reconnect == reconnect)&&(identical(other.sound, sound) || other.sound == sound)&&(identical(other.beep, beep) || other.beep == beep)&&(identical(other.beepFromApp, beepFromApp) || other.beepFromApp == beepFromApp)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.voiceFromApp, voiceFromApp) || other.voiceFromApp == voiceFromApp)&&(identical(other.voiceName, voiceName) || other.voiceName == voiceName)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.pitch, pitch) || other.pitch == pitch)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.voiceLanguage, voiceLanguage) || other.voiceLanguage == voiceLanguage)&&(identical(other.raceId, raceId) || other.raceId == raceId)&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.wakelock, wakelock) || other.wakelock == wakelock)&&(identical(other.startFab, startFab) || other.startFab == startFab)&&(identical(other.startFabSize, startFabSize) || other.startFabSize == startFabSize)&&(identical(other.finishFab, finishFab) || other.finishFab == finishFab)&&(identical(other.finishFabSize, finishFabSize) || other.finishFabSize == finishFabSize)&&(identical(other.countdown, countdown) || other.countdown == countdown)&&(identical(other.countdownSize, countdownSize) || other.countdownSize == countdownSize)&&(identical(other.countdownLeft, countdownLeft) || other.countdownLeft == countdownLeft)&&(identical(other.countdownTop, countdownTop) || other.countdownTop == countdownTop)&&(identical(other.countdownAtStartTime, countdownAtStartTime) || other.countdownAtStartTime == countdownAtStartTime)&&(identical(other.checkUpdates, checkUpdates) || other.checkUpdates == checkUpdates)&&(identical(other.showDNS, showDNS) || other.showDNS == showDNS)&&(identical(other.showDNF, showDNF) || other.showDNF == showDNF)&&(identical(other.showDSQ, showDSQ) || other.showDSQ == showDSQ)&&(identical(other.showHidden, showHidden) || other.showHidden == showHidden)&&(identical(other.showNumbers, showNumbers) || other.showNumbers == showNumbers)&&(identical(other.showManual, showManual) || other.showManual == showManual)&&(identical(other.finishDelay, finishDelay) || other.finishDelay == finishDelay)&&(identical(other.substituteNumbers, substituteNumbers) || other.substituteNumbers == substituteNumbers)&&(identical(other.substituteNumbersDelay, substituteNumbersDelay) || other.substituteNumbersDelay == substituteNumbersDelay)&&(identical(other.showStartDifference, showStartDifference) || other.showStartDifference == showStartDifference)&&(identical(other.showColorStartDifference, showColorStartDifference) || other.showColorStartDifference == showColorStartDifference)&&(identical(other.startDifferenceThreshold, startDifferenceThreshold) || other.startDifferenceThreshold == startDifferenceThreshold)&&(identical(other.showFinishDifference, showFinishDifference) || other.showFinishDifference == showFinishDifference)&&(identical(other.showColorFinishDifference, showColorFinishDifference) || other.showColorFinishDifference == showColorFinishDifference)&&(identical(other.finishDifferenceThreshold, finishDifferenceThreshold) || other.finishDifferenceThreshold == finishDifferenceThreshold)&&(identical(other.deltaInSeconds, deltaInSeconds) || other.deltaInSeconds == deltaInSeconds)&&(identical(other.updateStartCorrectionDelay, updateStartCorrectionDelay) || other.updateStartCorrectionDelay == updateStartCorrectionDelay)&&(identical(other.logLimit, logLimit) || other.logLimit == logLimit)&&(identical(other.seedColor, seedColor) || other.seedColor == seedColor)&&(identical(other.brightness, brightness) || other.brightness == brightness)&&(identical(other.contrastLevel, contrastLevel) || other.contrastLevel == contrastLevel)&&(identical(other.dynamicSchemeVariant, dynamicSchemeVariant) || other.dynamicSchemeVariant == dynamicSchemeVariant)&&(identical(other.isOLEDBackground, isOLEDBackground) || other.isOLEDBackground == isOLEDBackground)&&(identical(other.previousVersion, previousVersion) || other.previousVersion == previousVersion)&&(identical(other.updateNtpOffsetAtStartup, updateNtpOffsetAtStartup) || other.updateNtpOffsetAtStartup == updateNtpOffsetAtStartup));
}


@override
int get hashCode => Object.hashAll([runtimeType,language,reconnect,sound,beep,beepFromApp,voice,voiceFromApp,voiceName,volume,pitch,rate,voiceLanguage,raceId,stageId,wakelock,startFab,startFabSize,finishFab,finishFabSize,countdown,countdownSize,countdownLeft,countdownTop,countdownAtStartTime,checkUpdates,showDNS,showDNF,showDSQ,showHidden,showNumbers,showManual,finishDelay,substituteNumbers,substituteNumbersDelay,showStartDifference,showColorStartDifference,startDifferenceThreshold,showFinishDifference,showColorFinishDifference,finishDifferenceThreshold,deltaInSeconds,updateStartCorrectionDelay,logLimit,seedColor,brightness,contrastLevel,dynamicSchemeVariant,isOLEDBackground,previousVersion,updateNtpOffsetAtStartup]);

@override
String toString() {
  return 'AppSettings(language: $language, reconnect: $reconnect, sound: $sound, beep: $beep, beepFromApp: $beepFromApp, voice: $voice, voiceFromApp: $voiceFromApp, voiceName: $voiceName, volume: $volume, pitch: $pitch, rate: $rate, voiceLanguage: $voiceLanguage, raceId: $raceId, stageId: $stageId, wakelock: $wakelock, startFab: $startFab, startFabSize: $startFabSize, finishFab: $finishFab, finishFabSize: $finishFabSize, countdown: $countdown, countdownSize: $countdownSize, countdownLeft: $countdownLeft, countdownTop: $countdownTop, countdownAtStartTime: $countdownAtStartTime, checkUpdates: $checkUpdates, showDNS: $showDNS, showDNF: $showDNF, showDSQ: $showDSQ, showHidden: $showHidden, showNumbers: $showNumbers, showManual: $showManual, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, showStartDifference: $showStartDifference, showColorStartDifference: $showColorStartDifference, startDifferenceThreshold: $startDifferenceThreshold, showFinishDifference: $showFinishDifference, showColorFinishDifference: $showColorFinishDifference, finishDifferenceThreshold: $finishDifferenceThreshold, deltaInSeconds: $deltaInSeconds, updateStartCorrectionDelay: $updateStartCorrectionDelay, logLimit: $logLimit, seedColor: $seedColor, brightness: $brightness, contrastLevel: $contrastLevel, dynamicSchemeVariant: $dynamicSchemeVariant, isOLEDBackground: $isOLEDBackground, previousVersion: $previousVersion, updateNtpOffsetAtStartup: $updateNtpOffsetAtStartup)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 String language, bool reconnect, bool sound, bool beep, bool beepFromApp, bool voice, bool voiceFromApp, bool voiceName, double volume, double pitch, double rate, String voiceLanguage, int raceId, int stageId, bool wakelock, bool startFab, double startFabSize, bool finishFab, double finishFabSize, bool countdown, double countdownSize, double countdownLeft, double countdownTop, bool countdownAtStartTime, bool checkUpdates, bool showDNS, bool showDNF, bool showDSQ, bool showHidden, bool showNumbers, bool showManual, int finishDelay, bool substituteNumbers, int substituteNumbersDelay, bool showStartDifference, bool showColorStartDifference, int startDifferenceThreshold, bool showFinishDifference, bool showColorFinishDifference, int finishDifferenceThreshold, int deltaInSeconds, int updateStartCorrectionDelay, int logLimit, ColorSeed seedColor, Brightness brightness, double contrastLevel, DynamicSchemeVariant dynamicSchemeVariant, bool isOLEDBackground, String previousVersion, bool updateNtpOffsetAtStartup
});




}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? reconnect = null,Object? sound = null,Object? beep = null,Object? beepFromApp = null,Object? voice = null,Object? voiceFromApp = null,Object? voiceName = null,Object? volume = null,Object? pitch = null,Object? rate = null,Object? voiceLanguage = null,Object? raceId = null,Object? stageId = null,Object? wakelock = null,Object? startFab = null,Object? startFabSize = null,Object? finishFab = null,Object? finishFabSize = null,Object? countdown = null,Object? countdownSize = null,Object? countdownLeft = null,Object? countdownTop = null,Object? countdownAtStartTime = null,Object? checkUpdates = null,Object? showDNS = null,Object? showDNF = null,Object? showDSQ = null,Object? showHidden = null,Object? showNumbers = null,Object? showManual = null,Object? finishDelay = null,Object? substituteNumbers = null,Object? substituteNumbersDelay = null,Object? showStartDifference = null,Object? showColorStartDifference = null,Object? startDifferenceThreshold = null,Object? showFinishDifference = null,Object? showColorFinishDifference = null,Object? finishDifferenceThreshold = null,Object? deltaInSeconds = null,Object? updateStartCorrectionDelay = null,Object? logLimit = null,Object? seedColor = null,Object? brightness = null,Object? contrastLevel = null,Object? dynamicSchemeVariant = null,Object? isOLEDBackground = null,Object? previousVersion = null,Object? updateNtpOffsetAtStartup = null,}) {
  return _then(_AppSettings(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,reconnect: null == reconnect ? _self.reconnect : reconnect // ignore: cast_nullable_to_non_nullable
as bool,sound: null == sound ? _self.sound : sound // ignore: cast_nullable_to_non_nullable
as bool,beep: null == beep ? _self.beep : beep // ignore: cast_nullable_to_non_nullable
as bool,beepFromApp: null == beepFromApp ? _self.beepFromApp : beepFromApp // ignore: cast_nullable_to_non_nullable
as bool,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as bool,voiceFromApp: null == voiceFromApp ? _self.voiceFromApp : voiceFromApp // ignore: cast_nullable_to_non_nullable
as bool,voiceName: null == voiceName ? _self.voiceName : voiceName // ignore: cast_nullable_to_non_nullable
as bool,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,voiceLanguage: null == voiceLanguage ? _self.voiceLanguage : voiceLanguage // ignore: cast_nullable_to_non_nullable
as String,raceId: null == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int,stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,wakelock: null == wakelock ? _self.wakelock : wakelock // ignore: cast_nullable_to_non_nullable
as bool,startFab: null == startFab ? _self.startFab : startFab // ignore: cast_nullable_to_non_nullable
as bool,startFabSize: null == startFabSize ? _self.startFabSize : startFabSize // ignore: cast_nullable_to_non_nullable
as double,finishFab: null == finishFab ? _self.finishFab : finishFab // ignore: cast_nullable_to_non_nullable
as bool,finishFabSize: null == finishFabSize ? _self.finishFabSize : finishFabSize // ignore: cast_nullable_to_non_nullable
as double,countdown: null == countdown ? _self.countdown : countdown // ignore: cast_nullable_to_non_nullable
as bool,countdownSize: null == countdownSize ? _self.countdownSize : countdownSize // ignore: cast_nullable_to_non_nullable
as double,countdownLeft: null == countdownLeft ? _self.countdownLeft : countdownLeft // ignore: cast_nullable_to_non_nullable
as double,countdownTop: null == countdownTop ? _self.countdownTop : countdownTop // ignore: cast_nullable_to_non_nullable
as double,countdownAtStartTime: null == countdownAtStartTime ? _self.countdownAtStartTime : countdownAtStartTime // ignore: cast_nullable_to_non_nullable
as bool,checkUpdates: null == checkUpdates ? _self.checkUpdates : checkUpdates // ignore: cast_nullable_to_non_nullable
as bool,showDNS: null == showDNS ? _self.showDNS : showDNS // ignore: cast_nullable_to_non_nullable
as bool,showDNF: null == showDNF ? _self.showDNF : showDNF // ignore: cast_nullable_to_non_nullable
as bool,showDSQ: null == showDSQ ? _self.showDSQ : showDSQ // ignore: cast_nullable_to_non_nullable
as bool,showHidden: null == showHidden ? _self.showHidden : showHidden // ignore: cast_nullable_to_non_nullable
as bool,showNumbers: null == showNumbers ? _self.showNumbers : showNumbers // ignore: cast_nullable_to_non_nullable
as bool,showManual: null == showManual ? _self.showManual : showManual // ignore: cast_nullable_to_non_nullable
as bool,finishDelay: null == finishDelay ? _self.finishDelay : finishDelay // ignore: cast_nullable_to_non_nullable
as int,substituteNumbers: null == substituteNumbers ? _self.substituteNumbers : substituteNumbers // ignore: cast_nullable_to_non_nullable
as bool,substituteNumbersDelay: null == substituteNumbersDelay ? _self.substituteNumbersDelay : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
as int,showStartDifference: null == showStartDifference ? _self.showStartDifference : showStartDifference // ignore: cast_nullable_to_non_nullable
as bool,showColorStartDifference: null == showColorStartDifference ? _self.showColorStartDifference : showColorStartDifference // ignore: cast_nullable_to_non_nullable
as bool,startDifferenceThreshold: null == startDifferenceThreshold ? _self.startDifferenceThreshold : startDifferenceThreshold // ignore: cast_nullable_to_non_nullable
as int,showFinishDifference: null == showFinishDifference ? _self.showFinishDifference : showFinishDifference // ignore: cast_nullable_to_non_nullable
as bool,showColorFinishDifference: null == showColorFinishDifference ? _self.showColorFinishDifference : showColorFinishDifference // ignore: cast_nullable_to_non_nullable
as bool,finishDifferenceThreshold: null == finishDifferenceThreshold ? _self.finishDifferenceThreshold : finishDifferenceThreshold // ignore: cast_nullable_to_non_nullable
as int,deltaInSeconds: null == deltaInSeconds ? _self.deltaInSeconds : deltaInSeconds // ignore: cast_nullable_to_non_nullable
as int,updateStartCorrectionDelay: null == updateStartCorrectionDelay ? _self.updateStartCorrectionDelay : updateStartCorrectionDelay // ignore: cast_nullable_to_non_nullable
as int,logLimit: null == logLimit ? _self.logLimit : logLimit // ignore: cast_nullable_to_non_nullable
as int,seedColor: null == seedColor ? _self.seedColor : seedColor // ignore: cast_nullable_to_non_nullable
as ColorSeed,brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as Brightness,contrastLevel: null == contrastLevel ? _self.contrastLevel : contrastLevel // ignore: cast_nullable_to_non_nullable
as double,dynamicSchemeVariant: null == dynamicSchemeVariant ? _self.dynamicSchemeVariant : dynamicSchemeVariant // ignore: cast_nullable_to_non_nullable
as DynamicSchemeVariant,isOLEDBackground: null == isOLEDBackground ? _self.isOLEDBackground : isOLEDBackground // ignore: cast_nullable_to_non_nullable
as bool,previousVersion: null == previousVersion ? _self.previousVersion : previousVersion // ignore: cast_nullable_to_non_nullable
as String,updateNtpOffsetAtStartup: null == updateNtpOffsetAtStartup ? _self.updateNtpOffsetAtStartup : updateNtpOffsetAtStartup // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _AppSettingsDefaults implements AppSettings {
  const _AppSettingsDefaults({this.language = 'ru', this.reconnect = true, this.sound = true, this.beep = true, this.beepFromApp = false, this.voice = true, this.voiceFromApp = false, this.voiceName = true, this.volume = 1.0, this.pitch = 1.0, this.rate = 0.5, this.voiceLanguage = 'ru-RU', this.raceId = -1, this.stageId = -1, this.wakelock = true, this.startFab = true, this.startFabSize = 75, this.finishFab = true, this.finishFabSize = 75, this.countdown = false, this.countdownSize = 75, this.countdownLeft = 0, this.countdownTop = 0, this.countdownAtStartTime = true, this.checkUpdates = true, this.showDNS = false, this.showDNF = false, this.showDSQ = false, this.showHidden = false, this.showNumbers = true, this.showManual = true, this.finishDelay = 350, this.substituteNumbers = false, this.substituteNumbersDelay = 500, this.showStartDifference = false, this.showColorStartDifference = false, this.startDifferenceThreshold = 2000, this.showFinishDifference = false, this.showColorFinishDifference = false, this.finishDifferenceThreshold = 2000, this.deltaInSeconds = 10, this.updateStartCorrectionDelay = 2000, this.logLimit = 100, this.seedColor = ColorSeed.blue, this.brightness = Brightness.light, this.contrastLevel = -1.0, this.dynamicSchemeVariant = DynamicSchemeVariant.vibrant, this.isOLEDBackground = false, this.previousVersion = '0.0.0', this.updateNtpOffsetAtStartup = false});
  

// язык
@override@JsonKey() final  String language;
// восстанавливать Bluetooth подключение при обрыве
@override@JsonKey() final  bool reconnect;
// звук
@override@JsonKey() final  bool sound;
// вкл/выкл
// звук обратного отсчёта
@override@JsonKey() final  bool beep;
// звуком обратного отсчёта управляет приложение
@override@JsonKey() final  bool beepFromApp;
// голосовые сообщения
@override@JsonKey() final  bool voice;
// использовать голосовые сообщения
@override@JsonKey() final  bool voiceFromApp;
// использовать голосовые сообщения и брать данные из приложения
@override@JsonKey() final  bool voiceName;
// называть имена участников
@override@JsonKey() final  double volume;
// громкость
@override@JsonKey() final  double pitch;
// тон речи
@override@JsonKey() final  double rate;
// скорость речи
@override@JsonKey() final  String voiceLanguage;
// = "ru-RU", // язык
// id выбранного соревнования и участка
@override@JsonKey() final  int raceId;
@override@JsonKey() final  int stageId;
// всегда включённый экран
@override@JsonKey() final  bool wakelock;
// кнопки "добавить вручную" на экранах старта и финиша
@override@JsonKey() final  bool startFab;
@override@JsonKey() final  double startFabSize;
@override@JsonKey() final  bool finishFab;
@override@JsonKey() final  double finishFabSize;
// обратный отсчёт на экране старта
@override@JsonKey() final  bool countdown;
@override@JsonKey() final  double countdownSize;
@override@JsonKey() final  double countdownLeft;
@override@JsonKey() final  double countdownTop;
// показывать обратный отсчёт вместо стартового времени
@override@JsonKey() final  bool countdownAtStartTime;
// проверка обновлений
@override@JsonKey() final  bool checkUpdates;
// выборка значений на старте
@override@JsonKey() final  bool showDNS;
@override@JsonKey() final  bool showDNF;
@override@JsonKey() final  bool showDSQ;
// выборка значений на финише
@override@JsonKey() final  bool showHidden;
@override@JsonKey() final  bool showNumbers;
@override@JsonKey() final  bool showManual;
// задержка в миллисекундах перед показыванием нового финишного времени
@override@JsonKey() final  int finishDelay;
// автоподстановка номеров в финишном протоколе
@override@JsonKey() final  bool substituteNumbers;
@override@JsonKey() final  int substituteNumbersDelay;
// показывать разницу между автоматическим временем старта с модуля и временем устройства
@override@JsonKey() final  bool showStartDifference;
// показывать разницу цветом между автоматическим временем старта с модуля и временем устройства
@override@JsonKey() final  bool showColorStartDifference;
// разница между автоматическим временем старта с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
@override@JsonKey() final  int startDifferenceThreshold;
// показывать разницу между временем финиша с модуля и временем устройства
@override@JsonKey() final  bool showFinishDifference;
// показывать разницу цветом между временем финиша с модуля и временем устройства
@override@JsonKey() final  bool showColorFinishDifference;
// разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
@override@JsonKey() final  int finishDifferenceThreshold;
// дельта в секундах для автоматического подставления стартового времени
@override@JsonKey() final  int deltaInSeconds;
// задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
@override@JsonKey() final  int updateStartCorrectionDelay;
// лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
@override@JsonKey() final  int logLimit;
// активная тема
// @Default(AppTheme.lightBlue) AppTheme appTheme,
@override@JsonKey() final  ColorSeed seedColor;
@override@JsonKey() final  Brightness brightness;
@override@JsonKey() final  double contrastLevel;
@override@JsonKey() final  DynamicSchemeVariant dynamicSchemeVariant;
@override@JsonKey() final  bool isOLEDBackground;
// версия при предыдущем запуске
@override@JsonKey() final  String previousVersion;
// обновлять ntp offset при запуске
@override@JsonKey() final  bool updateNtpOffsetAtStartup;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsDefaultsCopyWith<_AppSettingsDefaults> get copyWith => __$AppSettingsDefaultsCopyWithImpl<_AppSettingsDefaults>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettingsDefaults&&(identical(other.language, language) || other.language == language)&&(identical(other.reconnect, reconnect) || other.reconnect == reconnect)&&(identical(other.sound, sound) || other.sound == sound)&&(identical(other.beep, beep) || other.beep == beep)&&(identical(other.beepFromApp, beepFromApp) || other.beepFromApp == beepFromApp)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.voiceFromApp, voiceFromApp) || other.voiceFromApp == voiceFromApp)&&(identical(other.voiceName, voiceName) || other.voiceName == voiceName)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.pitch, pitch) || other.pitch == pitch)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.voiceLanguage, voiceLanguage) || other.voiceLanguage == voiceLanguage)&&(identical(other.raceId, raceId) || other.raceId == raceId)&&(identical(other.stageId, stageId) || other.stageId == stageId)&&(identical(other.wakelock, wakelock) || other.wakelock == wakelock)&&(identical(other.startFab, startFab) || other.startFab == startFab)&&(identical(other.startFabSize, startFabSize) || other.startFabSize == startFabSize)&&(identical(other.finishFab, finishFab) || other.finishFab == finishFab)&&(identical(other.finishFabSize, finishFabSize) || other.finishFabSize == finishFabSize)&&(identical(other.countdown, countdown) || other.countdown == countdown)&&(identical(other.countdownSize, countdownSize) || other.countdownSize == countdownSize)&&(identical(other.countdownLeft, countdownLeft) || other.countdownLeft == countdownLeft)&&(identical(other.countdownTop, countdownTop) || other.countdownTop == countdownTop)&&(identical(other.countdownAtStartTime, countdownAtStartTime) || other.countdownAtStartTime == countdownAtStartTime)&&(identical(other.checkUpdates, checkUpdates) || other.checkUpdates == checkUpdates)&&(identical(other.showDNS, showDNS) || other.showDNS == showDNS)&&(identical(other.showDNF, showDNF) || other.showDNF == showDNF)&&(identical(other.showDSQ, showDSQ) || other.showDSQ == showDSQ)&&(identical(other.showHidden, showHidden) || other.showHidden == showHidden)&&(identical(other.showNumbers, showNumbers) || other.showNumbers == showNumbers)&&(identical(other.showManual, showManual) || other.showManual == showManual)&&(identical(other.finishDelay, finishDelay) || other.finishDelay == finishDelay)&&(identical(other.substituteNumbers, substituteNumbers) || other.substituteNumbers == substituteNumbers)&&(identical(other.substituteNumbersDelay, substituteNumbersDelay) || other.substituteNumbersDelay == substituteNumbersDelay)&&(identical(other.showStartDifference, showStartDifference) || other.showStartDifference == showStartDifference)&&(identical(other.showColorStartDifference, showColorStartDifference) || other.showColorStartDifference == showColorStartDifference)&&(identical(other.startDifferenceThreshold, startDifferenceThreshold) || other.startDifferenceThreshold == startDifferenceThreshold)&&(identical(other.showFinishDifference, showFinishDifference) || other.showFinishDifference == showFinishDifference)&&(identical(other.showColorFinishDifference, showColorFinishDifference) || other.showColorFinishDifference == showColorFinishDifference)&&(identical(other.finishDifferenceThreshold, finishDifferenceThreshold) || other.finishDifferenceThreshold == finishDifferenceThreshold)&&(identical(other.deltaInSeconds, deltaInSeconds) || other.deltaInSeconds == deltaInSeconds)&&(identical(other.updateStartCorrectionDelay, updateStartCorrectionDelay) || other.updateStartCorrectionDelay == updateStartCorrectionDelay)&&(identical(other.logLimit, logLimit) || other.logLimit == logLimit)&&(identical(other.seedColor, seedColor) || other.seedColor == seedColor)&&(identical(other.brightness, brightness) || other.brightness == brightness)&&(identical(other.contrastLevel, contrastLevel) || other.contrastLevel == contrastLevel)&&(identical(other.dynamicSchemeVariant, dynamicSchemeVariant) || other.dynamicSchemeVariant == dynamicSchemeVariant)&&(identical(other.isOLEDBackground, isOLEDBackground) || other.isOLEDBackground == isOLEDBackground)&&(identical(other.previousVersion, previousVersion) || other.previousVersion == previousVersion)&&(identical(other.updateNtpOffsetAtStartup, updateNtpOffsetAtStartup) || other.updateNtpOffsetAtStartup == updateNtpOffsetAtStartup));
}


@override
int get hashCode => Object.hashAll([runtimeType,language,reconnect,sound,beep,beepFromApp,voice,voiceFromApp,voiceName,volume,pitch,rate,voiceLanguage,raceId,stageId,wakelock,startFab,startFabSize,finishFab,finishFabSize,countdown,countdownSize,countdownLeft,countdownTop,countdownAtStartTime,checkUpdates,showDNS,showDNF,showDSQ,showHidden,showNumbers,showManual,finishDelay,substituteNumbers,substituteNumbersDelay,showStartDifference,showColorStartDifference,startDifferenceThreshold,showFinishDifference,showColorFinishDifference,finishDifferenceThreshold,deltaInSeconds,updateStartCorrectionDelay,logLimit,seedColor,brightness,contrastLevel,dynamicSchemeVariant,isOLEDBackground,previousVersion,updateNtpOffsetAtStartup]);

@override
String toString() {
  return 'AppSettings.defaults(language: $language, reconnect: $reconnect, sound: $sound, beep: $beep, beepFromApp: $beepFromApp, voice: $voice, voiceFromApp: $voiceFromApp, voiceName: $voiceName, volume: $volume, pitch: $pitch, rate: $rate, voiceLanguage: $voiceLanguage, raceId: $raceId, stageId: $stageId, wakelock: $wakelock, startFab: $startFab, startFabSize: $startFabSize, finishFab: $finishFab, finishFabSize: $finishFabSize, countdown: $countdown, countdownSize: $countdownSize, countdownLeft: $countdownLeft, countdownTop: $countdownTop, countdownAtStartTime: $countdownAtStartTime, checkUpdates: $checkUpdates, showDNS: $showDNS, showDNF: $showDNF, showDSQ: $showDSQ, showHidden: $showHidden, showNumbers: $showNumbers, showManual: $showManual, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, showStartDifference: $showStartDifference, showColorStartDifference: $showColorStartDifference, startDifferenceThreshold: $startDifferenceThreshold, showFinishDifference: $showFinishDifference, showColorFinishDifference: $showColorFinishDifference, finishDifferenceThreshold: $finishDifferenceThreshold, deltaInSeconds: $deltaInSeconds, updateStartCorrectionDelay: $updateStartCorrectionDelay, logLimit: $logLimit, seedColor: $seedColor, brightness: $brightness, contrastLevel: $contrastLevel, dynamicSchemeVariant: $dynamicSchemeVariant, isOLEDBackground: $isOLEDBackground, previousVersion: $previousVersion, updateNtpOffsetAtStartup: $updateNtpOffsetAtStartup)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsDefaultsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsDefaultsCopyWith(_AppSettingsDefaults value, $Res Function(_AppSettingsDefaults) _then) = __$AppSettingsDefaultsCopyWithImpl;
@override @useResult
$Res call({
 String language, bool reconnect, bool sound, bool beep, bool beepFromApp, bool voice, bool voiceFromApp, bool voiceName, double volume, double pitch, double rate, String voiceLanguage, int raceId, int stageId, bool wakelock, bool startFab, double startFabSize, bool finishFab, double finishFabSize, bool countdown, double countdownSize, double countdownLeft, double countdownTop, bool countdownAtStartTime, bool checkUpdates, bool showDNS, bool showDNF, bool showDSQ, bool showHidden, bool showNumbers, bool showManual, int finishDelay, bool substituteNumbers, int substituteNumbersDelay, bool showStartDifference, bool showColorStartDifference, int startDifferenceThreshold, bool showFinishDifference, bool showColorFinishDifference, int finishDifferenceThreshold, int deltaInSeconds, int updateStartCorrectionDelay, int logLimit, ColorSeed seedColor, Brightness brightness, double contrastLevel, DynamicSchemeVariant dynamicSchemeVariant, bool isOLEDBackground, String previousVersion, bool updateNtpOffsetAtStartup
});




}
/// @nodoc
class __$AppSettingsDefaultsCopyWithImpl<$Res>
    implements _$AppSettingsDefaultsCopyWith<$Res> {
  __$AppSettingsDefaultsCopyWithImpl(this._self, this._then);

  final _AppSettingsDefaults _self;
  final $Res Function(_AppSettingsDefaults) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? reconnect = null,Object? sound = null,Object? beep = null,Object? beepFromApp = null,Object? voice = null,Object? voiceFromApp = null,Object? voiceName = null,Object? volume = null,Object? pitch = null,Object? rate = null,Object? voiceLanguage = null,Object? raceId = null,Object? stageId = null,Object? wakelock = null,Object? startFab = null,Object? startFabSize = null,Object? finishFab = null,Object? finishFabSize = null,Object? countdown = null,Object? countdownSize = null,Object? countdownLeft = null,Object? countdownTop = null,Object? countdownAtStartTime = null,Object? checkUpdates = null,Object? showDNS = null,Object? showDNF = null,Object? showDSQ = null,Object? showHidden = null,Object? showNumbers = null,Object? showManual = null,Object? finishDelay = null,Object? substituteNumbers = null,Object? substituteNumbersDelay = null,Object? showStartDifference = null,Object? showColorStartDifference = null,Object? startDifferenceThreshold = null,Object? showFinishDifference = null,Object? showColorFinishDifference = null,Object? finishDifferenceThreshold = null,Object? deltaInSeconds = null,Object? updateStartCorrectionDelay = null,Object? logLimit = null,Object? seedColor = null,Object? brightness = null,Object? contrastLevel = null,Object? dynamicSchemeVariant = null,Object? isOLEDBackground = null,Object? previousVersion = null,Object? updateNtpOffsetAtStartup = null,}) {
  return _then(_AppSettingsDefaults(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,reconnect: null == reconnect ? _self.reconnect : reconnect // ignore: cast_nullable_to_non_nullable
as bool,sound: null == sound ? _self.sound : sound // ignore: cast_nullable_to_non_nullable
as bool,beep: null == beep ? _self.beep : beep // ignore: cast_nullable_to_non_nullable
as bool,beepFromApp: null == beepFromApp ? _self.beepFromApp : beepFromApp // ignore: cast_nullable_to_non_nullable
as bool,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as bool,voiceFromApp: null == voiceFromApp ? _self.voiceFromApp : voiceFromApp // ignore: cast_nullable_to_non_nullable
as bool,voiceName: null == voiceName ? _self.voiceName : voiceName // ignore: cast_nullable_to_non_nullable
as bool,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,pitch: null == pitch ? _self.pitch : pitch // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,voiceLanguage: null == voiceLanguage ? _self.voiceLanguage : voiceLanguage // ignore: cast_nullable_to_non_nullable
as String,raceId: null == raceId ? _self.raceId : raceId // ignore: cast_nullable_to_non_nullable
as int,stageId: null == stageId ? _self.stageId : stageId // ignore: cast_nullable_to_non_nullable
as int,wakelock: null == wakelock ? _self.wakelock : wakelock // ignore: cast_nullable_to_non_nullable
as bool,startFab: null == startFab ? _self.startFab : startFab // ignore: cast_nullable_to_non_nullable
as bool,startFabSize: null == startFabSize ? _self.startFabSize : startFabSize // ignore: cast_nullable_to_non_nullable
as double,finishFab: null == finishFab ? _self.finishFab : finishFab // ignore: cast_nullable_to_non_nullable
as bool,finishFabSize: null == finishFabSize ? _self.finishFabSize : finishFabSize // ignore: cast_nullable_to_non_nullable
as double,countdown: null == countdown ? _self.countdown : countdown // ignore: cast_nullable_to_non_nullable
as bool,countdownSize: null == countdownSize ? _self.countdownSize : countdownSize // ignore: cast_nullable_to_non_nullable
as double,countdownLeft: null == countdownLeft ? _self.countdownLeft : countdownLeft // ignore: cast_nullable_to_non_nullable
as double,countdownTop: null == countdownTop ? _self.countdownTop : countdownTop // ignore: cast_nullable_to_non_nullable
as double,countdownAtStartTime: null == countdownAtStartTime ? _self.countdownAtStartTime : countdownAtStartTime // ignore: cast_nullable_to_non_nullable
as bool,checkUpdates: null == checkUpdates ? _self.checkUpdates : checkUpdates // ignore: cast_nullable_to_non_nullable
as bool,showDNS: null == showDNS ? _self.showDNS : showDNS // ignore: cast_nullable_to_non_nullable
as bool,showDNF: null == showDNF ? _self.showDNF : showDNF // ignore: cast_nullable_to_non_nullable
as bool,showDSQ: null == showDSQ ? _self.showDSQ : showDSQ // ignore: cast_nullable_to_non_nullable
as bool,showHidden: null == showHidden ? _self.showHidden : showHidden // ignore: cast_nullable_to_non_nullable
as bool,showNumbers: null == showNumbers ? _self.showNumbers : showNumbers // ignore: cast_nullable_to_non_nullable
as bool,showManual: null == showManual ? _self.showManual : showManual // ignore: cast_nullable_to_non_nullable
as bool,finishDelay: null == finishDelay ? _self.finishDelay : finishDelay // ignore: cast_nullable_to_non_nullable
as int,substituteNumbers: null == substituteNumbers ? _self.substituteNumbers : substituteNumbers // ignore: cast_nullable_to_non_nullable
as bool,substituteNumbersDelay: null == substituteNumbersDelay ? _self.substituteNumbersDelay : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
as int,showStartDifference: null == showStartDifference ? _self.showStartDifference : showStartDifference // ignore: cast_nullable_to_non_nullable
as bool,showColorStartDifference: null == showColorStartDifference ? _self.showColorStartDifference : showColorStartDifference // ignore: cast_nullable_to_non_nullable
as bool,startDifferenceThreshold: null == startDifferenceThreshold ? _self.startDifferenceThreshold : startDifferenceThreshold // ignore: cast_nullable_to_non_nullable
as int,showFinishDifference: null == showFinishDifference ? _self.showFinishDifference : showFinishDifference // ignore: cast_nullable_to_non_nullable
as bool,showColorFinishDifference: null == showColorFinishDifference ? _self.showColorFinishDifference : showColorFinishDifference // ignore: cast_nullable_to_non_nullable
as bool,finishDifferenceThreshold: null == finishDifferenceThreshold ? _self.finishDifferenceThreshold : finishDifferenceThreshold // ignore: cast_nullable_to_non_nullable
as int,deltaInSeconds: null == deltaInSeconds ? _self.deltaInSeconds : deltaInSeconds // ignore: cast_nullable_to_non_nullable
as int,updateStartCorrectionDelay: null == updateStartCorrectionDelay ? _self.updateStartCorrectionDelay : updateStartCorrectionDelay // ignore: cast_nullable_to_non_nullable
as int,logLimit: null == logLimit ? _self.logLimit : logLimit // ignore: cast_nullable_to_non_nullable
as int,seedColor: null == seedColor ? _self.seedColor : seedColor // ignore: cast_nullable_to_non_nullable
as ColorSeed,brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as Brightness,contrastLevel: null == contrastLevel ? _self.contrastLevel : contrastLevel // ignore: cast_nullable_to_non_nullable
as double,dynamicSchemeVariant: null == dynamicSchemeVariant ? _self.dynamicSchemeVariant : dynamicSchemeVariant // ignore: cast_nullable_to_non_nullable
as DynamicSchemeVariant,isOLEDBackground: null == isOLEDBackground ? _self.isOLEDBackground : isOLEDBackground // ignore: cast_nullable_to_non_nullable
as bool,previousVersion: null == previousVersion ? _self.previousVersion : previousVersion // ignore: cast_nullable_to_non_nullable
as String,updateNtpOffsetAtStartup: null == updateNtpOffsetAtStartup ? _self.updateNtpOffsetAtStartup : updateNtpOffsetAtStartup // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
