import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bloc_test/bloc_test.dart';
import 'package:entime/main.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:entime/src/feature/countdown/logic/countdown.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/home/home.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/shared_prefs_defaults.dart';

class MockAppInfoProvider extends Mock implements AppInfoProvider {}

class MockUpdateProvider extends Mock implements UpdateProvider {}

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

class MockAudioService extends Mock implements AudioService {}

class MockIAudioController extends Mock implements IAudioController {}

class MockSettingsCubit extends MockCubit<AppSettings>
    implements SettingsCubit {}

class MockTabCubit extends MockCubit<AppTab> implements TabCubit {}

class MockUpdateBloc extends MockBloc<UpdateEvent, UpdateState>
    implements UpdateBloc {}

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState>
    implements BluetoothBloc {}

class MockAppDatabase extends Mock implements AppDatabase {}

class MockINtpProvider extends Mock implements INtpProvider {}

class MockIConnectivityProvider extends Mock implements IConnectivityProvider {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = AppBlocObserver();
  // Bloc.transformer = bloc_concurrency.sequential<dynamic>();

  late SharedPrefsSettingsProvider settingsProvider;
  late MockAppInfoProvider appInfo;
  late UpdateProvider updateProvider;
  late IBluetoothProvider bluetoothProvider;
  late IAudioController audioController;
  late AppDatabase database;
  late CountdownAtStart countdown;
  late INtpProvider ntpProvider;
  late IConnectivityProvider connectivityProvider;

  setUpAll(() async {
    Bloc.observer = AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential<dynamic>();

    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );

    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
    settingsProvider = await SharedPrefsSettingsProvider.load();
    appInfo = MockAppInfoProvider();
    updateProvider = MockUpdateProvider();
    bluetoothProvider = MockBluetoothProvider();
    audioController = MockIAudioController();
    database = MockAppDatabase();
    countdown = CountdownAtStart(database: database);
    ntpProvider = MockINtpProvider();
    connectivityProvider = MockIConnectivityProvider();
  });

  group(
    'EntimeApp',
    () {
      testWidgets('renders EntimeAppView', (tester) async {
        await tester.pumpWidget(
          EntimeApp(
            settingsProvider: settingsProvider,
            updateProvider: updateProvider,
            bluetoothProvider: bluetoothProvider,
            audioController: audioController,
            appInfo: appInfo,
            database: database,
            countdown: countdown,
            ntpProvider: ntpProvider,
            connectivityProvider: connectivityProvider,
          ),
        ); // Create main app
        expect(find.byType(EntimeAppView), findsOneWidget);
      });
    },
    skip: 'Refactor needed',
  );

  group(
    'EntimeAppView',
    () {
      late SettingsCubit settingsCubit;
      late TabCubit tabCubit;
      late UpdateBloc updateBloc;
      late BluetoothBloc bluetoothBloc;

      setUp(() {
        settingsCubit = MockSettingsCubit();
        tabCubit = MockTabCubit();
        updateBloc = MockUpdateBloc();
        bluetoothBloc = MockBluetoothBloc();
      });

      testWidgets('Renders Home page', (tester) async {
        when(
          () => settingsCubit.state,
        ).thenReturn(settingsProvider.settings);
        // when(() => tabBloc.state).thenReturn(AppTab.init);
        when(() => updateBloc.state).thenReturn(const UpdateState.initial());
        when(
          () => bluetoothBloc.state,
        ).thenReturn(const BluetoothBlocState.notInitialized());
        await tester.pumpWidget(
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => settingsCubit),
              BlocProvider(create: (_) => tabCubit),
              BlocProvider(create: (_) => updateBloc),
              BlocProvider(create: (_) => bluetoothBloc),
            ],
            child: const EntimeAppView(),
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byType(HomeScreen), findsOneWidget);
      });
    },
    skip: 'Refactor needed',
  );
}
