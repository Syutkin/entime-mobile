import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bot_toast/bot_toast.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/constants/pubspec.yaml.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:http/http.dart' as http;
import 'package:sentry_flutter/sentry_flutter.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/common/localization/localization.dart';
import 'src/common/logger/logger.dart';
import 'src/feature/app_info/app_info.dart';
import 'src/feature/audio/audio.dart';
import 'src/feature/bluetooth/bluetooth.dart';
import 'src/feature/countdown/bloc/countdown_bloc.dart';
import 'src/feature/countdown/logic/countdown.dart';
import 'src/feature/database/bloc/database_bloc.dart';
import 'src/feature/database/drift/app_database.dart';
import 'src/feature/home/widget/home_screen.dart';
import 'src/feature/log/bloc/log_bloc.dart';
import 'src/feature/module_settings/bloc/module_settings_bloc.dart';
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
    database: database,
    // protocolProvider: protocolProvider,
    settingsProvider: settings,
  );

  final CountdownAtStart countdown = CountdownAtStart(database: database);

  final app = EntimeApp(
    settings: settings,
    updateProvider: updateProvider,
    bluetoothProvider: bluetoothProvider,
    audioController: audioController,
    appInfo: appInfo,
    database: database,
    countdown: countdown,
  );

  if (kReleaseMode) {
    try {
      await SentryFlutter.init(
        (options) async {
          options.tracesSampleRate = 1.0;
        },
        appRunner: () => runApp(app),
      );
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      logger.e('SentryFlutter error: $e');
      runApp(app);
    }
  } else {
    runApp(app);
  }
}

class EntimeApp extends StatelessWidget {
  final SettingsProvider settings;
  final AppInfoProvider appInfo;
  final UpdateProvider updateProvider;
  final IBluetoothProvider bluetoothProvider;
  final IAudioController audioController;

  // final ILogProvider logProvider;
  final AppDatabase database;
  final CountdownAtStart countdown;

  const EntimeApp({
    super.key,
    required this.settings,
    required this.updateProvider,
    required this.bluetoothProvider,
    required this.audioController,
    required this.appInfo,
    required this.database,
    required this.countdown,
  });

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
              database: database,
            ),
          ),
          BlocProvider<DatabaseBloc>(
            create: (context) => DatabaseBloc(
              database: database,
              settingsProvider: settings,
            )..add(const DatabaseEvent.initialize()),
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
              // protocolProvider: protocolProvider,
              // logProvider: logProvider,
              settingsProvider: settings,
              database: database,
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
    super.key,
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (previousState, state) =>
            previousState.settings.appTheme != state.settings.appTheme,
        builder: (context, state) => MaterialApp(
          theme: appThemeData[state.settings.appTheme],
          title: Pubspec.name,
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
