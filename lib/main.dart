import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bot_toast/bot_toast.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:http/http.dart' as http;
import 'package:package_info_plus/package_info_plus.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/common/localization/localization.dart';
import 'src/feature/app_info/app_info.dart';
import 'src/feature/audio/logic/audio_service.dart';
import 'src/feature/bluetooth/bluetooth.dart';
import 'src/feature/countdown/bloc/countdown_bloc.dart';
import 'src/feature/home/widget/home_screen.dart';
import 'src/feature/log/bloc/log_bloc.dart';
import 'src/feature/module_settings/bloc/module_settings_bloc.dart';
import 'src/feature/protocol/bloc/protocol_bloc.dart';
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

  final packageInfo = await PackageInfo.fromPlatform();
  final androidInfo = await DeviceInfoPlugin().androidInfo;
  final settings = await SharedPrefsSettingsProvider.load();
  final appInfo = await AppInfoProvider.load(
    deviceInfo: androidInfo,
    packageInfo: packageInfo,
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

  final AudioService audioService = AudioService(settings: settings);

  runApp(
    EntimeApp(
      settings: settings,
      updateProvider: updateProvider,
      bluetoothProvider: bluetoothProvider,
      audioService: audioService,
      appInfo: appInfo,
    ),
  );
}

class EntimeApp extends StatelessWidget {
  final SettingsProvider settings;
  final AppInfoProvider appInfo;
  final UpdateProvider updateProvider;
  final IBluetoothProvider bluetoothProvider;
  final AudioService audioService;

  const EntimeApp({
    Key? key,
    required this.settings,
    required this.updateProvider,
    required this.bluetoothProvider,
    required this.audioService,
    required this.appInfo,
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
              settingsBloc: BlocProvider.of<SettingsBloc>(context),
            ),
          ),
          BlocProvider<ProtocolBloc>(
            create: (context) => ProtocolBloc(
              settingsBloc: BlocProvider.of<SettingsBloc>(context),
            )..add(SelectProtocol(file: settings.settings.recentFile)),
          ),
          BlocProvider<CountdownBloc>(
            create: (context) => CountdownBloc(
              protocolBloc: BlocProvider.of<ProtocolBloc>(context),
              tabBloc: BlocProvider.of<TabBloc>(context),
            ),
          ),
          BlocProvider<BluetoothBloc>(
            create: (context) => BluetoothBloc(
              audioService: audioService,
              bluetoothProvider: bluetoothProvider,
              moduleSettingsBloc: BlocProvider.of<ModuleSettingsBloc>(context),
              protocolBloc: BlocProvider.of<ProtocolBloc>(context),
              settingsBloc: BlocProvider.of<SettingsBloc>(context),
              logBloc: BlocProvider.of<LogBloc>(context),
            )..add(const InitializeBluetooth()),
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
          // builder: BotToastInit(),
          //2. registered route observer
          // navigatorObservers: [BotToastNavigatorObserver()],
          home: const HomeScreen(),
        ),
      );
}

class MyEntimeAppView extends StatelessWidget {
  const MyEntimeAppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => const MaterialApp(
          home: MyWidget(),
        ),
      );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Text('data');
}
