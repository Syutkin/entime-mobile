// dart format width=200

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/audio/bloc/audio_bloc.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockWakelockPlus extends Mock implements WakelockPlus {}

class MockAudioBloc extends MockBloc<AudioEvent, AudioState> implements AudioBloc {}

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

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
    registerFallbackValue(const AppSettings.defaults());
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler('dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle', (obj) async => obj);
  });

  setUp(() async {
    settingsCubit = MockSettingsCubit();
    audioBloc = MockAudioBloc();

    // включаем неактивные тайлы, иначе они недоступны для тестирования
    settings = const AppSettings.defaults().copyWith(showColorStartDifference: true, showColorFinishDifference: true, brightness: Brightness.dark, isOLEDBackground: true);
    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
    sharedPrefsSettingsProvider = await SharedPrefsSettingsProvider.load();
    await sharedPrefsSettingsProvider.update(settings);

    when(() => settingsCubit.state).thenReturn(settings);
    when(() => audioBloc.state).thenReturn(const AudioState.initial());
    when(() => settingsCubit.setDefault()).thenAnswer((_) => Future.value());
  });

  group('Settings screen tests', () {
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

    group('General section tests', () {
      patrolWidgetTest('Check general section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_reconnect).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_wakelock).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_sound).scrollTo(), findsOneWidget);
        // Disabled and didn't visible for tests?
        // expect(await $(SettingsSection).containing(Localization.current.I18nSettings_general).$(SettingsTile).$(Localization.current.I18nSettings_language).scrollTo(), findsOneWidget);
      });
      patrolWidgetTest('Switch reconnect', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_reconnect)).tap();
        verify(() => settingsCubit.update(settings.copyWith(reconnect: !settings.reconnect))).called(1);
      });

      patrolWidgetTest('Switch wakelock', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_wakelock)).tap();
        verify(() => settingsCubit.update(settings.copyWith(wakelock: !settings.wakelock))).called(1);
      });

      patrolWidgetTest('Switch sound', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_sound)).tap();
        verify(() => settingsCubit.update(settings.copyWith(sound: !settings.sound))).called(1);
      });
    });

    group('Time control section tests', () {
      patrolWidgetTest('Check time control section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_timeControl).$(SettingsTile).$(Localization.current.I18nSettings_ntpOffset).scrollTo(), findsOneWidget);
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_timeControl).$(SettingsTile).$(Localization.current.I18nSettings_timeForAutomaticStamps).scrollTo(),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Switch updateNtpOffsetAtStartup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_ntpOffset)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(updateNtpOffsetAtStartup: !settings.updateNtpOffsetAtStartup))).called(1);
      });

      patrolWidgetTest('Switch useTimestampForAutomaticStamps', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_timeForAutomaticStamps)).tap();
        verify(() => settingsCubit.update(settings.copyWith(useTimestampForAutomaticStamps: !settings.useTimestampForAutomaticStamps))).called(1);
      });
    });

    group('Countdown section tests', () {
      patrolWidgetTest('Check countdown section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_countdown).$(SettingsTile).$(Localization.current.I18nSettings_countdown).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_countdown).$(SettingsTile).$(Localization.current.I18nSettings_countdownFromApp).scrollTo(), findsOneWidget);
      });

      patrolWidgetTest('Switch countdown', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_countdown).$(SettingsTile).containing($(Localization.current.I18nSettings_countdown)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(beep: !settings.beep))).called(1);
      });

      patrolWidgetTest('Switch countdownFromApp', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_countdown).$(SettingsTile).containing($(Localization.current.I18nSettings_countdownFromApp)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(beepFromApp: !settings.beepFromApp))).called(1);
      });
    });

    group('voiceMessages section tests', () {
      setUp(() {
        engine = 'TTS Engine';
        voice = 'TTS Voice';
        when(() => audioBloc.state).thenReturn(AudioState.initialized(engine: engine, voice: voice));
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

      patrolWidgetTest('Switch voice', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_voice)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(voice: !settings.voice))).called(1);
      });

      patrolWidgetTest('Switch voiceFromApp', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_voiceMessages).$(SettingsTile).containing($(Localization.current.I18nSettings_voiceFromApp)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(voiceFromApp: !settings.voiceFromApp))).called(1);
      });

      patrolWidgetTest('Switch participantsName', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_participantsName)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(voiceName: !settings.voiceName))).called(1);
      });

      patrolWidgetTest('Set volume when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_volume)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(volume: settings.volume))).called(1);
      });

      patrolWidgetTest('Do not set volume when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_volume)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Set pitch when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_pitch)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(pitch: settings.pitch))).called(1);
      });

      patrolWidgetTest('Do not set pitch when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_pitch)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Set rate when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_rate)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(rate: settings.rate))).called(1);
      });

      patrolWidgetTest('Do not set rate when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_rate)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
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

    group('startScreen section tests', () {
      patrolWidgetTest('Check startScreen section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_startButton).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_startButtonSize).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_countdownAtStart).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_countdownAtStartSize).scrollTo(), findsOneWidget);
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).$(Localization.current.I18nSettings_replaceStartCountdown).scrollTo(),
          findsOneWidget,
        );
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

      patrolWidgetTest('Switch startButton', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_startButton)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(startFab: !settings.startFab))).called(1);
      });

      patrolWidgetTest('Set startButtonSize when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_startButtonSize)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(startFabSize: settings.startFabSize))).called(1);
      });

      patrolWidgetTest('Do not set startButtonSize when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_startButtonSize)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Switch countdownAtStart', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_countdownAtStart)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(countdown: !settings.countdown))).called(1);
      });

      patrolWidgetTest('Set countdownAtStartSize when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_countdownAtStartSize)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(countdownSize: settings.countdownSize))).called(1);
      });

      patrolWidgetTest('Do not set countdownAtStartSize when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_countdownAtStartSize)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Switch replaceStartCountdown', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_replaceStartCountdown)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(countdownAtStartTime: !settings.countdownAtStartTime))).called(1);
      });

      patrolWidgetTest('Switch showColorStartDifference', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_showColorStartDifference)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(showColorStartDifference: !settings.showColorStartDifference))).called(1);
      });

      patrolWidgetTest('Set startDifferenceThreshold when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_startFinishDifference)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(startDifferenceThreshold: settings.startDifferenceThreshold))).called(1);
      });

      patrolWidgetTest('Do not set startDifferenceThreshold when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_startScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_startFinishDifference)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Set startDeltaInSeconds when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_startDeltaInSeconds)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(deltaInSeconds: settings.deltaInSeconds))).called(1);
      });

      patrolWidgetTest('Do not set startDeltaInSeconds when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_startDeltaInSeconds)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });
    });

    group('finishScreen section tests', () {
      patrolWidgetTest('Check finishScreen section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_delayForNewEvents).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_autoSubstitution).scrollTo(), findsOneWidget);
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_autoSubstitutionDelay).scrollTo(),
          findsOneWidget,
        );
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_finishButton).scrollTo(), findsOneWidget);
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_finishButtonSize).scrollTo(), findsOneWidget);
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_showFinishDifference).scrollTo(),
          findsOneWidget,
        );
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_showColorFinishDifference).scrollTo(),
          findsOneWidget,
        );
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).$(Localization.current.I18nSettings_startFinishDifference).scrollTo(),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Set delayForNewEvents when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_delayForNewEvents)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(finishDelay: settings.finishDelay))).called(1);
      });

      patrolWidgetTest('Do not set delayForNewEvents when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_delayForNewEvents)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Switch substituteNumbers', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_autoSubstitution)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(substituteNumbers: !settings.substituteNumbers))).called(1);
      });

      patrolWidgetTest('Set autoSubstitutionDelay when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_autoSubstitutionDelay)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(substituteNumbersDelay: settings.substituteNumbersDelay))).called(1);
      });

      patrolWidgetTest('Do not set autoSubstitutionDelay when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_autoSubstitutionDelay)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Switch finishFab', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(
          SettingsSection,
        ).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_finishButton)).scrollTo(maxScrolls: 50).tap();
        verify(() => settingsCubit.update(settings.copyWith(finishFab: !settings.finishFab))).called(1);
      });

      patrolWidgetTest('Set finishButtonSize when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_finishButtonSize)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(finishFabSize: settings.finishFabSize))).called(1);
      });

      patrolWidgetTest('Do not set finishButtonSize when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_finishButtonSize)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Switch showFinishDifference', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_showFinishDifference)).scrollTo().tap();
        verify(() => settingsCubit.update(settings.copyWith(showFinishDifference: !settings.showFinishDifference))).called(1);
      });

      patrolWidgetTest('Switch showColorFinishDifference', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(
          SettingsSection,
        ).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_showColorFinishDifference)).scrollTo(maxScrolls: 50).tap();
        verify(() => settingsCubit.update(settings.copyWith(showColorFinishDifference: !settings.showColorFinishDifference))).called(1);
      });

      patrolWidgetTest('Set finishDifferenceThreshold when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_startFinishDifference)).scrollTo().tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(finishDifferenceThreshold: settings.finishDifferenceThreshold))).called(1);
      });

      patrolWidgetTest('Do not set finishDifferenceThreshold when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_finishScreen).$(SettingsTile).containing($(Localization.current.I18nSettings_startFinishDifference)).scrollTo().tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });
    });

    group('Update section tests', () {
      patrolWidgetTest('Check update section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(await $(SettingsSection).containing(Localization.current.I18nSettings_update).$(SettingsTile).$(Localization.current.I18nSettings_checkUpdateAtStartup).scrollTo(), findsOneWidget);
      });

      patrolWidgetTest('Switch checkUpdates', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_checkUpdateAtStartup)).scrollTo(maxScrolls: 50).tap();
        verify(() => settingsCubit.update(settings.copyWith(checkUpdates: !settings.checkUpdates))).called(1);
      });
    });

    group('Themes section tests', () {
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

      patrolWidgetTest('Switch brightness', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_brightness)).scrollTo(maxScrolls: 50).tap();
        verify(() => settingsCubit.update(settings.copyWith(brightness: !(settings.brightness == Brightness.light) ? Brightness.light : Brightness.dark))).called(1);
      });

      patrolWidgetTest('Switch isOLEDBackground', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_oLEDBackground)).scrollTo(maxScrolls: 50).tap();
        verify(() => settingsCubit.update(settings.copyWith(isOLEDBackground: !settings.isOLEDBackground))).called(1);
      });

      // Error: Could not find the correct Provider<SettingsCubit> above this SelectThemeScreen Widget
      patrolWidgetTest('Open theme settings screen', skip: true, (PatrolTester $) async {
        settings = const AppSettings.defaults().copyWith(logLimit: -1);
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsSection).containing(Localization.current.I18nSettings_themes).$(SettingsTile).$(Localization.current.I18nSettings_themeSettings).scrollTo(maxScrolls: 100).tap();
        expect($(SelectThemeScreen), findsOneWidget);
      });
    });

    group('Journal section tests', () {
      patrolWidgetTest('Check journal section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_journal).$(SettingsTile).$(Localization.current.I18nSettings_journalLinesNumber).scrollTo(maxScrolls: 100),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Set logLimit when OK button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_journalLinesNumber)).scrollTo(maxScrolls: 100).tap();
        await $(#okButton).tap();
        verify(() => settingsCubit.update(settings.copyWith(logLimit: settings.logLimit))).called(1);
      });

      patrolWidgetTest('Do not set logLimit when cancel button pressed from popup', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_journalLinesNumber)).scrollTo(maxScrolls: 100).tap();
        await $(#cancelButton).tap();
        verifyNever(() => settingsCubit.update(any()));
      });

      patrolWidgetTest('Show icon when unlimited log lines', (PatrolTester $) async {
        settings = const AppSettings.defaults().copyWith(logLimit: -1);
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        final icon = (await $(SettingsTile).containing($(Localization.current.I18nSettings_journalLinesNumber)).$(Icon).scrollTo(maxScrolls: 100)).evaluate().single.widget as Icon;
        expect(icon.icon, MdiIcons.infinity);
      });
    });

    group('Defaults section tests', () {
      patrolWidgetTest('Check defaults section', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect(
          await $(SettingsSection).containing(Localization.current.I18nSettings_defaults).$(SettingsTile).$(Localization.current.I18nSettings_resetToDefaults).scrollTo(maxScrolls: 100),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Set defaults', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(SettingsTile).containing($(Localization.current.I18nSettings_resetToDefaults)).scrollTo(maxScrolls: 50).tap();
        verify(() => settingsCubit.setDefault()).called(1);
      });
    });
  });
}
