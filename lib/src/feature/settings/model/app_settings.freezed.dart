// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettings {
// язык
  String get language =>
      throw _privateConstructorUsedError; // = "ru", // локаль
// восстанавливать Bluetooth подключение при обрыве
  bool get reconnect => throw _privateConstructorUsedError; // звук
  bool get sound => throw _privateConstructorUsedError; // вкл/выкл
// звук обратного отсчёта
  bool get beep =>
      throw _privateConstructorUsedError; // звуком обратного отсчёта управляет приложение
  bool get beepFromApp =>
      throw _privateConstructorUsedError; // голосовые сообщения
  bool get voice => throw _privateConstructorUsedError;
  bool get voiceFromApp => throw _privateConstructorUsedError;
  bool get voiceName => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError; // громкость
  double get pitch => throw _privateConstructorUsedError; // тон речи
  double get rate => throw _privateConstructorUsedError; // скорость речи
  String get voiceLanguage =>
      throw _privateConstructorUsedError; // = "ru-RU", // язык tts
// id выбранного соревнования и участка
  int get raceId => throw _privateConstructorUsedError;
  int get stageId =>
      throw _privateConstructorUsedError; // всегда включённый экран
  bool get wakelock =>
      throw _privateConstructorUsedError; // кнопки "добавить вручную" на экранах старта и финиша
  bool get startFab => throw _privateConstructorUsedError;
  double get startFabSize => throw _privateConstructorUsedError;
  bool get finishFab => throw _privateConstructorUsedError;
  double get finishFabSize =>
      throw _privateConstructorUsedError; // обратный отсчёт на экране старта
  bool get countdown => throw _privateConstructorUsedError;
  double get countdownSize => throw _privateConstructorUsedError;
  double get countdownLeft => throw _privateConstructorUsedError;
  double get countdownTop =>
      throw _privateConstructorUsedError; // показывать обратный отсчёт вместо стартового времени
  bool get countdownAtStartTime =>
      throw _privateConstructorUsedError; // проверка обновлений
  bool get checkUpdates =>
      throw _privateConstructorUsedError; // выборка значений на старте
  bool get showDNS => throw _privateConstructorUsedError;
  bool get showDNF => throw _privateConstructorUsedError;
  bool get showDSQ =>
      throw _privateConstructorUsedError; // выборка значений на финише
  bool get showHidden => throw _privateConstructorUsedError;
  bool get showNumbers => throw _privateConstructorUsedError;
  bool get showManual =>
      throw _privateConstructorUsedError; // задержка в миллисекундах перед показыванием нового финишного времени
  int get finishDelay =>
      throw _privateConstructorUsedError; // автоподстановка номеров в финишном протоколе
  bool get substituteNumbers => throw _privateConstructorUsedError;
  int get substituteNumbersDelay =>
      throw _privateConstructorUsedError; // показывать разницу между временем финиша с модуля и временем устройства
  bool get showFinishDifference =>
      throw _privateConstructorUsedError; // показывать разницу цветом между временем финиша с модуля и временем устройства
  bool get showColorFinishDifference =>
      throw _privateConstructorUsedError; // разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
  int get finishDifferenceThreshold =>
      throw _privateConstructorUsedError; // дельта в секундах для автоматического подставления стартового времени
  int get deltaInSeconds =>
      throw _privateConstructorUsedError; // задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
  int get updateStartCorrectionDelay =>
      throw _privateConstructorUsedError; // лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
  int get logLimit => throw _privateConstructorUsedError; // активная тема
// required AppTheme appTheme,
  ColorSeed get seedColor => throw _privateConstructorUsedError;
  Brightness get brightness => throw _privateConstructorUsedError;
  double get contrastLevel => throw _privateConstructorUsedError;
  DynamicSchemeVariant get dynamicSchemeVariant =>
      throw _privateConstructorUsedError;
  bool get isOLEDBackground =>
      throw _privateConstructorUsedError; // версия при предыдущем запуске
  String get previousVersion =>
      throw _privateConstructorUsedError; // обновлять ntp offset при запуске
  bool get updateNtpOffsetAtStartup => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)
        $default, {
    required TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)
        defaults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        $default, {
    TResult? Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        defaults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        $default, {
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        defaults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppSettings value) $default, {
    required TResult Function(_AppSettingsDefaults value) defaults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppSettings value)? $default, {
    TResult? Function(_AppSettingsDefaults value)? defaults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppSettings value)? $default, {
    TResult Function(_AppSettingsDefaults value)? defaults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res, AppSettings>;
  @useResult
  $Res call(
      {String language,
      bool reconnect,
      bool sound,
      bool beep,
      bool beepFromApp,
      bool voice,
      bool voiceFromApp,
      bool voiceName,
      double volume,
      double pitch,
      double rate,
      String voiceLanguage,
      int raceId,
      int stageId,
      bool wakelock,
      bool startFab,
      double startFabSize,
      bool finishFab,
      double finishFabSize,
      bool countdown,
      double countdownSize,
      double countdownLeft,
      double countdownTop,
      bool countdownAtStartTime,
      bool checkUpdates,
      bool showDNS,
      bool showDNF,
      bool showDSQ,
      bool showHidden,
      bool showNumbers,
      bool showManual,
      int finishDelay,
      bool substituteNumbers,
      int substituteNumbersDelay,
      bool showFinishDifference,
      bool showColorFinishDifference,
      int finishDifferenceThreshold,
      int deltaInSeconds,
      int updateStartCorrectionDelay,
      int logLimit,
      ColorSeed seedColor,
      Brightness brightness,
      double contrastLevel,
      DynamicSchemeVariant dynamicSchemeVariant,
      bool isOLEDBackground,
      String previousVersion,
      bool updateNtpOffsetAtStartup});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res, $Val extends AppSettings>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? reconnect = null,
    Object? sound = null,
    Object? beep = null,
    Object? beepFromApp = null,
    Object? voice = null,
    Object? voiceFromApp = null,
    Object? voiceName = null,
    Object? volume = null,
    Object? pitch = null,
    Object? rate = null,
    Object? voiceLanguage = null,
    Object? raceId = null,
    Object? stageId = null,
    Object? wakelock = null,
    Object? startFab = null,
    Object? startFabSize = null,
    Object? finishFab = null,
    Object? finishFabSize = null,
    Object? countdown = null,
    Object? countdownSize = null,
    Object? countdownLeft = null,
    Object? countdownTop = null,
    Object? countdownAtStartTime = null,
    Object? checkUpdates = null,
    Object? showDNS = null,
    Object? showDNF = null,
    Object? showDSQ = null,
    Object? showHidden = null,
    Object? showNumbers = null,
    Object? showManual = null,
    Object? finishDelay = null,
    Object? substituteNumbers = null,
    Object? substituteNumbersDelay = null,
    Object? showFinishDifference = null,
    Object? showColorFinishDifference = null,
    Object? finishDifferenceThreshold = null,
    Object? deltaInSeconds = null,
    Object? updateStartCorrectionDelay = null,
    Object? logLimit = null,
    Object? seedColor = null,
    Object? brightness = null,
    Object? contrastLevel = null,
    Object? dynamicSchemeVariant = null,
    Object? isOLEDBackground = null,
    Object? previousVersion = null,
    Object? updateNtpOffsetAtStartup = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      reconnect: null == reconnect
          ? _value.reconnect
          : reconnect // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      beep: null == beep
          ? _value.beep
          : beep // ignore: cast_nullable_to_non_nullable
              as bool,
      beepFromApp: null == beepFromApp
          ? _value.beepFromApp
          : beepFromApp // ignore: cast_nullable_to_non_nullable
              as bool,
      voice: null == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceFromApp: null == voiceFromApp
          ? _value.voiceFromApp
          : voiceFromApp // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceName: null == voiceName
          ? _value.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      voiceLanguage: null == voiceLanguage
          ? _value.voiceLanguage
          : voiceLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      raceId: null == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      wakelock: null == wakelock
          ? _value.wakelock
          : wakelock // ignore: cast_nullable_to_non_nullable
              as bool,
      startFab: null == startFab
          ? _value.startFab
          : startFab // ignore: cast_nullable_to_non_nullable
              as bool,
      startFabSize: null == startFabSize
          ? _value.startFabSize
          : startFabSize // ignore: cast_nullable_to_non_nullable
              as double,
      finishFab: null == finishFab
          ? _value.finishFab
          : finishFab // ignore: cast_nullable_to_non_nullable
              as bool,
      finishFabSize: null == finishFabSize
          ? _value.finishFabSize
          : finishFabSize // ignore: cast_nullable_to_non_nullable
              as double,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as bool,
      countdownSize: null == countdownSize
          ? _value.countdownSize
          : countdownSize // ignore: cast_nullable_to_non_nullable
              as double,
      countdownLeft: null == countdownLeft
          ? _value.countdownLeft
          : countdownLeft // ignore: cast_nullable_to_non_nullable
              as double,
      countdownTop: null == countdownTop
          ? _value.countdownTop
          : countdownTop // ignore: cast_nullable_to_non_nullable
              as double,
      countdownAtStartTime: null == countdownAtStartTime
          ? _value.countdownAtStartTime
          : countdownAtStartTime // ignore: cast_nullable_to_non_nullable
              as bool,
      checkUpdates: null == checkUpdates
          ? _value.checkUpdates
          : checkUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      showDNS: null == showDNS
          ? _value.showDNS
          : showDNS // ignore: cast_nullable_to_non_nullable
              as bool,
      showDNF: null == showDNF
          ? _value.showDNF
          : showDNF // ignore: cast_nullable_to_non_nullable
              as bool,
      showDSQ: null == showDSQ
          ? _value.showDSQ
          : showDSQ // ignore: cast_nullable_to_non_nullable
              as bool,
      showHidden: null == showHidden
          ? _value.showHidden
          : showHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      showNumbers: null == showNumbers
          ? _value.showNumbers
          : showNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      showManual: null == showManual
          ? _value.showManual
          : showManual // ignore: cast_nullable_to_non_nullable
              as bool,
      finishDelay: null == finishDelay
          ? _value.finishDelay
          : finishDelay // ignore: cast_nullable_to_non_nullable
              as int,
      substituteNumbers: null == substituteNumbers
          ? _value.substituteNumbers
          : substituteNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      substituteNumbersDelay: null == substituteNumbersDelay
          ? _value.substituteNumbersDelay
          : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
              as int,
      showFinishDifference: null == showFinishDifference
          ? _value.showFinishDifference
          : showFinishDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      showColorFinishDifference: null == showColorFinishDifference
          ? _value.showColorFinishDifference
          : showColorFinishDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      finishDifferenceThreshold: null == finishDifferenceThreshold
          ? _value.finishDifferenceThreshold
          : finishDifferenceThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      deltaInSeconds: null == deltaInSeconds
          ? _value.deltaInSeconds
          : deltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updateStartCorrectionDelay: null == updateStartCorrectionDelay
          ? _value.updateStartCorrectionDelay
          : updateStartCorrectionDelay // ignore: cast_nullable_to_non_nullable
              as int,
      logLimit: null == logLimit
          ? _value.logLimit
          : logLimit // ignore: cast_nullable_to_non_nullable
              as int,
      seedColor: null == seedColor
          ? _value.seedColor
          : seedColor // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
      contrastLevel: null == contrastLevel
          ? _value.contrastLevel
          : contrastLevel // ignore: cast_nullable_to_non_nullable
              as double,
      dynamicSchemeVariant: null == dynamicSchemeVariant
          ? _value.dynamicSchemeVariant
          : dynamicSchemeVariant // ignore: cast_nullable_to_non_nullable
              as DynamicSchemeVariant,
      isOLEDBackground: null == isOLEDBackground
          ? _value.isOLEDBackground
          : isOLEDBackground // ignore: cast_nullable_to_non_nullable
              as bool,
      previousVersion: null == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updateNtpOffsetAtStartup: null == updateNtpOffsetAtStartup
          ? _value.updateNtpOffsetAtStartup
          : updateNtpOffsetAtStartup // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsImplCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$AppSettingsImplCopyWith(
          _$AppSettingsImpl value, $Res Function(_$AppSettingsImpl) then) =
      __$$AppSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String language,
      bool reconnect,
      bool sound,
      bool beep,
      bool beepFromApp,
      bool voice,
      bool voiceFromApp,
      bool voiceName,
      double volume,
      double pitch,
      double rate,
      String voiceLanguage,
      int raceId,
      int stageId,
      bool wakelock,
      bool startFab,
      double startFabSize,
      bool finishFab,
      double finishFabSize,
      bool countdown,
      double countdownSize,
      double countdownLeft,
      double countdownTop,
      bool countdownAtStartTime,
      bool checkUpdates,
      bool showDNS,
      bool showDNF,
      bool showDSQ,
      bool showHidden,
      bool showNumbers,
      bool showManual,
      int finishDelay,
      bool substituteNumbers,
      int substituteNumbersDelay,
      bool showFinishDifference,
      bool showColorFinishDifference,
      int finishDifferenceThreshold,
      int deltaInSeconds,
      int updateStartCorrectionDelay,
      int logLimit,
      ColorSeed seedColor,
      Brightness brightness,
      double contrastLevel,
      DynamicSchemeVariant dynamicSchemeVariant,
      bool isOLEDBackground,
      String previousVersion,
      bool updateNtpOffsetAtStartup});
}

/// @nodoc
class __$$AppSettingsImplCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$AppSettingsImpl>
    implements _$$AppSettingsImplCopyWith<$Res> {
  __$$AppSettingsImplCopyWithImpl(
      _$AppSettingsImpl _value, $Res Function(_$AppSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? reconnect = null,
    Object? sound = null,
    Object? beep = null,
    Object? beepFromApp = null,
    Object? voice = null,
    Object? voiceFromApp = null,
    Object? voiceName = null,
    Object? volume = null,
    Object? pitch = null,
    Object? rate = null,
    Object? voiceLanguage = null,
    Object? raceId = null,
    Object? stageId = null,
    Object? wakelock = null,
    Object? startFab = null,
    Object? startFabSize = null,
    Object? finishFab = null,
    Object? finishFabSize = null,
    Object? countdown = null,
    Object? countdownSize = null,
    Object? countdownLeft = null,
    Object? countdownTop = null,
    Object? countdownAtStartTime = null,
    Object? checkUpdates = null,
    Object? showDNS = null,
    Object? showDNF = null,
    Object? showDSQ = null,
    Object? showHidden = null,
    Object? showNumbers = null,
    Object? showManual = null,
    Object? finishDelay = null,
    Object? substituteNumbers = null,
    Object? substituteNumbersDelay = null,
    Object? showFinishDifference = null,
    Object? showColorFinishDifference = null,
    Object? finishDifferenceThreshold = null,
    Object? deltaInSeconds = null,
    Object? updateStartCorrectionDelay = null,
    Object? logLimit = null,
    Object? seedColor = null,
    Object? brightness = null,
    Object? contrastLevel = null,
    Object? dynamicSchemeVariant = null,
    Object? isOLEDBackground = null,
    Object? previousVersion = null,
    Object? updateNtpOffsetAtStartup = null,
  }) {
    return _then(_$AppSettingsImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      reconnect: null == reconnect
          ? _value.reconnect
          : reconnect // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      beep: null == beep
          ? _value.beep
          : beep // ignore: cast_nullable_to_non_nullable
              as bool,
      beepFromApp: null == beepFromApp
          ? _value.beepFromApp
          : beepFromApp // ignore: cast_nullable_to_non_nullable
              as bool,
      voice: null == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceFromApp: null == voiceFromApp
          ? _value.voiceFromApp
          : voiceFromApp // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceName: null == voiceName
          ? _value.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      voiceLanguage: null == voiceLanguage
          ? _value.voiceLanguage
          : voiceLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      raceId: null == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      wakelock: null == wakelock
          ? _value.wakelock
          : wakelock // ignore: cast_nullable_to_non_nullable
              as bool,
      startFab: null == startFab
          ? _value.startFab
          : startFab // ignore: cast_nullable_to_non_nullable
              as bool,
      startFabSize: null == startFabSize
          ? _value.startFabSize
          : startFabSize // ignore: cast_nullable_to_non_nullable
              as double,
      finishFab: null == finishFab
          ? _value.finishFab
          : finishFab // ignore: cast_nullable_to_non_nullable
              as bool,
      finishFabSize: null == finishFabSize
          ? _value.finishFabSize
          : finishFabSize // ignore: cast_nullable_to_non_nullable
              as double,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as bool,
      countdownSize: null == countdownSize
          ? _value.countdownSize
          : countdownSize // ignore: cast_nullable_to_non_nullable
              as double,
      countdownLeft: null == countdownLeft
          ? _value.countdownLeft
          : countdownLeft // ignore: cast_nullable_to_non_nullable
              as double,
      countdownTop: null == countdownTop
          ? _value.countdownTop
          : countdownTop // ignore: cast_nullable_to_non_nullable
              as double,
      countdownAtStartTime: null == countdownAtStartTime
          ? _value.countdownAtStartTime
          : countdownAtStartTime // ignore: cast_nullable_to_non_nullable
              as bool,
      checkUpdates: null == checkUpdates
          ? _value.checkUpdates
          : checkUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      showDNS: null == showDNS
          ? _value.showDNS
          : showDNS // ignore: cast_nullable_to_non_nullable
              as bool,
      showDNF: null == showDNF
          ? _value.showDNF
          : showDNF // ignore: cast_nullable_to_non_nullable
              as bool,
      showDSQ: null == showDSQ
          ? _value.showDSQ
          : showDSQ // ignore: cast_nullable_to_non_nullable
              as bool,
      showHidden: null == showHidden
          ? _value.showHidden
          : showHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      showNumbers: null == showNumbers
          ? _value.showNumbers
          : showNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      showManual: null == showManual
          ? _value.showManual
          : showManual // ignore: cast_nullable_to_non_nullable
              as bool,
      finishDelay: null == finishDelay
          ? _value.finishDelay
          : finishDelay // ignore: cast_nullable_to_non_nullable
              as int,
      substituteNumbers: null == substituteNumbers
          ? _value.substituteNumbers
          : substituteNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      substituteNumbersDelay: null == substituteNumbersDelay
          ? _value.substituteNumbersDelay
          : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
              as int,
      showFinishDifference: null == showFinishDifference
          ? _value.showFinishDifference
          : showFinishDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      showColorFinishDifference: null == showColorFinishDifference
          ? _value.showColorFinishDifference
          : showColorFinishDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      finishDifferenceThreshold: null == finishDifferenceThreshold
          ? _value.finishDifferenceThreshold
          : finishDifferenceThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      deltaInSeconds: null == deltaInSeconds
          ? _value.deltaInSeconds
          : deltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updateStartCorrectionDelay: null == updateStartCorrectionDelay
          ? _value.updateStartCorrectionDelay
          : updateStartCorrectionDelay // ignore: cast_nullable_to_non_nullable
              as int,
      logLimit: null == logLimit
          ? _value.logLimit
          : logLimit // ignore: cast_nullable_to_non_nullable
              as int,
      seedColor: null == seedColor
          ? _value.seedColor
          : seedColor // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
      contrastLevel: null == contrastLevel
          ? _value.contrastLevel
          : contrastLevel // ignore: cast_nullable_to_non_nullable
              as double,
      dynamicSchemeVariant: null == dynamicSchemeVariant
          ? _value.dynamicSchemeVariant
          : dynamicSchemeVariant // ignore: cast_nullable_to_non_nullable
              as DynamicSchemeVariant,
      isOLEDBackground: null == isOLEDBackground
          ? _value.isOLEDBackground
          : isOLEDBackground // ignore: cast_nullable_to_non_nullable
              as bool,
      previousVersion: null == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updateNtpOffsetAtStartup: null == updateNtpOffsetAtStartup
          ? _value.updateNtpOffsetAtStartup
          : updateNtpOffsetAtStartup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppSettingsImpl implements _AppSettings {
  const _$AppSettingsImpl(
      {required this.language,
      required this.reconnect,
      required this.sound,
      required this.beep,
      required this.beepFromApp,
      required this.voice,
      required this.voiceFromApp,
      required this.voiceName,
      required this.volume,
      required this.pitch,
      required this.rate,
      required this.voiceLanguage,
      required this.raceId,
      required this.stageId,
      required this.wakelock,
      required this.startFab,
      required this.startFabSize,
      required this.finishFab,
      required this.finishFabSize,
      required this.countdown,
      required this.countdownSize,
      required this.countdownLeft,
      required this.countdownTop,
      required this.countdownAtStartTime,
      required this.checkUpdates,
      required this.showDNS,
      required this.showDNF,
      required this.showDSQ,
      required this.showHidden,
      required this.showNumbers,
      required this.showManual,
      required this.finishDelay,
      required this.substituteNumbers,
      required this.substituteNumbersDelay,
      required this.showFinishDifference,
      required this.showColorFinishDifference,
      required this.finishDifferenceThreshold,
      required this.deltaInSeconds,
      required this.updateStartCorrectionDelay,
      required this.logLimit,
      required this.seedColor,
      required this.brightness,
      required this.contrastLevel,
      required this.dynamicSchemeVariant,
      required this.isOLEDBackground,
      required this.previousVersion,
      required this.updateNtpOffsetAtStartup});

// язык
  @override
  final String language;
// = "ru", // локаль
// восстанавливать Bluetooth подключение при обрыве
  @override
  final bool reconnect;
// звук
  @override
  final bool sound;
// вкл/выкл
// звук обратного отсчёта
  @override
  final bool beep;
// звуком обратного отсчёта управляет приложение
  @override
  final bool beepFromApp;
// голосовые сообщения
  @override
  final bool voice;
  @override
  final bool voiceFromApp;
  @override
  final bool voiceName;
  @override
  final double volume;
// громкость
  @override
  final double pitch;
// тон речи
  @override
  final double rate;
// скорость речи
  @override
  final String voiceLanguage;
// = "ru-RU", // язык tts
// id выбранного соревнования и участка
  @override
  final int raceId;
  @override
  final int stageId;
// всегда включённый экран
  @override
  final bool wakelock;
// кнопки "добавить вручную" на экранах старта и финиша
  @override
  final bool startFab;
  @override
  final double startFabSize;
  @override
  final bool finishFab;
  @override
  final double finishFabSize;
// обратный отсчёт на экране старта
  @override
  final bool countdown;
  @override
  final double countdownSize;
  @override
  final double countdownLeft;
  @override
  final double countdownTop;
// показывать обратный отсчёт вместо стартового времени
  @override
  final bool countdownAtStartTime;
// проверка обновлений
  @override
  final bool checkUpdates;
// выборка значений на старте
  @override
  final bool showDNS;
  @override
  final bool showDNF;
  @override
  final bool showDSQ;
// выборка значений на финише
  @override
  final bool showHidden;
  @override
  final bool showNumbers;
  @override
  final bool showManual;
// задержка в миллисекундах перед показыванием нового финишного времени
  @override
  final int finishDelay;
// автоподстановка номеров в финишном протоколе
  @override
  final bool substituteNumbers;
  @override
  final int substituteNumbersDelay;
// показывать разницу между временем финиша с модуля и временем устройства
  @override
  final bool showFinishDifference;
// показывать разницу цветом между временем финиша с модуля и временем устройства
  @override
  final bool showColorFinishDifference;
// разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
  @override
  final int finishDifferenceThreshold;
// дельта в секундах для автоматического подставления стартового времени
  @override
  final int deltaInSeconds;
// задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
  @override
  final int updateStartCorrectionDelay;
// лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
  @override
  final int logLimit;
// активная тема
// required AppTheme appTheme,
  @override
  final ColorSeed seedColor;
  @override
  final Brightness brightness;
  @override
  final double contrastLevel;
  @override
  final DynamicSchemeVariant dynamicSchemeVariant;
  @override
  final bool isOLEDBackground;
// версия при предыдущем запуске
  @override
  final String previousVersion;
// обновлять ntp offset при запуске
  @override
  final bool updateNtpOffsetAtStartup;

  @override
  String toString() {
    return 'AppSettings(language: $language, reconnect: $reconnect, sound: $sound, beep: $beep, beepFromApp: $beepFromApp, voice: $voice, voiceFromApp: $voiceFromApp, voiceName: $voiceName, volume: $volume, pitch: $pitch, rate: $rate, voiceLanguage: $voiceLanguage, raceId: $raceId, stageId: $stageId, wakelock: $wakelock, startFab: $startFab, startFabSize: $startFabSize, finishFab: $finishFab, finishFabSize: $finishFabSize, countdown: $countdown, countdownSize: $countdownSize, countdownLeft: $countdownLeft, countdownTop: $countdownTop, countdownAtStartTime: $countdownAtStartTime, checkUpdates: $checkUpdates, showDNS: $showDNS, showDNF: $showDNF, showDSQ: $showDSQ, showHidden: $showHidden, showNumbers: $showNumbers, showManual: $showManual, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, showFinishDifference: $showFinishDifference, showColorFinishDifference: $showColorFinishDifference, finishDifferenceThreshold: $finishDifferenceThreshold, deltaInSeconds: $deltaInSeconds, updateStartCorrectionDelay: $updateStartCorrectionDelay, logLimit: $logLimit, seedColor: $seedColor, brightness: $brightness, contrastLevel: $contrastLevel, dynamicSchemeVariant: $dynamicSchemeVariant, isOLEDBackground: $isOLEDBackground, previousVersion: $previousVersion, updateNtpOffsetAtStartup: $updateNtpOffsetAtStartup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.reconnect, reconnect) ||
                other.reconnect == reconnect) &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.beep, beep) || other.beep == beep) &&
            (identical(other.beepFromApp, beepFromApp) ||
                other.beepFromApp == beepFromApp) &&
            (identical(other.voice, voice) || other.voice == voice) &&
            (identical(other.voiceFromApp, voiceFromApp) ||
                other.voiceFromApp == voiceFromApp) &&
            (identical(other.voiceName, voiceName) ||
                other.voiceName == voiceName) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.voiceLanguage, voiceLanguage) ||
                other.voiceLanguage == voiceLanguage) &&
            (identical(other.raceId, raceId) || other.raceId == raceId) &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.wakelock, wakelock) ||
                other.wakelock == wakelock) &&
            (identical(other.startFab, startFab) ||
                other.startFab == startFab) &&
            (identical(other.startFabSize, startFabSize) ||
                other.startFabSize == startFabSize) &&
            (identical(other.finishFab, finishFab) ||
                other.finishFab == finishFab) &&
            (identical(other.finishFabSize, finishFabSize) ||
                other.finishFabSize == finishFabSize) &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown) &&
            (identical(other.countdownSize, countdownSize) ||
                other.countdownSize == countdownSize) &&
            (identical(other.countdownLeft, countdownLeft) ||
                other.countdownLeft == countdownLeft) &&
            (identical(other.countdownTop, countdownTop) ||
                other.countdownTop == countdownTop) &&
            (identical(other.countdownAtStartTime, countdownAtStartTime) ||
                other.countdownAtStartTime == countdownAtStartTime) &&
            (identical(other.checkUpdates, checkUpdates) ||
                other.checkUpdates == checkUpdates) &&
            (identical(other.showDNS, showDNS) || other.showDNS == showDNS) &&
            (identical(other.showDNF, showDNF) || other.showDNF == showDNF) &&
            (identical(other.showDSQ, showDSQ) || other.showDSQ == showDSQ) &&
            (identical(other.showHidden, showHidden) ||
                other.showHidden == showHidden) &&
            (identical(other.showNumbers, showNumbers) ||
                other.showNumbers == showNumbers) &&
            (identical(other.showManual, showManual) ||
                other.showManual == showManual) &&
            (identical(other.finishDelay, finishDelay) ||
                other.finishDelay == finishDelay) &&
            (identical(other.substituteNumbers, substituteNumbers) ||
                other.substituteNumbers == substituteNumbers) &&
            (identical(other.substituteNumbersDelay, substituteNumbersDelay) ||
                other.substituteNumbersDelay == substituteNumbersDelay) &&
            (identical(other.showFinishDifference, showFinishDifference) ||
                other.showFinishDifference == showFinishDifference) &&
            (identical(other.showColorFinishDifference, showColorFinishDifference) ||
                other.showColorFinishDifference == showColorFinishDifference) &&
            (identical(other.finishDifferenceThreshold, finishDifferenceThreshold) ||
                other.finishDifferenceThreshold == finishDifferenceThreshold) &&
            (identical(other.deltaInSeconds, deltaInSeconds) ||
                other.deltaInSeconds == deltaInSeconds) &&
            (identical(other.updateStartCorrectionDelay,
                    updateStartCorrectionDelay) ||
                other.updateStartCorrectionDelay ==
                    updateStartCorrectionDelay) &&
            (identical(other.logLimit, logLimit) ||
                other.logLimit == logLimit) &&
            (identical(other.seedColor, seedColor) ||
                other.seedColor == seedColor) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.contrastLevel, contrastLevel) ||
                other.contrastLevel == contrastLevel) &&
            (identical(other.dynamicSchemeVariant, dynamicSchemeVariant) ||
                other.dynamicSchemeVariant == dynamicSchemeVariant) &&
            (identical(other.isOLEDBackground, isOLEDBackground) ||
                other.isOLEDBackground == isOLEDBackground) &&
            (identical(other.previousVersion, previousVersion) ||
                other.previousVersion == previousVersion) &&
            (identical(other.updateNtpOffsetAtStartup, updateNtpOffsetAtStartup) ||
                other.updateNtpOffsetAtStartup == updateNtpOffsetAtStartup));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        language,
        reconnect,
        sound,
        beep,
        beepFromApp,
        voice,
        voiceFromApp,
        voiceName,
        volume,
        pitch,
        rate,
        voiceLanguage,
        raceId,
        stageId,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        countdownLeft,
        countdownTop,
        countdownAtStartTime,
        checkUpdates,
        showDNS,
        showDNF,
        showDSQ,
        showHidden,
        showNumbers,
        showManual,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        showFinishDifference,
        showColorFinishDifference,
        finishDifferenceThreshold,
        deltaInSeconds,
        updateStartCorrectionDelay,
        logLimit,
        seedColor,
        brightness,
        contrastLevel,
        dynamicSchemeVariant,
        isOLEDBackground,
        previousVersion,
        updateNtpOffsetAtStartup
      ]);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsImplCopyWith<_$AppSettingsImpl> get copyWith =>
      __$$AppSettingsImplCopyWithImpl<_$AppSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)
        $default, {
    required TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)
        defaults,
  }) {
    return $default(
        language,
        reconnect,
        sound,
        beep,
        beepFromApp,
        voice,
        voiceFromApp,
        voiceName,
        volume,
        pitch,
        rate,
        voiceLanguage,
        raceId,
        stageId,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        countdownLeft,
        countdownTop,
        countdownAtStartTime,
        checkUpdates,
        showDNS,
        showDNF,
        showDSQ,
        showHidden,
        showNumbers,
        showManual,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        showFinishDifference,
        showColorFinishDifference,
        finishDifferenceThreshold,
        deltaInSeconds,
        updateStartCorrectionDelay,
        logLimit,
        seedColor,
        brightness,
        contrastLevel,
        dynamicSchemeVariant,
        isOLEDBackground,
        previousVersion,
        updateNtpOffsetAtStartup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        $default, {
    TResult? Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        defaults,
  }) {
    return $default?.call(
        language,
        reconnect,
        sound,
        beep,
        beepFromApp,
        voice,
        voiceFromApp,
        voiceName,
        volume,
        pitch,
        rate,
        voiceLanguage,
        raceId,
        stageId,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        countdownLeft,
        countdownTop,
        countdownAtStartTime,
        checkUpdates,
        showDNS,
        showDNF,
        showDSQ,
        showHidden,
        showNumbers,
        showManual,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        showFinishDifference,
        showColorFinishDifference,
        finishDifferenceThreshold,
        deltaInSeconds,
        updateStartCorrectionDelay,
        logLimit,
        seedColor,
        brightness,
        contrastLevel,
        dynamicSchemeVariant,
        isOLEDBackground,
        previousVersion,
        updateNtpOffsetAtStartup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        $default, {
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        defaults,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          language,
          reconnect,
          sound,
          beep,
          beepFromApp,
          voice,
          voiceFromApp,
          voiceName,
          volume,
          pitch,
          rate,
          voiceLanguage,
          raceId,
          stageId,
          wakelock,
          startFab,
          startFabSize,
          finishFab,
          finishFabSize,
          countdown,
          countdownSize,
          countdownLeft,
          countdownTop,
          countdownAtStartTime,
          checkUpdates,
          showDNS,
          showDNF,
          showDSQ,
          showHidden,
          showNumbers,
          showManual,
          finishDelay,
          substituteNumbers,
          substituteNumbersDelay,
          showFinishDifference,
          showColorFinishDifference,
          finishDifferenceThreshold,
          deltaInSeconds,
          updateStartCorrectionDelay,
          logLimit,
          seedColor,
          brightness,
          contrastLevel,
          dynamicSchemeVariant,
          isOLEDBackground,
          previousVersion,
          updateNtpOffsetAtStartup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppSettings value) $default, {
    required TResult Function(_AppSettingsDefaults value) defaults,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppSettings value)? $default, {
    TResult? Function(_AppSettingsDefaults value)? defaults,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppSettings value)? $default, {
    TResult Function(_AppSettingsDefaults value)? defaults,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AppSettings implements AppSettings {
  const factory _AppSettings(
      {required final String language,
      required final bool reconnect,
      required final bool sound,
      required final bool beep,
      required final bool beepFromApp,
      required final bool voice,
      required final bool voiceFromApp,
      required final bool voiceName,
      required final double volume,
      required final double pitch,
      required final double rate,
      required final String voiceLanguage,
      required final int raceId,
      required final int stageId,
      required final bool wakelock,
      required final bool startFab,
      required final double startFabSize,
      required final bool finishFab,
      required final double finishFabSize,
      required final bool countdown,
      required final double countdownSize,
      required final double countdownLeft,
      required final double countdownTop,
      required final bool countdownAtStartTime,
      required final bool checkUpdates,
      required final bool showDNS,
      required final bool showDNF,
      required final bool showDSQ,
      required final bool showHidden,
      required final bool showNumbers,
      required final bool showManual,
      required final int finishDelay,
      required final bool substituteNumbers,
      required final int substituteNumbersDelay,
      required final bool showFinishDifference,
      required final bool showColorFinishDifference,
      required final int finishDifferenceThreshold,
      required final int deltaInSeconds,
      required final int updateStartCorrectionDelay,
      required final int logLimit,
      required final ColorSeed seedColor,
      required final Brightness brightness,
      required final double contrastLevel,
      required final DynamicSchemeVariant dynamicSchemeVariant,
      required final bool isOLEDBackground,
      required final String previousVersion,
      required final bool updateNtpOffsetAtStartup}) = _$AppSettingsImpl;

// язык
  @override
  String get language; // = "ru", // локаль
// восстанавливать Bluetooth подключение при обрыве
  @override
  bool get reconnect; // звук
  @override
  bool get sound; // вкл/выкл
// звук обратного отсчёта
  @override
  bool get beep; // звуком обратного отсчёта управляет приложение
  @override
  bool get beepFromApp; // голосовые сообщения
  @override
  bool get voice;
  @override
  bool get voiceFromApp;
  @override
  bool get voiceName;
  @override
  double get volume; // громкость
  @override
  double get pitch; // тон речи
  @override
  double get rate; // скорость речи
  @override
  String get voiceLanguage; // = "ru-RU", // язык tts
// id выбранного соревнования и участка
  @override
  int get raceId;
  @override
  int get stageId; // всегда включённый экран
  @override
  bool get wakelock; // кнопки "добавить вручную" на экранах старта и финиша
  @override
  bool get startFab;
  @override
  double get startFabSize;
  @override
  bool get finishFab;
  @override
  double get finishFabSize; // обратный отсчёт на экране старта
  @override
  bool get countdown;
  @override
  double get countdownSize;
  @override
  double get countdownLeft;
  @override
  double
      get countdownTop; // показывать обратный отсчёт вместо стартового времени
  @override
  bool get countdownAtStartTime; // проверка обновлений
  @override
  bool get checkUpdates; // выборка значений на старте
  @override
  bool get showDNS;
  @override
  bool get showDNF;
  @override
  bool get showDSQ; // выборка значений на финише
  @override
  bool get showHidden;
  @override
  bool get showNumbers;
  @override
  bool
      get showManual; // задержка в миллисекундах перед показыванием нового финишного времени
  @override
  int get finishDelay; // автоподстановка номеров в финишном протоколе
  @override
  bool get substituteNumbers;
  @override
  int get substituteNumbersDelay; // показывать разницу между временем финиша с модуля и временем устройства
  @override
  bool
      get showFinishDifference; // показывать разницу цветом между временем финиша с модуля и временем устройства
  @override
  bool
      get showColorFinishDifference; // разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
  @override
  int get finishDifferenceThreshold; // дельта в секундах для автоматического подставления стартового времени
  @override
  int get deltaInSeconds; // задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
  @override
  int get updateStartCorrectionDelay; // лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
  @override
  int get logLimit; // активная тема
// required AppTheme appTheme,
  @override
  ColorSeed get seedColor;
  @override
  Brightness get brightness;
  @override
  double get contrastLevel;
  @override
  DynamicSchemeVariant get dynamicSchemeVariant;
  @override
  bool get isOLEDBackground; // версия при предыдущем запуске
  @override
  String get previousVersion; // обновлять ntp offset при запуске
  @override
  bool get updateNtpOffsetAtStartup;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsImplCopyWith<_$AppSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSettingsDefaultsImplCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$AppSettingsDefaultsImplCopyWith(_$AppSettingsDefaultsImpl value,
          $Res Function(_$AppSettingsDefaultsImpl) then) =
      __$$AppSettingsDefaultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String language,
      bool reconnect,
      bool sound,
      bool beep,
      bool beepFromApp,
      bool voice,
      bool voiceFromApp,
      bool voiceName,
      double volume,
      double pitch,
      double rate,
      String voiceLanguage,
      int raceId,
      int stageId,
      bool wakelock,
      bool startFab,
      double startFabSize,
      bool finishFab,
      double finishFabSize,
      bool countdown,
      double countdownSize,
      double countdownLeft,
      double countdownTop,
      bool countdownAtStartTime,
      bool checkUpdates,
      bool showDNS,
      bool showDNF,
      bool showDSQ,
      bool showHidden,
      bool showNumbers,
      bool showManual,
      int finishDelay,
      bool substituteNumbers,
      int substituteNumbersDelay,
      bool showFinishDifference,
      bool showColorFinishDifference,
      int finishDifferenceThreshold,
      int deltaInSeconds,
      int updateStartCorrectionDelay,
      int logLimit,
      ColorSeed seedColor,
      Brightness brightness,
      double contrastLevel,
      DynamicSchemeVariant dynamicSchemeVariant,
      bool isOLEDBackground,
      String previousVersion,
      bool updateNtpOffsetAtStartup});
}

/// @nodoc
class __$$AppSettingsDefaultsImplCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$AppSettingsDefaultsImpl>
    implements _$$AppSettingsDefaultsImplCopyWith<$Res> {
  __$$AppSettingsDefaultsImplCopyWithImpl(_$AppSettingsDefaultsImpl _value,
      $Res Function(_$AppSettingsDefaultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? reconnect = null,
    Object? sound = null,
    Object? beep = null,
    Object? beepFromApp = null,
    Object? voice = null,
    Object? voiceFromApp = null,
    Object? voiceName = null,
    Object? volume = null,
    Object? pitch = null,
    Object? rate = null,
    Object? voiceLanguage = null,
    Object? raceId = null,
    Object? stageId = null,
    Object? wakelock = null,
    Object? startFab = null,
    Object? startFabSize = null,
    Object? finishFab = null,
    Object? finishFabSize = null,
    Object? countdown = null,
    Object? countdownSize = null,
    Object? countdownLeft = null,
    Object? countdownTop = null,
    Object? countdownAtStartTime = null,
    Object? checkUpdates = null,
    Object? showDNS = null,
    Object? showDNF = null,
    Object? showDSQ = null,
    Object? showHidden = null,
    Object? showNumbers = null,
    Object? showManual = null,
    Object? finishDelay = null,
    Object? substituteNumbers = null,
    Object? substituteNumbersDelay = null,
    Object? showFinishDifference = null,
    Object? showColorFinishDifference = null,
    Object? finishDifferenceThreshold = null,
    Object? deltaInSeconds = null,
    Object? updateStartCorrectionDelay = null,
    Object? logLimit = null,
    Object? seedColor = null,
    Object? brightness = null,
    Object? contrastLevel = null,
    Object? dynamicSchemeVariant = null,
    Object? isOLEDBackground = null,
    Object? previousVersion = null,
    Object? updateNtpOffsetAtStartup = null,
  }) {
    return _then(_$AppSettingsDefaultsImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      reconnect: null == reconnect
          ? _value.reconnect
          : reconnect // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      beep: null == beep
          ? _value.beep
          : beep // ignore: cast_nullable_to_non_nullable
              as bool,
      beepFromApp: null == beepFromApp
          ? _value.beepFromApp
          : beepFromApp // ignore: cast_nullable_to_non_nullable
              as bool,
      voice: null == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceFromApp: null == voiceFromApp
          ? _value.voiceFromApp
          : voiceFromApp // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceName: null == voiceName
          ? _value.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      voiceLanguage: null == voiceLanguage
          ? _value.voiceLanguage
          : voiceLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      raceId: null == raceId
          ? _value.raceId
          : raceId // ignore: cast_nullable_to_non_nullable
              as int,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as int,
      wakelock: null == wakelock
          ? _value.wakelock
          : wakelock // ignore: cast_nullable_to_non_nullable
              as bool,
      startFab: null == startFab
          ? _value.startFab
          : startFab // ignore: cast_nullable_to_non_nullable
              as bool,
      startFabSize: null == startFabSize
          ? _value.startFabSize
          : startFabSize // ignore: cast_nullable_to_non_nullable
              as double,
      finishFab: null == finishFab
          ? _value.finishFab
          : finishFab // ignore: cast_nullable_to_non_nullable
              as bool,
      finishFabSize: null == finishFabSize
          ? _value.finishFabSize
          : finishFabSize // ignore: cast_nullable_to_non_nullable
              as double,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as bool,
      countdownSize: null == countdownSize
          ? _value.countdownSize
          : countdownSize // ignore: cast_nullable_to_non_nullable
              as double,
      countdownLeft: null == countdownLeft
          ? _value.countdownLeft
          : countdownLeft // ignore: cast_nullable_to_non_nullable
              as double,
      countdownTop: null == countdownTop
          ? _value.countdownTop
          : countdownTop // ignore: cast_nullable_to_non_nullable
              as double,
      countdownAtStartTime: null == countdownAtStartTime
          ? _value.countdownAtStartTime
          : countdownAtStartTime // ignore: cast_nullable_to_non_nullable
              as bool,
      checkUpdates: null == checkUpdates
          ? _value.checkUpdates
          : checkUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      showDNS: null == showDNS
          ? _value.showDNS
          : showDNS // ignore: cast_nullable_to_non_nullable
              as bool,
      showDNF: null == showDNF
          ? _value.showDNF
          : showDNF // ignore: cast_nullable_to_non_nullable
              as bool,
      showDSQ: null == showDSQ
          ? _value.showDSQ
          : showDSQ // ignore: cast_nullable_to_non_nullable
              as bool,
      showHidden: null == showHidden
          ? _value.showHidden
          : showHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      showNumbers: null == showNumbers
          ? _value.showNumbers
          : showNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      showManual: null == showManual
          ? _value.showManual
          : showManual // ignore: cast_nullable_to_non_nullable
              as bool,
      finishDelay: null == finishDelay
          ? _value.finishDelay
          : finishDelay // ignore: cast_nullable_to_non_nullable
              as int,
      substituteNumbers: null == substituteNumbers
          ? _value.substituteNumbers
          : substituteNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      substituteNumbersDelay: null == substituteNumbersDelay
          ? _value.substituteNumbersDelay
          : substituteNumbersDelay // ignore: cast_nullable_to_non_nullable
              as int,
      showFinishDifference: null == showFinishDifference
          ? _value.showFinishDifference
          : showFinishDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      showColorFinishDifference: null == showColorFinishDifference
          ? _value.showColorFinishDifference
          : showColorFinishDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      finishDifferenceThreshold: null == finishDifferenceThreshold
          ? _value.finishDifferenceThreshold
          : finishDifferenceThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      deltaInSeconds: null == deltaInSeconds
          ? _value.deltaInSeconds
          : deltaInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updateStartCorrectionDelay: null == updateStartCorrectionDelay
          ? _value.updateStartCorrectionDelay
          : updateStartCorrectionDelay // ignore: cast_nullable_to_non_nullable
              as int,
      logLimit: null == logLimit
          ? _value.logLimit
          : logLimit // ignore: cast_nullable_to_non_nullable
              as int,
      seedColor: null == seedColor
          ? _value.seedColor
          : seedColor // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
      contrastLevel: null == contrastLevel
          ? _value.contrastLevel
          : contrastLevel // ignore: cast_nullable_to_non_nullable
              as double,
      dynamicSchemeVariant: null == dynamicSchemeVariant
          ? _value.dynamicSchemeVariant
          : dynamicSchemeVariant // ignore: cast_nullable_to_non_nullable
              as DynamicSchemeVariant,
      isOLEDBackground: null == isOLEDBackground
          ? _value.isOLEDBackground
          : isOLEDBackground // ignore: cast_nullable_to_non_nullable
              as bool,
      previousVersion: null == previousVersion
          ? _value.previousVersion
          : previousVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updateNtpOffsetAtStartup: null == updateNtpOffsetAtStartup
          ? _value.updateNtpOffsetAtStartup
          : updateNtpOffsetAtStartup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppSettingsDefaultsImpl implements _AppSettingsDefaults {
  const _$AppSettingsDefaultsImpl(
      {this.language = 'ru',
      this.reconnect = true,
      this.sound = true,
      this.beep = true,
      this.beepFromApp = false,
      this.voice = true,
      this.voiceFromApp = false,
      this.voiceName = true,
      this.volume = 1.0,
      this.pitch = 1.0,
      this.rate = 0.5,
      this.voiceLanguage = 'ru-RU',
      this.raceId = -1,
      this.stageId = -1,
      this.wakelock = true,
      this.startFab = true,
      this.startFabSize = 75,
      this.finishFab = true,
      this.finishFabSize = 75,
      this.countdown = false,
      this.countdownSize = 75,
      this.countdownLeft = 0,
      this.countdownTop = 0,
      this.countdownAtStartTime = true,
      this.checkUpdates = true,
      this.showDNS = false,
      this.showDNF = false,
      this.showDSQ = false,
      this.showHidden = false,
      this.showNumbers = true,
      this.showManual = true,
      this.finishDelay = 350,
      this.substituteNumbers = false,
      this.substituteNumbersDelay = 500,
      this.showFinishDifference = false,
      this.showColorFinishDifference = false,
      this.finishDifferenceThreshold = 2000,
      this.deltaInSeconds = 15,
      this.updateStartCorrectionDelay = 2000,
      this.logLimit = 100,
      this.seedColor = ColorSeed.blue,
      this.brightness = Brightness.light,
      this.contrastLevel = -1.0,
      this.dynamicSchemeVariant = DynamicSchemeVariant.vibrant,
      this.isOLEDBackground = false,
      this.previousVersion = '0.0.0',
      this.updateNtpOffsetAtStartup = false});

// язык
  @override
  @JsonKey()
  final String language;
// восстанавливать Bluetooth подключение при обрыве
  @override
  @JsonKey()
  final bool reconnect;
// звук
  @override
  @JsonKey()
  final bool sound;
// вкл/выкл
// звук обратного отсчёта
  @override
  @JsonKey()
  final bool beep;
// звуком обратного отсчёта управляет приложение
  @override
  @JsonKey()
  final bool beepFromApp;
// голосовые сообщения
  @override
  @JsonKey()
  final bool voice;
// использовать голосовые сообщения
  @override
  @JsonKey()
  final bool voiceFromApp;
// использовать голосовые сообщения и брать данные из приложения
  @override
  @JsonKey()
  final bool voiceName;
// называть имена участников
  @override
  @JsonKey()
  final double volume;
// громкость
  @override
  @JsonKey()
  final double pitch;
// тон речи
  @override
  @JsonKey()
  final double rate;
// скорость речи
  @override
  @JsonKey()
  final String voiceLanguage;
// = "ru-RU", // язык
// id выбранного соревнования и участка
  @override
  @JsonKey()
  final int raceId;
  @override
  @JsonKey()
  final int stageId;
// всегда включённый экран
  @override
  @JsonKey()
  final bool wakelock;
// кнопки "добавить вручную" на экранах старта и финиша
  @override
  @JsonKey()
  final bool startFab;
  @override
  @JsonKey()
  final double startFabSize;
  @override
  @JsonKey()
  final bool finishFab;
  @override
  @JsonKey()
  final double finishFabSize;
// обратный отсчёт на экране старта
  @override
  @JsonKey()
  final bool countdown;
  @override
  @JsonKey()
  final double countdownSize;
  @override
  @JsonKey()
  final double countdownLeft;
  @override
  @JsonKey()
  final double countdownTop;
// показывать обратный отсчёт вместо стартового времени
  @override
  @JsonKey()
  final bool countdownAtStartTime;
// проверка обновлений
  @override
  @JsonKey()
  final bool checkUpdates;
// выборка значений на старте
  @override
  @JsonKey()
  final bool showDNS;
  @override
  @JsonKey()
  final bool showDNF;
  @override
  @JsonKey()
  final bool showDSQ;
// выборка значений на финише
  @override
  @JsonKey()
  final bool showHidden;
  @override
  @JsonKey()
  final bool showNumbers;
  @override
  @JsonKey()
  final bool showManual;
// задержка в миллисекундах перед показыванием нового финишного времени
  @override
  @JsonKey()
  final int finishDelay;
// автоподстановка номеров в финишном протоколе
  @override
  @JsonKey()
  final bool substituteNumbers;
  @override
  @JsonKey()
  final int substituteNumbersDelay;
// показывать разницу между временем финиша с модуля и временем устройства
  @override
  @JsonKey()
  final bool showFinishDifference;
// показывать разницу цветом между временем финиша с модуля и временем устройства
  @override
  @JsonKey()
  final bool showColorFinishDifference;
// разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
  @override
  @JsonKey()
  final int finishDifferenceThreshold;
// дельта в секундах для автоматического подставления стартового времени
  @override
  @JsonKey()
  final int deltaInSeconds;
// задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
  @override
  @JsonKey()
  final int updateStartCorrectionDelay;
// лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
  @override
  @JsonKey()
  final int logLimit;
// активная тема
// @Default(AppTheme.lightBlue) AppTheme appTheme,
  @override
  @JsonKey()
  final ColorSeed seedColor;
  @override
  @JsonKey()
  final Brightness brightness;
  @override
  @JsonKey()
  final double contrastLevel;
  @override
  @JsonKey()
  final DynamicSchemeVariant dynamicSchemeVariant;
  @override
  @JsonKey()
  final bool isOLEDBackground;
// версия при предыдущем запуске
  @override
  @JsonKey()
  final String previousVersion;
// обновлять ntp offset при запуске
  @override
  @JsonKey()
  final bool updateNtpOffsetAtStartup;

  @override
  String toString() {
    return 'AppSettings.defaults(language: $language, reconnect: $reconnect, sound: $sound, beep: $beep, beepFromApp: $beepFromApp, voice: $voice, voiceFromApp: $voiceFromApp, voiceName: $voiceName, volume: $volume, pitch: $pitch, rate: $rate, voiceLanguage: $voiceLanguage, raceId: $raceId, stageId: $stageId, wakelock: $wakelock, startFab: $startFab, startFabSize: $startFabSize, finishFab: $finishFab, finishFabSize: $finishFabSize, countdown: $countdown, countdownSize: $countdownSize, countdownLeft: $countdownLeft, countdownTop: $countdownTop, countdownAtStartTime: $countdownAtStartTime, checkUpdates: $checkUpdates, showDNS: $showDNS, showDNF: $showDNF, showDSQ: $showDSQ, showHidden: $showHidden, showNumbers: $showNumbers, showManual: $showManual, finishDelay: $finishDelay, substituteNumbers: $substituteNumbers, substituteNumbersDelay: $substituteNumbersDelay, showFinishDifference: $showFinishDifference, showColorFinishDifference: $showColorFinishDifference, finishDifferenceThreshold: $finishDifferenceThreshold, deltaInSeconds: $deltaInSeconds, updateStartCorrectionDelay: $updateStartCorrectionDelay, logLimit: $logLimit, seedColor: $seedColor, brightness: $brightness, contrastLevel: $contrastLevel, dynamicSchemeVariant: $dynamicSchemeVariant, isOLEDBackground: $isOLEDBackground, previousVersion: $previousVersion, updateNtpOffsetAtStartup: $updateNtpOffsetAtStartup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsDefaultsImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.reconnect, reconnect) ||
                other.reconnect == reconnect) &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.beep, beep) || other.beep == beep) &&
            (identical(other.beepFromApp, beepFromApp) ||
                other.beepFromApp == beepFromApp) &&
            (identical(other.voice, voice) || other.voice == voice) &&
            (identical(other.voiceFromApp, voiceFromApp) ||
                other.voiceFromApp == voiceFromApp) &&
            (identical(other.voiceName, voiceName) ||
                other.voiceName == voiceName) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.voiceLanguage, voiceLanguage) ||
                other.voiceLanguage == voiceLanguage) &&
            (identical(other.raceId, raceId) || other.raceId == raceId) &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.wakelock, wakelock) ||
                other.wakelock == wakelock) &&
            (identical(other.startFab, startFab) ||
                other.startFab == startFab) &&
            (identical(other.startFabSize, startFabSize) ||
                other.startFabSize == startFabSize) &&
            (identical(other.finishFab, finishFab) ||
                other.finishFab == finishFab) &&
            (identical(other.finishFabSize, finishFabSize) ||
                other.finishFabSize == finishFabSize) &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown) &&
            (identical(other.countdownSize, countdownSize) ||
                other.countdownSize == countdownSize) &&
            (identical(other.countdownLeft, countdownLeft) ||
                other.countdownLeft == countdownLeft) &&
            (identical(other.countdownTop, countdownTop) ||
                other.countdownTop == countdownTop) &&
            (identical(other.countdownAtStartTime, countdownAtStartTime) ||
                other.countdownAtStartTime == countdownAtStartTime) &&
            (identical(other.checkUpdates, checkUpdates) ||
                other.checkUpdates == checkUpdates) &&
            (identical(other.showDNS, showDNS) || other.showDNS == showDNS) &&
            (identical(other.showDNF, showDNF) || other.showDNF == showDNF) &&
            (identical(other.showDSQ, showDSQ) || other.showDSQ == showDSQ) &&
            (identical(other.showHidden, showHidden) ||
                other.showHidden == showHidden) &&
            (identical(other.showNumbers, showNumbers) ||
                other.showNumbers == showNumbers) &&
            (identical(other.showManual, showManual) ||
                other.showManual == showManual) &&
            (identical(other.finishDelay, finishDelay) ||
                other.finishDelay == finishDelay) &&
            (identical(other.substituteNumbers, substituteNumbers) ||
                other.substituteNumbers == substituteNumbers) &&
            (identical(other.substituteNumbersDelay, substituteNumbersDelay) ||
                other.substituteNumbersDelay == substituteNumbersDelay) &&
            (identical(other.showFinishDifference, showFinishDifference) ||
                other.showFinishDifference == showFinishDifference) &&
            (identical(other.showColorFinishDifference, showColorFinishDifference) ||
                other.showColorFinishDifference == showColorFinishDifference) &&
            (identical(other.finishDifferenceThreshold, finishDifferenceThreshold) ||
                other.finishDifferenceThreshold == finishDifferenceThreshold) &&
            (identical(other.deltaInSeconds, deltaInSeconds) ||
                other.deltaInSeconds == deltaInSeconds) &&
            (identical(other.updateStartCorrectionDelay,
                    updateStartCorrectionDelay) ||
                other.updateStartCorrectionDelay ==
                    updateStartCorrectionDelay) &&
            (identical(other.logLimit, logLimit) ||
                other.logLimit == logLimit) &&
            (identical(other.seedColor, seedColor) ||
                other.seedColor == seedColor) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.contrastLevel, contrastLevel) ||
                other.contrastLevel == contrastLevel) &&
            (identical(other.dynamicSchemeVariant, dynamicSchemeVariant) ||
                other.dynamicSchemeVariant == dynamicSchemeVariant) &&
            (identical(other.isOLEDBackground, isOLEDBackground) ||
                other.isOLEDBackground == isOLEDBackground) &&
            (identical(other.previousVersion, previousVersion) ||
                other.previousVersion == previousVersion) &&
            (identical(other.updateNtpOffsetAtStartup, updateNtpOffsetAtStartup) ||
                other.updateNtpOffsetAtStartup == updateNtpOffsetAtStartup));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        language,
        reconnect,
        sound,
        beep,
        beepFromApp,
        voice,
        voiceFromApp,
        voiceName,
        volume,
        pitch,
        rate,
        voiceLanguage,
        raceId,
        stageId,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        countdownLeft,
        countdownTop,
        countdownAtStartTime,
        checkUpdates,
        showDNS,
        showDNF,
        showDSQ,
        showHidden,
        showNumbers,
        showManual,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        showFinishDifference,
        showColorFinishDifference,
        finishDifferenceThreshold,
        deltaInSeconds,
        updateStartCorrectionDelay,
        logLimit,
        seedColor,
        brightness,
        contrastLevel,
        dynamicSchemeVariant,
        isOLEDBackground,
        previousVersion,
        updateNtpOffsetAtStartup
      ]);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsDefaultsImplCopyWith<_$AppSettingsDefaultsImpl> get copyWith =>
      __$$AppSettingsDefaultsImplCopyWithImpl<_$AppSettingsDefaultsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)
        $default, {
    required TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)
        defaults,
  }) {
    return defaults(
        language,
        reconnect,
        sound,
        beep,
        beepFromApp,
        voice,
        voiceFromApp,
        voiceName,
        volume,
        pitch,
        rate,
        voiceLanguage,
        raceId,
        stageId,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        countdownLeft,
        countdownTop,
        countdownAtStartTime,
        checkUpdates,
        showDNS,
        showDNF,
        showDSQ,
        showHidden,
        showNumbers,
        showManual,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        showFinishDifference,
        showColorFinishDifference,
        finishDifferenceThreshold,
        deltaInSeconds,
        updateStartCorrectionDelay,
        logLimit,
        seedColor,
        brightness,
        contrastLevel,
        dynamicSchemeVariant,
        isOLEDBackground,
        previousVersion,
        updateNtpOffsetAtStartup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        $default, {
    TResult? Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        defaults,
  }) {
    return defaults?.call(
        language,
        reconnect,
        sound,
        beep,
        beepFromApp,
        voice,
        voiceFromApp,
        voiceName,
        volume,
        pitch,
        rate,
        voiceLanguage,
        raceId,
        stageId,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        countdownLeft,
        countdownTop,
        countdownAtStartTime,
        checkUpdates,
        showDNS,
        showDNF,
        showDSQ,
        showHidden,
        showNumbers,
        showManual,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        showFinishDifference,
        showColorFinishDifference,
        finishDifferenceThreshold,
        deltaInSeconds,
        updateStartCorrectionDelay,
        logLimit,
        seedColor,
        brightness,
        contrastLevel,
        dynamicSchemeVariant,
        isOLEDBackground,
        previousVersion,
        updateNtpOffsetAtStartup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        $default, {
    TResult Function(
            String language,
            bool reconnect,
            bool sound,
            bool beep,
            bool beepFromApp,
            bool voice,
            bool voiceFromApp,
            bool voiceName,
            double volume,
            double pitch,
            double rate,
            String voiceLanguage,
            int raceId,
            int stageId,
            bool wakelock,
            bool startFab,
            double startFabSize,
            bool finishFab,
            double finishFabSize,
            bool countdown,
            double countdownSize,
            double countdownLeft,
            double countdownTop,
            bool countdownAtStartTime,
            bool checkUpdates,
            bool showDNS,
            bool showDNF,
            bool showDSQ,
            bool showHidden,
            bool showNumbers,
            bool showManual,
            int finishDelay,
            bool substituteNumbers,
            int substituteNumbersDelay,
            bool showFinishDifference,
            bool showColorFinishDifference,
            int finishDifferenceThreshold,
            int deltaInSeconds,
            int updateStartCorrectionDelay,
            int logLimit,
            ColorSeed seedColor,
            Brightness brightness,
            double contrastLevel,
            DynamicSchemeVariant dynamicSchemeVariant,
            bool isOLEDBackground,
            String previousVersion,
            bool updateNtpOffsetAtStartup)?
        defaults,
    required TResult orElse(),
  }) {
    if (defaults != null) {
      return defaults(
          language,
          reconnect,
          sound,
          beep,
          beepFromApp,
          voice,
          voiceFromApp,
          voiceName,
          volume,
          pitch,
          rate,
          voiceLanguage,
          raceId,
          stageId,
          wakelock,
          startFab,
          startFabSize,
          finishFab,
          finishFabSize,
          countdown,
          countdownSize,
          countdownLeft,
          countdownTop,
          countdownAtStartTime,
          checkUpdates,
          showDNS,
          showDNF,
          showDSQ,
          showHidden,
          showNumbers,
          showManual,
          finishDelay,
          substituteNumbers,
          substituteNumbersDelay,
          showFinishDifference,
          showColorFinishDifference,
          finishDifferenceThreshold,
          deltaInSeconds,
          updateStartCorrectionDelay,
          logLimit,
          seedColor,
          brightness,
          contrastLevel,
          dynamicSchemeVariant,
          isOLEDBackground,
          previousVersion,
          updateNtpOffsetAtStartup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppSettings value) $default, {
    required TResult Function(_AppSettingsDefaults value) defaults,
  }) {
    return defaults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppSettings value)? $default, {
    TResult? Function(_AppSettingsDefaults value)? defaults,
  }) {
    return defaults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppSettings value)? $default, {
    TResult Function(_AppSettingsDefaults value)? defaults,
    required TResult orElse(),
  }) {
    if (defaults != null) {
      return defaults(this);
    }
    return orElse();
  }
}

abstract class _AppSettingsDefaults implements AppSettings {
  const factory _AppSettingsDefaults(
      {final String language,
      final bool reconnect,
      final bool sound,
      final bool beep,
      final bool beepFromApp,
      final bool voice,
      final bool voiceFromApp,
      final bool voiceName,
      final double volume,
      final double pitch,
      final double rate,
      final String voiceLanguage,
      final int raceId,
      final int stageId,
      final bool wakelock,
      final bool startFab,
      final double startFabSize,
      final bool finishFab,
      final double finishFabSize,
      final bool countdown,
      final double countdownSize,
      final double countdownLeft,
      final double countdownTop,
      final bool countdownAtStartTime,
      final bool checkUpdates,
      final bool showDNS,
      final bool showDNF,
      final bool showDSQ,
      final bool showHidden,
      final bool showNumbers,
      final bool showManual,
      final int finishDelay,
      final bool substituteNumbers,
      final int substituteNumbersDelay,
      final bool showFinishDifference,
      final bool showColorFinishDifference,
      final int finishDifferenceThreshold,
      final int deltaInSeconds,
      final int updateStartCorrectionDelay,
      final int logLimit,
      final ColorSeed seedColor,
      final Brightness brightness,
      final double contrastLevel,
      final DynamicSchemeVariant dynamicSchemeVariant,
      final bool isOLEDBackground,
      final String previousVersion,
      final bool updateNtpOffsetAtStartup}) = _$AppSettingsDefaultsImpl;

// язык
  @override
  String get language; // восстанавливать Bluetooth подключение при обрыве
  @override
  bool get reconnect; // звук
  @override
  bool get sound; // вкл/выкл
// звук обратного отсчёта
  @override
  bool get beep; // звуком обратного отсчёта управляет приложение
  @override
  bool get beepFromApp; // голосовые сообщения
  @override
  bool get voice; // использовать голосовые сообщения
  @override
  bool
      get voiceFromApp; // использовать голосовые сообщения и брать данные из приложения
  @override
  bool get voiceName; // называть имена участников
  @override
  double get volume; // громкость
  @override
  double get pitch; // тон речи
  @override
  double get rate; // скорость речи
  @override
  String get voiceLanguage; // = "ru-RU", // язык
// id выбранного соревнования и участка
  @override
  int get raceId;
  @override
  int get stageId; // всегда включённый экран
  @override
  bool get wakelock; // кнопки "добавить вручную" на экранах старта и финиша
  @override
  bool get startFab;
  @override
  double get startFabSize;
  @override
  bool get finishFab;
  @override
  double get finishFabSize; // обратный отсчёт на экране старта
  @override
  bool get countdown;
  @override
  double get countdownSize;
  @override
  double get countdownLeft;
  @override
  double
      get countdownTop; // показывать обратный отсчёт вместо стартового времени
  @override
  bool get countdownAtStartTime; // проверка обновлений
  @override
  bool get checkUpdates; // выборка значений на старте
  @override
  bool get showDNS;
  @override
  bool get showDNF;
  @override
  bool get showDSQ; // выборка значений на финише
  @override
  bool get showHidden;
  @override
  bool get showNumbers;
  @override
  bool
      get showManual; // задержка в миллисекундах перед показыванием нового финишного времени
  @override
  int get finishDelay; // автоподстановка номеров в финишном протоколе
  @override
  bool get substituteNumbers;
  @override
  int get substituteNumbersDelay; // показывать разницу между временем финиша с модуля и временем устройства
  @override
  bool
      get showFinishDifference; // показывать разницу цветом между временем финиша с модуля и временем устройства
  @override
  bool
      get showColorFinishDifference; // разница между временем финиша с модуля и временем устройства в миллисекундах
// при превышении которого будет цветовая индикация
  @override
  int get finishDifferenceThreshold; // дельта в секундах для автоматического подставления стартового времени
  @override
  int get deltaInSeconds; // задержка в миллисекундах перед обновлением стартовой поправки,
// если она уже была установлена
  @override
  int get updateStartCorrectionDelay; // лог
// ограничение количества показываемых строк в окне лога
// -1 = без ограничений
  @override
  int get logLimit; // активная тема
// @Default(AppTheme.lightBlue) AppTheme appTheme,
  @override
  ColorSeed get seedColor;
  @override
  Brightness get brightness;
  @override
  double get contrastLevel;
  @override
  DynamicSchemeVariant get dynamicSchemeVariant;
  @override
  bool get isOLEDBackground; // версия при предыдущем запуске
  @override
  String get previousVersion; // обновлять ntp offset при запуске
  @override
  bool get updateNtpOffsetAtStartup;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsDefaultsImplCopyWith<_$AppSettingsDefaultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
