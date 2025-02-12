// dart format width=200

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/audio/bloc/audio_bloc.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockWakelockPlus extends Mock implements WakelockPlus {}

class MockAudioBloc extends MockBloc<AudioEvent, AudioState> implements AudioBloc {}

void main() {
  late SettingsCubit settingsCubit;
  late AppSettings settings;
  late SharedPrefsSettingsProvider sharedPrefsSettingsProvider;
  late AudioBloc audioBloc;
  late String engine;
  late String voice;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: audioBloc, child: BlocProvider.value(value: settingsCubit, child: const SettingsScreen()))),
    );
  }

  setUpAll(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler('dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle', (obj) async => obj);
  });

  setUp(() {
    audioBloc = MockAudioBloc();
    when(() => audioBloc.state).thenReturn(const AudioState.initial());
  });

  group('Settings screen tests', () {
    setUp(() async {
      // включаем неактивные тайлы, иначе они недоступны для тестирования
      settings = const AppSettings.defaults().copyWith(showColorStartDifference: true, showColorFinishDifference: true, brightness: Brightness.dark, isOLEDBackground: true);
      SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
      sharedPrefsSettingsProvider = await SharedPrefsSettingsProvider.load();
      await sharedPrefsSettingsProvider.update(settings);
      settingsCubit = SettingsCubit(sharedPrefsSettingsProvider);
    });

    patrolWidgetTest('Check settings title', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(AppBar).$(Localization.current.I18nSettings_settings), findsOneWidget);
    });

    patrolWidgetTest('Check settings sections', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_general).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_countdown).scrollTo(), findsAtLeastNWidgets(1));
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_voiceMessages).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_startScreen).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_finishScreen).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_update).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_themes).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_journal).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).$(Localization.current.I18nSettings_defaults).scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check general section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_reconnect).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_ntpOffset).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_wakelock).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_sound).scrollTo(), findsOneWidget);
      // Disabled and didn't visible for tests
      // expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_language).scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check countdown section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_countdown).$(SettingsTile).$(Localization.current.I18nSettings_countdown).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_countdown).$(SettingsTile).$(Localization.current.I18nSettings_countdownFromApp).scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check voiceMessages section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_voice).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_voiceFromApp).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_participantsName).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_volume).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_pitch).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_rate).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_ttsEngine).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_ttsVoice).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).$(Localization.current.I18nSettings_voiceLanguage).scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check startScreen section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_startButton).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_startButtonSize).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_countdownAtStart).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_countdownAtStartSize).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_replaceStartCountdown).scrollTo(), findsOneWidget);
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_showColorStartDifference).scrollTo(),
        findsOneWidget,
      );
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_startFinishDifference).scrollTo(maxScrolls: 100),
        findsOneWidget,
      );
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_startDeltaInSeconds).scrollTo(maxScrolls: 100),
        findsOneWidget,
      );
    });

    patrolWidgetTest('Check finishScreen section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_delayForNewEvents).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_autoSubstitution).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_autoSubstitutionDelay).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_finishButton).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_finishButtonSize).scrollTo(), findsOneWidget);
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_showFinishDifference).scrollTo(), findsOneWidget);
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_showColorFinishDifference).scrollTo(),
        findsOneWidget,
      );
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_startFinishDifference).scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check update section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_update).$(SettingsTile).$(Localization.current.I18nSettings_checkUpdateAtStartup).scrollTo(), findsOneWidget);
    });

    patrolWidgetTest('Check themes section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(await $(SettingsSection).containing(Localization.current.I18nSettings_themes).$(SettingsTile).$(Localization.current.I18nSettings_brightness).scrollTo(maxScrolls: 100), findsOneWidget);
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_themes).$(SettingsTile).$(Localization.current.I18nSettings_oLEDBackground).scrollTo(maxScrolls: 100),
        findsOneWidget,
      );
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_themes).$(SettingsTile).$(Localization.current.I18nSettings_themeSettings).scrollTo(maxScrolls: 100),
        findsOneWidget,
      );
    });

    patrolWidgetTest('Check journal section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_journal).$(SettingsTile).$(Localization.current.I18nSettings_journalLinesNumber).scrollTo(maxScrolls: 100),
        findsOneWidget,
      );
    });

    patrolWidgetTest('Check defaults section', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect(
        await $(SettingsSection).containing(Localization.current.I18nSettings_defaults).$(SettingsTile).$(Localization.current.I18nSettings_resetToDefaults).scrollTo(maxScrolls: 100),
        findsOneWidget,
      );
    });

    group('TTS tests', () {
      setUp(() {
        engine = 'TTS Engine';
        voice = 'TTS Voice';
        when(() => audioBloc.state).thenReturn(AudioState.initialized(engine: engine, voice: voice));
      });

      patrolWidgetTest('Show TTS engine', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(engine).scrollTo(maxScrolls: 100), findsOneWidget);
      });

      patrolWidgetTest('Show TTS voice', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(voice).scrollTo(maxScrolls: 100), findsOneWidget);
      });
    });
  });
}
