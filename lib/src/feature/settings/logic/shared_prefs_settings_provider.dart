import 'package:shared_preferences/shared_preferences.dart';

import '../settings.dart';

class SharedPrefsSettingsProvider extends SettingsProvider {
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
      sound: prefs.getBool('sound') ?? const AppSettings.defaults().sound,
      beep: prefs.getBool('beep') ?? const AppSettings.defaults().beep,
      voice: prefs.getBool('voice') ?? const AppSettings.defaults().voice,
      voiceName:
          prefs.getBool('voiceName') ?? const AppSettings.defaults().voiceName,
      volume: prefs.getDouble('volume') ?? const AppSettings.defaults().volume,
      pitch: prefs.getDouble('pitch') ?? const AppSettings.defaults().pitch,
      rate: prefs.getDouble('rate') ?? const AppSettings.defaults().rate,
      language:
          prefs.getString('language') ?? const AppSettings.defaults().language,
      recentFile: prefs.getString('recentFile') ??
          const AppSettings.defaults().recentFile,
      wakelock:
          prefs.getBool('wakelock') ?? const AppSettings.defaults().wakelock,
      startFab:
          prefs.getBool('startFab') ?? const AppSettings.defaults().startFab,
      startFabSize: prefs.getDouble('startFabSize') ??
          const AppSettings.defaults().startFabSize,
      finishFab:
          prefs.getBool('finishFab') ?? const AppSettings.defaults().finishFab,
      finishFabSize: prefs.getDouble('finishFabSize') ??
          const AppSettings.defaults().finishFabSize,
      countdown:
          prefs.getBool('countdown') ?? const AppSettings.defaults().countdown,
      countdownSize: prefs.getDouble('countdownSize') ??
          const AppSettings.defaults().countdownSize,
      countdownLeft: prefs.getDouble('countdownLeft') ??
          const AppSettings.defaults().countdownLeft,
      countdownTop: prefs.getDouble('countdownTop') ??
          const AppSettings.defaults().countdownTop,
      countdownAtStartTime: prefs.getBool('countdownAtStartTime') ??
          const AppSettings.defaults().countdownAtStartTime,
      checkUpdates: prefs.getBool('checkUpdates') ??
          const AppSettings.defaults().checkUpdates,
      hideMarked: prefs.getBool('hideMarked') ??
          const AppSettings.defaults().hideMarked,
      hideNumbers: prefs.getBool('hideNumbers') ??
          const AppSettings.defaults().hideNumbers,
      hideManual: prefs.getBool('hideManual') ??
          const AppSettings.defaults().hideManual,
      reconnect:
          prefs.getBool('reconnect') ?? const AppSettings.defaults().reconnect,
      finishDelay: prefs.getInt('finishDelay') ??
          const AppSettings.defaults().finishDelay,
      substituteNumbers: prefs.getBool('substituteNumbers') ??
          const AppSettings.defaults().substituteNumbers,
      substituteNumbersDelay: prefs.getInt('substituteNumbersDelay') ??
          const AppSettings.defaults().substituteNumbersDelay,
      logLimit:
          prefs.getInt('logLimit') ?? const AppSettings.defaults().logLimit,
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
    _settings = const AppSettings.defaults();
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
      'substituteNumbersDelay',
      settings.substituteNumbersDelay,
    );
    await _prefs.setInt('log_limit', settings.logLimit);
    await _prefs.setString('theme', settings.appTheme.stringify);
  }
}
