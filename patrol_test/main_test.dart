import 'package:audioplayers/audioplayers.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:entime/main.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/file_picker_provider.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:entime/src/feature/countdown/logic/countdown_at_start.dart';
import 'package:entime/src/feature/csv/logic/startlist_provider.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/home/home.dart';
import 'package:entime/src/feature/home/model/home_menu_button.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:entime/src/feature/settings/logic/shared_prefs_settings_provider.dart';
import 'package:entime/src/feature/tab/widget/race_tile.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('creates start and finish protocols through main flow', ($) async {
    Bloc.observer = AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential<dynamic>();

    final database = AppDatabase();

    final settings = await SharedPrefsSettingsProvider.load();
    final appInfo = await AppInfoProvider.load();
    await settings.update(
      settings.settings.copyWith(
        raceId: -1,
        stageId: -1,
        checkUpdates: false,
        previousVersion: appInfo.version,
        countdownAtStartTime: false,
        showNumbers: true,
        showManual: true,
        startFab: true,
        finishFab: true,
      ),
    );
    final updateController = await UpdateController.init(
      client: http.Client(),
      appInfoProvider: appInfo,
      settingsProvider: settings,
    );
    final bluetoothBackgroundConnection = BluetoothBackgroundConnection();
    final bluetoothProvider = BluetoothProvider(
      appInfo: appInfo,
      bluetoothBackgroundConnection: bluetoothBackgroundConnection,
    );

    final flutterTts = FlutterTts();
    final pool = await AudioPool.createFromAsset(path: 'beeps.mp3', maxPlayers: 2);
    final ttsProvider = TtsProvider(flutterTts);
    final beepProvider = AudioPoolProvider(pool);

    final audioProvider = AudioProvider(ttsProvider: ttsProvider, beepProvider: beepProvider);
    final audioService = AudioService(settings: settings, audio: audioProvider);
    final audioController = AudioController(audioService: audioService, database: database, settingsProvider: settings);

    final countdown = CountdownAtStart(database: database, settingsProvider: settings);

    final ntpProvider = NtpProvider();

    final connectivity = Connectivity();
    final IConnectivityProvider connectivityProvider = ConnectivityProvider.init(connectivity);
    final filePicker = FilePickerProvider();
    final startlistProvider = StartlistProvider(filepicker: filePicker);

    await $.pumpWidgetAndSettle(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<IFilePickerProvider>(
            create: (context) => filePicker,
          ),
          RepositoryProvider<StartlistProvider>(
            create: (context) => startlistProvider,
          ),
        ],
        child: EntimeApp(
          settingsProvider: settings,
          updateController: updateController,
          bluetoothProvider: bluetoothProvider,
          ttsProvider: ttsProvider,
          audioController: audioController,
          appInfo: appInfo,
          database: database,
          countdown: countdown,
          ntpProvider: ntpProvider,
          connectivityProvider: connectivityProvider,
        ),
      ),
    );

    await $(HomeScreen).waitUntilVisible();

    final runId = DateTime.now().microsecondsSinceEpoch;
    final raceName = 'Patrol race $runId';
    final stageName = 'Patrol stage $runId';
    final number = 1000 + runId % 9000;

    await _createAndSelectRaceAndStage($, raceName: raceName, stageName: stageName);
    await _createStart($, number: number);
    await _createFinish($, number: number);
  });
}

Future<void> _createAndSelectRaceAndStage(
  PatrolIntegrationTester $, {
  required String raceName,
  required String stageName,
}) async {
  await $(RaceTile).tap();
  await $(RacesListPage).waitUntilVisible();

  await $(RacesListPage).$(FloatingActionButton).tap();
  await $(TextFormField).at(0).enterText(raceName);
  await $(#okButton).tap();
  await $.pumpAndSettle();

  await $(raceName).waitUntilVisible();
  await $(raceName).tap();
  await $(StagesListPage).waitUntilVisible();

  await $(StagesListPage).$(FloatingActionButton).tap();
  await $(TextFormField).at(0).enterText(stageName);
  await $(#okButton).tap();
  await $.pumpAndSettle();

  await $(stageName).waitUntilVisible();
  await $(stageName).tap();
  await $(HomeScreen).waitUntilVisible();

  expect($(RaceTile).$(raceName), findsOneWidget);
  expect($(RaceTile).$(stageName), findsOneWidget);
}

Future<void> _createStart(PatrolIntegrationTester $, {required int number}) async {
  await $(#StartTab).tap();
  await $(StartListPage).waitUntilVisible();

  await $(PopupMenuButton<HomeMenuButton>).tap();
  await $(Localization.current.I18nHome_addRacer).tap();
  await $(Localization.current.I18nStart_addParticipant).waitUntilVisible();
  await $(TextFormField).enterText(number.toString());
  await $(#okButton).tap();
  await $.pumpAndSettle();

  expect(await $(StartItemTile).containing(number.toString()).waitUntilVisible(), findsOneWidget);
}

Future<void> _createFinish(PatrolIntegrationTester $, {required int number}) async {
  await $(#FinishTab).tap();
  await $(FinishListPage).waitUntilVisible();

  await $(FinishListPage).$(FloatingActionButton).tap();
  await $.pumpAndSettle();

  await $(FinishItemTile).tap();
  await $(Localization.current.I18nProtocol_enterFinishNumber).waitUntilVisible();
  await $(TextFormField).enterText(number.toString());
  await $(#okButton).tap();
  await $.pumpAndSettle();

  expect(await $(FinishItemTile).containing(number.toString()).waitUntilVisible(), findsOneWidget);
}
