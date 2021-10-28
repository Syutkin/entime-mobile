part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  // звук
  final bool sound; // вкл/выкл

  // звук обратного отсчёта
  final bool beep;

  // голосовые сообщения
  final bool voice;
  final bool voiceName;
  final double volume; // громкость
  final double pitch; // тон речи
  final double rate; // скорость речи
  final String language; // = "ru-RU"; // язык

  final String recentFile;

  // всегда включённый экран
  final bool wakelock;

  // кнопки "добавить вручную" на экранах старта и финиша
  final bool startFab;
  final double startFabSize;
  final bool finishFab;
  final double finishFabSize;

  // обратный отсчёт на экране старта
  final bool countdown;
  final double countdownSize;

  // проверка обновлений
  final bool checkUpdates;

  // выборка значений в финише
  final bool hideMarked;
  final bool hideNumbers;
  final bool hideManual;

  // восстанавливать Bluetooth подключение при обрыве
  final bool reconnect;

  // задержка в миллисекундах перед показыванием нового финишного времени
  final int finishDelay;

  // автоподстановка номеров в финишном протоколе
  final bool substituteNumbers;
  final int substituteNumbersDelay;

  // лог
  // ограничение количества показываемых строк в окне лога
  // -1 = без ограничений
  final int logLimit;

  const SettingsState({
    required this.sound,
    required this.beep,
    required this.voice,
    required this.voiceName,
    required this.volume,
    required this.pitch,
    required this.rate,
    required this.language,
    required this.recentFile,
    required this.wakelock,
    required this.startFab,
    required this.startFabSize,
    required this.finishFab,
    required this.finishFabSize,
    required this.countdown,
    required this.countdownSize,
    required this.checkUpdates,
    required this.hideMarked,
    required this.hideNumbers,
    required this.hideManual,
    required this.reconnect,
    required this.finishDelay,
    required this.substituteNumbers,
    required this.substituteNumbersDelay,
    required this.logLimit,
  });

  static SettingsState initial() {
    return const SettingsState(
      sound: true,
      beep: true,
      voice: true,
      voiceName: false,
      volume: 0.5,
      pitch: 1.0,
      rate: 0.8,
      language: 'ru-RU',
      recentFile: '',
      wakelock: true,
      startFab: true,
      startFabSize: 75.0,
      finishFab: true,
      finishFabSize: 75.0,
      countdown: true,
      countdownSize: 75.0,
      checkUpdates: true,
      hideMarked: true,
      hideNumbers: false,
      hideManual: false,
      reconnect: true,
      finishDelay: 350,
      substituteNumbers: true,
      substituteNumbersDelay: 500,
      logLimit: -1,
    );
  }

  SettingsState.reset(
    SettingsState state, {
    bool? sound,
    bool? beep,
    bool? voice,
    bool? voiceName,
    double? volume,
    double? pitch,
    double? rate,
    String? language,
    String? recentFile,
    bool? wakelock,
    bool? startFab,
    double? startFabSize,
    bool? finishFab,
    double? finishFabSize,
    bool? countdown,
    double? countdownSize,
    bool? checkUpdates,
    bool? hideMarked,
    bool? hideNumbers,
    bool? hideManual,
    bool? reconnect,
    int? finishDelay,
    bool? substituteNumbers,
    int? substituteNumbersDelay,
    int? logLimit,
  }) : this(
          sound: true,
          beep: true,
          voice: true,
          voiceName: true,
          volume: 0.5,
          pitch: 1.0,
          rate: 0.8,
          language: 'ru-RU',
          recentFile: state.recentFile,
          wakelock: true,
          startFab: true,
          startFabSize: 75.0,
          finishFab: true,
          finishFabSize: 75.0,
          countdown: true,
          countdownSize: 75.0,
          checkUpdates: true,
          hideMarked: true,
          hideNumbers: false,
          hideManual: false,
          reconnect: true,
          finishDelay: 350,
          substituteNumbers: true,
          substituteNumbersDelay: 500,
          logLimit: -1,
        );

  SettingsState.clone(
    SettingsState state, {
    bool? sound,
    bool? beep,
    bool? voice,
    bool? voiceName,
    double? volume,
    double? pitch,
    double? rate,
    String? language,
    String? recentFile,
    bool? wakelock,
    bool? startFab,
    double? startFabSize,
    bool? finishFab,
    double? finishFabSize,
    bool? countdown,
    double? countdownSize,
    bool? checkUpdates,
    bool? hideMarked,
    bool? hideNumbers,
    bool? hideManual,
    bool? reconnect,
    int? finishDelay,
    bool? substituteNumbers,
    int? substituteNumbersDelay,
    int? logLimit,
  }) : this(
          sound: sound ?? state.sound,
          beep: beep ?? state.beep,
          voice: voice ?? state.voice,
          voiceName: voiceName ?? state.voiceName,
          volume: volume ?? state.volume,
          pitch: pitch ?? state.pitch,
          rate: rate ?? state.rate,
          language: language ?? state.language,
          recentFile: recentFile ?? state.recentFile,
          wakelock: wakelock ?? state.wakelock,
          startFab: startFab ?? state.startFab,
          startFabSize: startFabSize ?? state.startFabSize,
          finishFab: finishFab ?? state.finishFab,
          finishFabSize: finishFabSize ?? state.finishFabSize,
          countdown: countdown ?? state.countdown,
          countdownSize: countdownSize ?? state.countdownSize,
          checkUpdates: checkUpdates ?? state.checkUpdates,
          hideMarked: hideMarked ?? state.hideMarked,
          hideNumbers: hideNumbers ?? state.hideNumbers,
          hideManual: hideManual ?? state.hideManual,
          reconnect: reconnect ?? state.reconnect,
          finishDelay: finishDelay ?? state.finishDelay,
          substituteNumbers: substituteNumbers ?? state.substituteNumbers,
          substituteNumbersDelay:
              substituteNumbersDelay ?? state.substituteNumbersDelay,
          logLimit: logLimit ?? state.logLimit,
        );

  @override
  List<Object> get props => [
        sound,
        beep,
        voice,
        voiceName,
        volume,
        pitch,
        rate,
        language,
        recentFile,
        wakelock,
        startFab,
        startFabSize,
        finishFab,
        finishFabSize,
        countdown,
        countdownSize,
        checkUpdates,
        hideMarked,
        hideNumbers,
        hideManual,
        reconnect,
        finishDelay,
        substituteNumbers,
        substituteNumbersDelay,
        logLimit,
      ];
}
