import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bot_toast/bot_toast.dart';

import 'package:entime/data_providers/settings/settings_provider.dart';
import 'package:entime/data_providers/settings/shared_prefs_settings_provider.dart';
import 'package:entime/data_providers/update/update_provider.dart';
import 'package:entime/data_providers/app_info/app_info_provider.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SettingsProvider settings = await SharedPrefsSettingsProvider.load();
  final AppInfoProvider appInfo = await AppInfoProvider.load();
  await runMain(settings, appInfo);
}

Future<void> runMain(SettingsProvider settings, AppInfoProvider appInfo) async {
  Bloc.observer = SimpleBlocObserver();
  final UpdateProvider updater = UpdateProvider();
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
          )..add(SelectProtocol(settings.getString('recentFile'))),
        ),
        BlocProvider<CountdownBloc>(
          create: (context) => CountdownBloc(
            protocolBloc: BlocProvider.of<ProtocolBloc>(context),
            tabBloc: BlocProvider.of<TabBloc>(context),
            settingsBloc: BlocProvider.of<SettingsBloc>(context),
          ),
        ),
        BlocProvider<BleBloc>(create: (context) => BleBloc()),
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
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(settings),
        ),
      ],
      child: EntimeApp(settings: settings),
    ),
  );
}

class EntimeApp extends StatefulWidget {
  final SettingsProvider settings;

  const EntimeApp({Key? key, required this.settings}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EntimeAppState();
}

class _EntimeAppState extends State<EntimeApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // send commands to our top-level blocs to get them to initialize
    BlocProvider.of<SettingsBloc>(context).add(LoadSettings());
    BlocProvider.of<UpdateBloc>(context).add(PopupChangelog());
    if (widget.settings.getBool('checkUpdates') ?? true) {
      BlocProvider.of<UpdateBloc>(context).add(CheckUpdate());
    }
    // BlocProvider.of<LogBloc>(context).add(LogGet());
//    BlocProvider.of<TimersBloc>(context).add(LoadTimers());
//    BlocProvider.of<ProjectsBloc>(context).add(LoadProjects());
//    BlocProvider.of<ThemeBloc>(context).add(LoadThemeEvent());
//    BlocProvider.of<LocaleBloc>(context).add(LoadLocaleEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SettingsProvider>.value(value: widget.settings),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, stateTheme) {
        return MaterialApp(
          theme: stateTheme.themeData,
          title: 'Entime',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('ru', 'RU'), // Russian
            const Locale('en', ''), // English, no country code
          ],
          //1. call BotToastInit
          builder: BotToastInit(),
          //2. registered route observer
          navigatorObservers: [BotToastNavigatorObserver()],
          home: HomeScreen(),
        );
      }),
    );
  }
}
