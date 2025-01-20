import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bot_toast/bot_toast.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/constants/pubspec.yaml.g.dart';
import 'package:entime/src/feature/connectivity/bloc/connectivity_bloc.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;
import 'package:sentry_flutter/sentry_flutter.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/common/localization/localization.dart';
import 'src/common/logger/logger.dart';
import 'src/feature/app_info/app_info.dart';
import 'src/feature/audio/audio.dart';
import 'src/feature/bluetooth/bluetooth.dart';
import 'src/feature/countdown/bloc/countdown_bloc.dart';
import 'src/feature/countdown/logic/countdown_at_start.dart';
import 'src/feature/database/bloc/database_bloc.dart';
import 'src/feature/database/drift/app_database.dart';
import 'src/feature/home/widget/home_screen.dart';
import 'src/feature/log/bloc/log_bloc.dart';
import 'src/feature/module_settings/bloc/module_settings_bloc.dart';
import 'src/feature/settings/settings.dart';
import 'src/feature/tab/bloc/tab_cubit.dart';
import 'src/feature/update/update.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential<dynamic>();

  final database = AppDatabase();

  final androidInfo = await DeviceInfoPlugin().androidInfo;
  final settings = await SharedPrefsSettingsProvider.load();
  final appInfo = await AppInfoProvider.load(deviceInfo: androidInfo);
  final updateProvider = await UpdateProvider.init(
    client: http.Client(),
    appInfoProvider: appInfo,
    settingsProvider: settings,
  );
  final flutterBluetoothSerial = FlutterBluetoothSerial.instance;
  final bluetoothBackgroundConnection = BluetoothBackgroundConnection();
  final bluetoothProvider = BluetoothProvider(
    flutterBluetoothSerial: flutterBluetoothSerial,
    bluetoothBackgroundConnection: bluetoothBackgroundConnection,
  );

  final flutterTts = FlutterTts();
  final pool =
      await AudioPool.createFromAsset(path: 'beeps.mp3', maxPlayers: 2);
  final ttsProvider = TtsProvider(flutterTts);
  final beepProvider = AudioPoolProvider(pool);

  final audioProvider =
      AudioProvider(ttsProvider: ttsProvider, beepProvider: beepProvider);
  final audioService = AudioService(settings: settings, audio: audioProvider);
  final audioController = AudioController(
    audioService: audioService,
    database: database,
    settingsProvider: settings,
  );

  final countdown = CountdownAtStart(database: database);

  final ntpProvider = NtpProvider();

  final connectivity = Connectivity();
  final connectivityProvider = ConnectivityProvider.init(connectivity);

  final app = EntimeApp(
    settingsProvider: settings,
    updateProvider: updateProvider,
    bluetoothProvider: bluetoothProvider,
    audioController: audioController,
    appInfo: appInfo,
    database: database,
    countdown: countdown,
    ntpProvider: ntpProvider,
    connectivityProvider: connectivityProvider,
  );

  if (kReleaseMode) {
    try {
      await SentryFlutter.init(
        (options) async {
          options.tracesSampleRate = 1.0;
        },
        appRunner: () => runApp(app),
      );
    } catch (e) {
      logger.e('SentryFlutter error', error: e);
      runApp(app);
    }
  } else {
    runApp(app);
  }
}

class EntimeApp extends StatelessWidget {
  const EntimeApp({
    required this.settingsProvider,
    required this.updateProvider,
    required this.bluetoothProvider,
    required this.audioController,
    required this.appInfo,
    required this.database,
    required this.countdown,
    required this.ntpProvider,
    required this.connectivityProvider,
    super.key,
  });

  final SettingsProvider settingsProvider;
  final AppInfoProvider appInfo;
  final IUpdateProvider updateProvider;
  final IBluetoothProvider bluetoothProvider;
  final IAudioController audioController;

  // final ILogProvider logProvider;
  final AppDatabase database;
  final CountdownAtStart countdown;
  final INtpProvider ntpProvider;
  final IConnectivityProvider connectivityProvider;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<TabCubit>(create: (context) => TabCubit()),
          BlocProvider<SettingsCubit>(
            create: (context) => SettingsCubit(settingsProvider),
          ),
          BlocProvider<ModuleSettingsBloc>(
            create: (context) => ModuleSettingsBloc(),
          ),
          BlocProvider<LogBloc>(
            create: (context) =>
                LogBloc(settingsProvider: settingsProvider, database: database),
          ),
          BlocProvider<DatabaseBloc>(
            create: (context) => DatabaseBloc(
              database: database,
              settingsProvider: settingsProvider,
            )..add(const DatabaseEvent.initialize()),
          ),
          BlocProvider<TrailsBloc>(
            create: (context) => TrailsBloc(database: database),
          ),
          BlocProvider<CountdownBloc>(
            create: (context) => CountdownBloc(
              audioController: audioController,
              countdown: countdown,
              stageId: settingsProvider.settings.stageId,
            ),
          ),
          BlocProvider<BluetoothBloc>(
            create: (context) => BluetoothBloc(
              audioController: audioController,
              bluetoothProvider: bluetoothProvider,
              settingsProvider: settingsProvider,
              database: database,
            )..add(const BluetoothEvent.initialize()),
          ),
          BlocProvider<UpdateBloc>(
            create: (context) => UpdateBloc(updateProvider: updateProvider)
              ..add(const UpdateEvent.popupChangelog()),
          ),
          BlocProvider<AppInfoCubit>(
            create: (context) => AppInfoCubit(appInfo: appInfo),
          ),
          BlocProvider<NtpBloc>(create: (context) => NtpBloc(ntpProvider)),
          BlocProvider<ConnectivityBloc>(
            create: (context) => ConnectivityBloc(connectivityProvider),
          ),
        ],
        child: const EntimeAppView(),
      );
}

class EntimeAppView extends StatelessWidget {
  const EntimeAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.read<SettingsCubit>().state;
    if (settings.updateNtpOffsetAtStartup) {
      context.read<NtpBloc>().add(const NtpEvent.getNtpOffset());
    }
    if (settings.checkUpdates) {
      context.read<UpdateBloc>().add(const UpdateEvent.checkUpdate());
    }

    final isTest = Platform.environment.containsKey('FLUTTER_TEST');

    return BlocBuilder<SettingsCubit, AppSettings>(
      buildWhen: (previousState, state) =>
          previousState.seedColor != state.seedColor ||
          previousState.brightness != state.brightness ||
          previousState.contrastLevel != state.contrastLevel ||
          previousState.dynamicSchemeVariant != state.dynamicSchemeVariant ||
          previousState.language != state.language ||
          previousState.isOLEDBackground != state.isOLEDBackground,
      builder: (context, state) => MaterialApp(
        theme: appThemeData(
          seedColor: state.seedColor,
          brightness: state.brightness,
          contrastLevel: state.contrastLevel,
          dynamicSchemeVariant: state.dynamicSchemeVariant,
          isOLEDBackground: state.isOLEDBackground,
        ),
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
        home: isTest ? const SizedBox.shrink() : const HomeScreen(),
      ),
    );
  }
}
