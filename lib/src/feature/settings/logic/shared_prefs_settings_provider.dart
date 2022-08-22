import 'package:shared_preferences/shared_preferences.dart';

import '../settings.dart';

class SharedPrefsSettingsProvider extends SettingsProvider{
  final SharedPreferences _prefs;
  AppSettings _settings;

  @override
  AppSettings get settings => _settings;

  SharedPrefsSettingsProvider._(SharedPreferences prefs, AppSettings settings)
      : _prefs = prefs,
        _settings = settings;

  static Future<SharedPrefsSettingsProvider> load() async {
    final prefs = await SharedPreferences.getInstance();
    final settings = AppSettings(
      sound: prefs.getBool('sound') ?? const AppSettings().sound,
      beep: prefs.getBool('beep') ?? const AppSettings().beep,
      voice: prefs.getBool('voice') ?? const AppSettings().voice,
      voiceName: prefs.getBool('voiceName') ?? const AppSettings().voiceName,
      volume: prefs.getDouble('volume') ?? const AppSettings().volume,
      pitch: prefs.getDouble('pitch') ?? const AppSettings().pitch,
      rate: prefs.getDouble('rate') ?? const AppSettings().rate,
      language: prefs.getString('language') ?? const AppSettings().language,
      recentFile:
      prefs.getString('recentFile') ?? const AppSettings().recentFile,
      wakelock: prefs.getBool('wakelock') ?? const AppSettings().wakelock,
      startFab: prefs.getBool('startFab') ?? const AppSettings().startFab,
      startFabSize:
      prefs.getDouble('startFabSize') ?? const AppSettings().startFabSize,
      finishFab: prefs.getBool('finishFab') ?? const AppSettings().finishFab,
      finishFabSize:
      prefs.getDouble('finishFabSize') ?? const AppSettings().finishFabSize,
      countdown: prefs.getBool('countdown') ?? const AppSettings().countdown,
      countdownSize:
      prefs.getDouble('countdownSize') ?? const AppSettings().countdownSize,
      countdownLeft:
      prefs.getDouble('countdownLeft') ?? const AppSettings().countdownLeft,
      countdownTop:
      prefs.getDouble('countdownTop') ?? const AppSettings().countdownTop,
      countdownAtStartTime: prefs.getBool('countdownAtStartTime') ??
          const AppSettings().countdownAtStartTime,
      checkUpdates:
      prefs.getBool('checkUpdates') ?? const AppSettings().checkUpdates,
      hideMarked: prefs.getBool('hideMarked') ?? const AppSettings().hideMarked,
      hideNumbers:
      prefs.getBool('hideNumbers') ?? const AppSettings().hideNumbers,
      hideManual: prefs.getBool('hideManual') ?? const AppSettings().hideManual,
      reconnect: prefs.getBool('reconnect') ?? const AppSettings().reconnect,
      finishDelay:
      prefs.getInt('finishDelay') ?? const AppSettings().finishDelay,
      substituteNumbers: prefs.getBool('substituteNumbers') ??
          const AppSettings().substituteNumbers,
      substituteNumbersDelay: prefs.getInt('substituteNumbersDelay') ??
          const AppSettings().substituteNumbersDelay,
      logLimit: prefs.getInt('logLimit') ?? const AppSettings().logLimit,
      appTheme: themeFromString(prefs.getString('theme')),
    );

    return SharedPrefsSettingsProvider._(
      prefs,
      settings,
    );
  }

  @override
  Future<void> update(AppSettings settings) async {
    _settings = settings;
    await save(_settings);
  }

  @override
  Future<void> setDefaults() async {
    _settings = const AppSettings();
    await save(_settings);
  }

  @override
  Future<void> save(AppSettings settings) async {
    _settings = settings;
    await _prefs.setBool('sound', settings.sound);
    await _prefs.setBool('beep', settings.beep);
    await _prefs.setBool('voice', settings.voice);
    await _prefs.setBool('voiceName', settings.voiceName);
    await _prefs.setDouble('volume', settings.volume);
    await _prefs.setDouble('pitch', settings.pitch);
    await _prefs.setDouble('rate', settings.rate);
    await _prefs.setString('language', settings.language);
    await _prefs.setString('recentFile', settings.recentFile);
    await _prefs.setBool('wakelock', settings.wakelock);
    await _prefs.setBool('start_fab', settings.startFab);
    await _prefs.setDouble('start_fab_size', settings.startFabSize);
    await _prefs.setBool('finish_fab', settings.finishFab);
    await _prefs.setDouble('finish_fab_size', settings.finishFabSize);
    await _prefs.setBool('countdown', settings.countdown);
    await _prefs.setDouble('countdownSize', settings.countdownSize);
    await _prefs.setDouble('countdownLeft', settings.countdownLeft);
    await _prefs.setDouble('countdownTop', settings.countdownTop);
    await _prefs.setBool('countdownAtStartTime', settings.countdownAtStartTime);
    await _prefs.setBool('checkUpdates', settings.checkUpdates);
    await _prefs.setBool('hideMarked', settings.hideMarked);
    await _prefs.setBool('hideNumbers', settings.hideNumbers);
    await _prefs.setBool('hideManual', settings.hideManual);
    await _prefs.setBool('reconnect', settings.reconnect);
    await _prefs.setInt('finishDelay', settings.finishDelay);
    await _prefs.setBool('substituteNumbers', settings.substituteNumbers);
    await _prefs.setInt(
        'substituteNumbersDelay', settings.substituteNumbersDelay);
    await _prefs.setInt('log_limit', settings.logLimit);
    await _prefs.setString('theme', settings.appTheme.stringify);
  }
}
