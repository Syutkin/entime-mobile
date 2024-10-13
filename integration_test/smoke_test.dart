import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/main.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/logic/audio_controller.dart';
import 'package:entime/src/feature/audio/logic/audio_service.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/countdown/logic/countdown.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential<dynamic>();

  final AppDatabase database = AppDatabase();

  final androidInfo = await DeviceInfoPlugin().androidInfo;
  final settings = await SharedPrefsSettingsProvider.load();
  final appInfo = await AppInfoProvider.load(
    deviceInfo: androidInfo,
  );
  final UpdateProvider updateProvider = await UpdateProvider.init(
    client: http.Client(),
    appInfoProvider: appInfo,
    settingsProvider: settings,
  );
  final FlutterBluetoothSerial flutterBluetoothSerial =
      FlutterBluetoothSerial.instance;
  final IBluetoothBackgroundConnection bluetoothBackgroundConnection =
      BluetoothBackgroundConnection();
  final IBluetoothProvider bluetoothProvider = BluetoothProvider(
    flutterBluetoothSerial: flutterBluetoothSerial,
    bluetoothBackgroundConnection: bluetoothBackgroundConnection,
  );

  final IAudioService audioService = AudioService(settings: settings);
  final IAudioController audioController = AudioController(
    audioService: audioService,
    // protocolProvider: protocolProvider,
    database: database,
    settingsProvider: settings,
  );

  final CountdownAtStart countdown = CountdownAtStart(database: database);

  testWidgets('Smoke test', (tester) async {
    await tester.pumpWidget(
      EntimeApp(
        settingsProvider: settings,
        updateProvider: updateProvider,
        bluetoothProvider: bluetoothProvider,
        audioController: audioController,
        appInfo: appInfo,
        database: database,
        countdown: countdown,
      ),
    ); // Create main app
    await tester.pumpAndSettle(); // Finish animations and scheduled microtasks
    await tester.pump(const Duration(seconds: 2)); // Render another frame in 2s
  });
}
