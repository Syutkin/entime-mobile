import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bot_toast/bot_toast.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/common/localization/localization.dart';
import 'src/feature/app_info/app_info.dart';
import 'src/feature/audio/audio.dart';
import 'src/feature/bluetooth/bluetooth.dart';
import 'src/feature/countdown/bloc/countdown_bloc.dart';
import 'src/feature/countdown/logic/countdown.dart';
import 'src/feature/database/bloc/database_bloc.dart';
import 'src/feature/database/drift/app_database.dart';
import 'src/feature/home/widget/home_screen.dart';
import 'src/feature/log/bloc/log_bloc.dart';
import 'src/feature/log/logic/log_provider.dart';
import 'src/feature/module_settings/bloc/module_settings_bloc.dart';
import 'src/feature/protocol/bloc/protocol_bloc.dart';
import 'src/feature/protocol/logic/protocol_provider.dart';
import 'src/feature/settings/settings.dart';
import 'src/feature/tab/bloc/tab_bloc.dart';
import 'src/feature/update/update.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await BlocOverrides.runZoned(
  //   () async {
  //     await runMain();
  //   },
  //   blocObserver: AppBlocObserver(),
  //   eventTransformer: bloc_concurrency.sequential(),
  // );
  Bloc.observer = AppBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential<dynamic>();

  final Directory documentsDirectory = await getApplicationDocumentsDirectory();
  final String logPath = join(documentsDirectory.path, 'log.sqlite');

  final protocolProvider = ProtocolProvider();

  final logProvider = LogProvider();
  await logProvider.openDb(logPath);

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
    protocolProvider: protocolProvider,
    settingsProvider: settings,
  );

  final AppDatabase database = AppDatabase();

  final CountdownAtStart countdown = CountdownAtStart(database: database);

  await SentryFlutter.init(
    (options) async {
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(
      EntimeApp(
        settings: settings,
        updateProvider: updateProvider,
        bluetoothProvider: bluetoothProvider,
        protocolProvider: protocolProvider,
        logProvider: logProvider,
        audioController: audioController,
        appInfo: appInfo,
        database: database,
        countdown: countdown,
      ),
    ),
  );
}

class EntimeApp extends StatelessWidget {
  final SettingsProvider settings;
  final AppInfoProvider appInfo;
  final UpdateProvider updateProvider;
  final IBluetoothProvider bluetoothProvider;
  final IAudioController audioController;
  final IProtocolProvider protocolProvider;
  final ILogProvider logProvider;
  final AppDatabase database;
  final CountdownAtStart countdown;

  const EntimeApp({
    Key? key,
    required this.settings,
    required this.updateProvider,
    required this.bluetoothProvider,
    required this.audioController,
    required this.appInfo,
    required this.protocolProvider,
    required this.logProvider,
    required this.database,
    required this.countdown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<TabBloc>(
            create: (context) => TabBloc(),
          ),
          BlocProvider<SettingsBloc>(
            create: (context) => SettingsBloc(settings),
          ),
          BlocProvider<ModuleSettingsBloc>(
            create: (context) => ModuleSettingsBloc(),
          ),
          BlocProvider<LogBloc>(
            create: (context) => LogBloc(
              settingsProvider: settings,
              logProvider: logProvider,
            ),
          ),
          BlocProvider<ProtocolBloc>(
            create: (context) => ProtocolBloc(
              settingsProvider: settings,
              protocolProvider: protocolProvider,
            )..add(SelectProtocol(file: settings.settings.recentFile)),
          ),
          BlocProvider<DatabaseBloc>(
            create: (context) => DatabaseBloc(database: database)
              ..add(const DatabaseEvent.initialize()),
          ),
          BlocProvider<CountdownBloc>(
            create: (context) => CountdownBloc(
              // protocolBloc: BlocProvider.of<ProtocolBloc>(context),
              // database: database,
              // tabBloc: BlocProvider.of<TabBloc>(context),
              countdown: countdown,
            ),
          ),
          BlocProvider<BluetoothBloc>(
            create: (context) => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              protocolProvider: protocolProvider,
              logProvider: logProvider,
              settingsProvider: settings,
            )..add(const BluetoothEvent.initialize()),
          ),
          BlocProvider<UpdateBloc>(
            create: (context) => UpdateBloc(updateProvider: updateProvider)
              ..add(const PopupChangelog())
              ..add(const CheckUpdate()),
          ),
          BlocProvider<AppInfoCubit>(
            create: (context) => AppInfoCubit(appInfo: appInfo),
          ),
        ],
        child: const EntimeAppView(),
      );
}

class EntimeAppView extends StatelessWidget {
  const EntimeAppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => MaterialApp(
          theme: appThemeData[state.settings.appTheme],
          title: 'Entime',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            Localization.delegate,
          ],
          supportedLocales: Localization.supportedLocales,
          //1. call BotToastInit
          builder: BotToastInit(),
          //2. registered route observer
          navigatorObservers: [BotToastNavigatorObserver()],
          home: const HomeScreen(),
        ),
      );
}
