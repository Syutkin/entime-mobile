import 'package:audioplayers/audioplayers.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:entime/main.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/common/utils/file_picker_provider.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:entime/src/feature/countdown/logic/countdown_at_start.dart';
import 'package:entime/src/feature/csv/logic/startlist_provider.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/home/home.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:entime/src/feature/settings/logic/shared_prefs_settings_provider.dart';
import 'package:entime/src/feature/update/logic/update_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('main flow', ($) async {
    Bloc.observer = AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential<dynamic>();

    final database = AppDatabase();

    final settings = await SharedPrefsSettingsProvider.load();
    final appInfo = await AppInfoProvider.load();
    final updateProvider = await UpdateProvider.init(
      client: http.Client(),
      appInfoProvider: appInfo,
      settingsProvider: settings,
    );
    final bluetoothBackgroundConnection = BluetoothBackgroundConnection();
    final bluetoothProvider = BluetoothProvider(
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
          updateProvider: updateProvider,
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

    expect($(HomeScreen), findsOneWidget);
  });
}
