import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:bloc_test/bloc_test.dart';
import 'package:entime/main.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/countdown/logic/countdown.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/home/home.dart';
import 'package:entime/src/feature/log/logic/log_provider.dart';
import 'package:entime/src/feature/protocol/protocol.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppInfoProvider extends Mock implements AppInfoProvider {}

class MockUpdateProvider extends Mock implements UpdateProvider {}

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

class MockProtocolProvider extends Mock implements IProtocolProvider {}

class MockLogProvider extends Mock implements LogProvider {}

class MockAudioService extends Mock implements AudioService {}

class MockIAudioController extends Mock implements IAudioController {}

class MockSettingsBloc extends MockBloc<SettingsEvent, SettingsState>
    implements SettingsBloc {}

class MockProtocolBloc extends MockBloc<ProtocolEvent, ProtocolState>
    implements ProtocolBloc {}

class MockTabBloc extends MockBloc<TabEvent, AppTab> implements TabBloc {}

class MockUpdateBloc extends MockBloc<UpdateEvent, UpdateState>
    implements UpdateBloc {}

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState>
    implements BluetoothBloc {}

class MockAppDatabase extends Mock implements AppDatabase {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential<dynamic>();

  final settings = await SharedPrefsSettingsProvider.load();
  final appInfo = MockAppInfoProvider();
  final UpdateProvider updateProvider = MockUpdateProvider();
  final IBluetoothProvider bluetoothProvider = MockBluetoothProvider();
  final IProtocolProvider protocolProvider = MockProtocolProvider();
  final ILogProvider logProvider = MockLogProvider();

  // final AudioService audioService = MockAudioService();
  final IAudioController audioController = MockIAudioController();

  final AppDatabase database = MockAppDatabase();

  final CountdownAtStart countdown = CountdownAtStart(database: database);

  group('EntimeApp', () {
    testWidgets('renders EntimeAppView', (tester) async {
      await tester.pumpWidget(
        EntimeApp(
          settings: settings,
          updateProvider: updateProvider,
          bluetoothProvider: bluetoothProvider,
          audioController: audioController,
          appInfo: appInfo,
          protocolProvider: protocolProvider,
          logProvider: logProvider,
          database: database,
          countdown: countdown,
        ),
      ); // Create main app
      expect(find.byType(EntimeAppView), findsOneWidget);
    });
  });

  group('EntimeAppView', () {
    late SettingsBloc settingsBloc;
    late ProtocolBloc protocolBloc;
    late TabBloc tabBloc;
    late UpdateBloc updateBloc;
    late BluetoothBloc bluetoothBloc;

    setUp(() {
      settingsBloc = MockSettingsBloc();
      protocolBloc = MockProtocolBloc();
      tabBloc = MockTabBloc();
      updateBloc = MockUpdateBloc();
      bluetoothBloc = MockBluetoothBloc();
    });

    testWidgets('renders WeatherPage', (tester) async {
      when(() => settingsBloc.state)
          .thenReturn(SettingsState(settings: settings.settings));
      when(() => protocolBloc.state)
          .thenReturn(const ProtocolState.notSelected());
      when(() => tabBloc.state).thenReturn(AppTab.init);
      when(() => updateBloc.state).thenReturn(const UpdateState.initial());
      when(() => bluetoothBloc.state)
          .thenReturn(const BluetoothBlocState.notInitialized());
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => settingsBloc),
            BlocProvider(create: (_) => protocolBloc),
            BlocProvider(create: (_) => tabBloc),
            BlocProvider(create: (_) => updateBloc),
            BlocProvider(create: (_) => bluetoothBloc),
          ],
          child: const EntimeAppView(),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
