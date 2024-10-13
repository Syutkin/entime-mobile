import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../settings.dart';

class SharedPrefsSettingsProvider extends SettingsProvider {
  final SharedPreferences _prefs;
  AppSettings _settings;

  @override
  AppSettings get settings => _settings;

  @override
  BehaviorSubject<AppSettings> get state => _appSettingsController;
  final _appSettingsController = BehaviorSubject<AppSettings>();

  SharedPrefsSettingsProvider._(SharedPreferences prefs, AppSettings settings)
      : _prefs = prefs,
        _settings = settings;

  static Future<SharedPrefsSettingsProvider> load() async {
    const defaults = AppSettings.defaults();
    final prefs = await SharedPreferences.getInstance();
    final settings = AppSettings(
      language: prefs.getString('language') ?? defaults.language,
      sound: prefs.getBool('sound') ?? defaults.sound,
      beep: prefs.getBool('beep') ?? defaults.beep,
      voice: prefs.getBool('voice') ?? defaults.voice,
      voiceName: prefs.getBool('voiceName') ?? defaults.voiceName,
      volume: prefs.getDouble('volume') ?? defaults.volume,
      pitch: prefs.getDouble('pitch') ?? defaults.pitch,
      rate: prefs.getDouble('rate') ?? defaults.rate,
      voiceLanguage: prefs.getString('voiceLanguage') ?? defaults.voiceLanguage,
      raceId: prefs.getInt('raceId') ?? -1,
      stageId: prefs.getInt('stageId') ?? -1,
      wakelock: prefs.getBool('wakelock') ?? defaults.wakelock,
      startFab: prefs.getBool('startFab') ?? defaults.startFab,
      startFabSize: prefs.getDouble('startFabSize') ?? defaults.startFabSize,
      finishFab: prefs.getBool('finishFab') ?? defaults.finishFab,
      finishFabSize: prefs.getDouble('finishFabSize') ?? defaults.finishFabSize,
      countdown: prefs.getBool('countdown') ?? defaults.countdown,
      countdownSize: prefs.getDouble('countdownSize') ?? defaults.countdownSize,
      countdownLeft: prefs.getDouble('countdownLeft') ?? defaults.countdownLeft,
      countdownTop: prefs.getDouble('countdownTop') ?? defaults.countdownTop,
      countdownAtStartTime: prefs.getBool('countdownAtStartTime') ??
          defaults.countdownAtStartTime,
      checkUpdates: prefs.getBool('checkUpdates') ?? defaults.checkUpdates,
      hideMarked: prefs.getBool('hideMarked') ?? defaults.hideMarked,
      hideNumbers: prefs.getBool('hideNumbers') ?? defaults.hideNumbers,
      hideManual: prefs.getBool('hideManual') ?? defaults.hideManual,
      reconnect: prefs.getBool('reconnect') ?? defaults.reconnect,
      finishDelay: prefs.getInt('finishDelay') ?? defaults.finishDelay,
      substituteNumbers:
          prefs.getBool('substituteNumbers') ?? defaults.substituteNumbers,
      substituteNumbersDelay: prefs.getInt('substituteNumbersDelay') ??
          defaults.substituteNumbersDelay,
      deltaInSeconds: prefs.getInt('deltaInSeconds') ?? defaults.deltaInSeconds,
      updateStartCorrectionDelay: prefs.getInt('updateStartCorrectionDelay') ??
          defaults.updateStartCorrectionDelay,
      logLimit: prefs.getInt('logLimit') ?? defaults.logLimit,
      seedColor: ColorSeed.values
          .byName(prefs.getString('seedColor') ?? defaults.seedColor.name),
      brightness: Brightness.values
          .byName(prefs.getString('brightness') ?? defaults.brightness.name),
      contrastLevel: prefs.getDouble('contrastLevel') ?? defaults.contrastLevel,
      dynamicSchemeVariant: DynamicSchemeVariant.values.byName(
          prefs.getString('dynamicSchemeVariant') ??
              defaults.dynamicSchemeVariant.name),
      previousVersion:
          prefs.getString('previousVersion') ?? defaults.previousVersion,
    );

    await WakelockPlus.toggle(enable: settings.wakelock);

    return SharedPrefsSettingsProvider._(
      prefs,
      settings,
    ).._appSettingsController.add(settings); //add initial value to stream
  }

  @override
  Future<void> update(AppSettings settings) async {
    await _save(settings);
  }

  @override
  AppSettings getDefaults() => const AppSettings.defaults();

  @override
  Future<void> setDefaults() async {
    await _save(const AppSettings.defaults());
  }

  Future<void> _save(AppSettings settings) async {
    if (settings.wakelock != _settings.wakelock) {
      await WakelockPlus.toggle(enable: settings.wakelock);
    }
    await _prefs.setString('language', settings.language);
    await _prefs.setBool('sound', settings.sound);
    await _prefs.setBool('beep', settings.beep);
    await _prefs.setBool('voice', settings.voice);
    await _prefs.setBool('voiceName', settings.voiceName);
    await _prefs.setDouble('volume', settings.volume);
    await _prefs.setDouble('pitch', settings.pitch);
    await _prefs.setDouble('rate', settings.rate);
    await _prefs.setString('voiceLanguage', settings.voiceLanguage);
    await _prefs.setInt('raceId', settings.raceId);
    await _prefs.setInt('stageId', settings.stageId);
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
    await _prefs.setInt('deltaInSeconds', settings.deltaInSeconds);
    await _prefs.setInt(
        'updateStartCorrectionDelay', settings.updateStartCorrectionDelay);
    await _prefs.setInt('log_limit', settings.logLimit);
    await _prefs.setString('seedColor', settings.seedColor.name);
    await _prefs.setString('brightness', settings.brightness.name);
    await _prefs.setDouble('contrastLevel', settings.contrastLevel);
    await _prefs.setString(
        'dynamicSchemeVariant', settings.dynamicSchemeVariant.name);
    await _prefs.setString('previousVersion', settings.previousVersion);

    _settings = settings;
    _appSettingsController.add(_settings);
  }

  Future<void> dispose() async {
    await _appSettingsController.close();
  }
}
