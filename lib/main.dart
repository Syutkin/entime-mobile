import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/common/localization/localization.dart';
import 'src/feature/app_info/app_info.dart';
import 'src/feature/audio/bloc/audio_bloc.dart';
import 'src/feature/bluetooth/bloc/bluetooth_bloc.dart';
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
  Bloc.transformer = bloc_concurrency.sequential();
  await runMain();
}

Future<void> runMain() async {
  final UpdateProvider updater = await UpdateProvider.init();
  final SettingsProvider settings = await SharedPrefsSettingsProvider.load();
  final AppInfoProvider appInfo = await AppInfoProvider.load();
  runApp(
    MultiBlocProvider(
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
        BlocProvider<AudioBloc>(
          create: (context) => AudioBloc(
            settingsBloc: BlocProvider.of<SettingsBloc>(context),
          ),
        ),
        BlocProvider<LogBloc>(
          create: (context) => LogBloc(
            settingsBloc: BlocProvider.of<SettingsBloc>(context),
          ),
        ),
        BlocProvider<ProtocolBloc>(
          create: (context) => ProtocolBloc(
            settingsBloc: BlocProvider.of<SettingsBloc>(context),
          )..add(SelectProtocol(settings.settings.recentFile)),
        ),
        BlocProvider<CountdownBloc>(
          create: (context) => CountdownBloc(
            protocolBloc: BlocProvider.of<ProtocolBloc>(context),
            tabBloc: BlocProvider.of<TabBloc>(context),
          ),
        ),
        BlocProvider<BluetoothBloc>(
          create: (context) => BluetoothBloc(
            moduleSettingsBloc: BlocProvider.of<ModuleSettingsBloc>(context),
            protocolBloc: BlocProvider.of<ProtocolBloc>(context),
            settingsBloc: BlocProvider.of<SettingsBloc>(context),
            logBloc: BlocProvider.of<LogBloc>(context),
            audioBloc: BlocProvider.of<AudioBloc>(context),
          ),
        ),
        BlocProvider<UpdateBloc>(
          create: (context) => UpdateBloc(updater: updater),
        ),
        BlocProvider<AppInfoCubit>(
          create: (context) => AppInfoCubit(appInfo: appInfo),
        ),
      ],
      child: EntimeApp(settings: settings),
    ),
  );
}

class EntimeApp extends StatelessWidget {
  final SettingsProvider settings;

  const EntimeApp({Key? key, required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // send commands to our top-level blocs to get them to initialize
    BlocProvider.of<UpdateBloc>(context).add(PopupChangelog());
    if (settings.settings.checkUpdates) {
      BlocProvider.of<UpdateBloc>(context).add(CheckUpdate());
    }

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SettingsProvider>.value(value: settings),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, settingsTheme) {
        return MaterialApp(
          theme: appThemeData[settingsTheme.settings.appTheme],
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
        );
      }),
    );
  }
}
