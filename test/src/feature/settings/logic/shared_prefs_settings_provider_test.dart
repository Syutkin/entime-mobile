import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );
  });

  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  group('SharedPrefsSettingsProvider', () {
    test('persists all settings across load update load', () async {
      final initialProvider = await SharedPrefsSettingsProvider.load();
      final dynamicSchemeVariant = DynamicSchemeVariant.values.firstWhere(
        (variant) => variant != DynamicSchemeVariant.vibrant,
      );
      final expectedSettings = initialProvider.settings.copyWith(
        language: 'en',
        reconnect: false,
        sound: false,
        beep: false,
        beepFromApp: true,
        voice: false,
        voiceFromApp: true,
        voiceName: false,
        volume: 0.25,
        pitch: 0.5,
        rate: 0.75,
        voiceLanguage: 'en-US',
        raceId: 11,
        stageId: 22,
        wakelock: false,
        startFab: false,
        startFabSize: 123,
        finishFab: false,
        finishFabSize: 87,
        countdown: true,
        countdownSize: 64,
        countdownLeft: 12,
        countdownTop: 34,
        countdownAtStartTime: false,
        checkUpdates: false,
        showDNS: true,
        showDNF: true,
        showDSQ: true,
        showHidden: true,
        showNumbers: false,
        showManual: false,
        finishDelay: 777,
        substituteNumbers: true,
        substituteNumbersDelay: 888,
        showStartDifference: true,
        showColorStartDifference: true,
        startDifferenceThreshold: 3210,
        showFinishDifference: true,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 4321,
        deltaInSeconds: 17,
        updateStartCorrectionDelay: 6543,
        logLimit: 42,
        seedColor: ColorSeed.orange,
        brightness: Brightness.dark,
        contrastLevel: 0.5,
        dynamicSchemeVariant: dynamicSchemeVariant,
        isOLEDBackground: true,
        previousVersion: '9.8.7',
        updateNtpOffsetAtStartup: true,
        useTimestampForAutomaticStamps: true,
      );
      final expectedValues = _settingsValues(expectedSettings);
      final defaultValues = _settingsValues(const AppSettings.defaults());
      final unchangedDefaults = expectedValues.entries
          .where((entry) => defaultValues[entry.key] == entry.value)
          .map((entry) => '${entry.key}: still ${entry.value}')
          .toList();

      expect(
        unchangedDefaults,
        isEmpty,
        reason: 'Every setting in this roundtrip test must use a non-default value.',
      );

      await initialProvider.update(expectedSettings);
      await initialProvider.dispose();

      final reloadedProvider = await SharedPrefsSettingsProvider.load();
      addTearDown(reloadedProvider.dispose);

      final actualSettings = reloadedProvider.settings;
      final actualValues = _settingsValues(actualSettings);
      final mismatches = expectedValues.entries
          .where((entry) => actualValues[entry.key] != entry.value)
          .map((entry) => '${entry.key}: expected ${entry.value}, got ${actualValues[entry.key]}')
          .toList();

      expect(
        mismatches,
        isEmpty,
        reason: 'These settings should survive a load -> update -> load roundtrip.',
      );
    });
  });
}

Map<String, Object?> _settingsValues(AppSettings settings) {
  return <String, Object?>{
    'language': settings.language,
    'reconnect': settings.reconnect,
    'sound': settings.sound,
    'beep': settings.beep,
    'beepFromApp': settings.beepFromApp,
    'voice': settings.voice,
    'voiceFromApp': settings.voiceFromApp,
    'voiceName': settings.voiceName,
    'volume': settings.volume,
    'pitch': settings.pitch,
    'rate': settings.rate,
    'voiceLanguage': settings.voiceLanguage,
    'raceId': settings.raceId,
    'stageId': settings.stageId,
    'wakelock': settings.wakelock,
    'startFab': settings.startFab,
    'startFabSize': settings.startFabSize,
    'finishFab': settings.finishFab,
    'finishFabSize': settings.finishFabSize,
    'countdown': settings.countdown,
    'countdownSize': settings.countdownSize,
    'countdownLeft': settings.countdownLeft,
    'countdownTop': settings.countdownTop,
    'countdownAtStartTime': settings.countdownAtStartTime,
    'checkUpdates': settings.checkUpdates,
    'showDNS': settings.showDNS,
    'showDNF': settings.showDNF,
    'showDSQ': settings.showDSQ,
    'showHidden': settings.showHidden,
    'showNumbers': settings.showNumbers,
    'showManual': settings.showManual,
    'finishDelay': settings.finishDelay,
    'substituteNumbers': settings.substituteNumbers,
    'substituteNumbersDelay': settings.substituteNumbersDelay,
    'showStartDifference': settings.showStartDifference,
    'showColorStartDifference': settings.showColorStartDifference,
    'startDifferenceThreshold': settings.startDifferenceThreshold,
    'showFinishDifference': settings.showFinishDifference,
    'showColorFinishDifference': settings.showColorFinishDifference,
    'finishDifferenceThreshold': settings.finishDifferenceThreshold,
    'deltaInSeconds': settings.deltaInSeconds,
    'updateStartCorrectionDelay': settings.updateStartCorrectionDelay,
    'logLimit': settings.logLimit,
    'seedColor': settings.seedColor,
    'brightness': settings.brightness,
    'contrastLevel': settings.contrastLevel,
    'dynamicSchemeVariant': settings.dynamicSchemeVariant,
    'isOLEDBackground': settings.isOLEDBackground,
    'previousVersion': settings.previousVersion,
    'updateNtpOffsetAtStartup': settings.updateNtpOffsetAtStartup,
    'useTimestampForAutomaticStamps': settings.useTimestampForAutomaticStamps,
  };
}
