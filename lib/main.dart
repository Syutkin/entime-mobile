import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/bloc/app_bloc_observer.dart';
import 'feature/app_info/bloc/app_info_cubit.dart';
import 'feature/app_info/logic/app_info_provider.dart';
import 'feature/audio/bloc/audio_bloc.dart';
import 'feature/bluetooth/bloc/bluetooth_bloc.dart';
import 'feature/countdown/bloc/countdown_bloc.dart';
import 'feature/home/widget/home_screen.dart';
import 'feature/log/bloc/log_bloc.dart';
import 'feature/module_settings/bloc/module_settings_bloc.dart';
import 'feature/protocol/bloc/protocol_bloc.dart';
import 'feature/settings/bloc/settings_bloc.dart';
import 'feature/settings/logic/settings_provider.dart';
import 'feature/settings/logic/shared_prefs_settings_provider.dart';
import 'feature/settings/model/theme.dart';
import 'feature/tab/bloc/tab_bloc.dart';
import 'feature/update/bloc/update_bloc.dart';
import 'feature/update/logic/update_provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BlocOverrides.runZoned(
    () async {
      await runMain();
    },
    blocObserver: AppBlocObserver(),
    eventTransformer: bloc_concurrency.sequential(),
  );
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
          )..add(SelectProtocol(settings.getString('recentFile'))),
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
    if (settings.getBool('checkUpdates') ?? true) {
      BlocProvider.of<UpdateBloc>(context).add(CheckUpdate());
    }

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SettingsProvider>.value(value: settings),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, settingsTheme) {
        return MaterialApp(
          theme: appThemeData[settingsTheme.appTheme],
          title: 'Entime',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ru', 'RU'), // Russian
            Locale('en', ''), // English, no country code
          ],
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
