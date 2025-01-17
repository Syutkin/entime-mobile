import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/connectivity/bloc/connectivity_bloc.dart';
import 'package:entime/src/feature/countdown/countdown.dart';
import 'package:entime/src/feature/countdown/model/tick.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/model/filter_start.dart';
import 'package:entime/src/feature/home/widget/home_screen.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/logic/shared_prefs_settings_provider.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:entime/src/feature/tab/widget/finish_page.dart';
import 'package:entime/src/feature/tab/widget/init_page.dart';
import 'package:entime/src/feature/tab/widget/start_page.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../helpers/shared_prefs_defaults.dart';
import '../../database/drift/app_database_test.dart';

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState>
    implements BluetoothBloc {}

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState>
    implements CountdownBloc {}

class MockUpdateBloc extends MockBloc<UpdateEvent, UpdateState>
    implements UpdateBloc {}

class MockConnectivityBloc
    extends MockBloc<ConnectivityEvent, ConnectivityState>
    implements ConnectivityBloc {}

class MockNtpBloc extends MockBloc<NtpEvent, NtpState> implements NtpBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late SettingsCubit settingsCubit;
  late DatabaseBloc databaseBloc;
  late BluetoothBloc bluetoothBloc;
  late CountdownBloc countdownBloc;
  late UpdateBloc updateBloc;
  late TabCubit tabCubit;
  late ConnectivityBloc connectivityBloc;
  late NtpBloc ntpBloc;

  late SharedPrefsSettingsProvider settingsProvider;
  // late AppSettings settings;
  late AppDatabase db;

  setUpAll(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );
  });

  setUp(() async {
    bluetoothBloc = MockBluetoothBloc();
    countdownBloc = MockCountdownBloc();
    updateBloc = MockUpdateBloc();
    connectivityBloc = MockConnectivityBloc();
    ntpBloc = MockNtpBloc();

    // settings = const AppSettings.defaults();
    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
    settingsProvider = await SharedPrefsSettingsProvider.load();
    settingsCubit = SettingsCubit(settingsProvider);
    tabCubit = TabCubit();

    db = AppDatabase.customConnection(
      DatabaseConnection(NativeDatabase.memory()),
    );

    // populate DB
    for (final query in PopDB().queries) {
      await db.customInsert(query);
    }

    databaseBloc =
        DatabaseBloc(database: db, settingsProvider: settingsProvider);

    when(
      () => bluetoothBloc.state,
    ).thenReturn(const BluetoothBlocState.connected());
    when(
      () => countdownBloc.state,
    ).thenReturn(
      const CountdownState.working(tick: Tick(second: 0, text: 'text')),
    );
    when(
      () => updateBloc.state,
    ).thenReturn(
      const UpdateState.initial(),
    );
    when(
      () => connectivityBloc.state,
    ).thenReturn(
      const ConnectivityState.state(isConnected: true),
    );
    when(
      () => ntpBloc.state,
    ).thenReturn(
      const NtpState.initial(0),
    );
  });

  tearDown(() async {
    await db.close();
  });

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: settingsCubit,
          child: BlocProvider.value(
            value: tabCubit,
            child: BlocProvider.value(
              value: databaseBloc,
              child: BlocProvider.value(
                value: bluetoothBloc,
                child: BlocProvider.value(
                  value: countdownBloc,
                  child: BlocProvider.value(
                    value: updateBloc,
                    child: BlocProvider.value(
                      value: connectivityBloc,
                      child: BlocProvider.value(
                        value: ntpBloc,
                        child: const HomeScreen(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  group(
    'HomeScreen tests',
    () {
      group('Main screen', () {
        patrolWidgetTest(
          'Initial screen',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect($(#InitTab), findsOneWidget);
            expect($(#StartTab), findsOneWidget);
            expect($(#FinishTab), findsOneWidget);
          },
        );

        patrolWidgetTest(
          'Switch screens when tap on tabs',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect($(InitPage), findsOneWidget);
            expect($(StartPage), findsNothing);
            expect($(FinishPage), findsNothing);
            await $(#StartTab).tap();
            expect($(InitPage), findsNothing);
            expect($(StartPage), findsOneWidget);
            expect($(FinishPage), findsNothing);
            await $(#FinishTab).tap();
            expect($(InitPage), findsNothing);
            expect($(StartPage), findsNothing);
            expect($(FinishPage), findsOneWidget);
            await $(#InitTab).tap();
            expect($(InitPage), findsOneWidget);
            expect($(StartPage), findsNothing);
            expect($(FinishPage), findsNothing);
          },
        );
      });

      group('FilterButton widget tests', () {
        patrolWidgetTest(
          "Didn't visible at initial screen",
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect($(FilterButton).$(PopupMenuButton), findsNothing);
          },
        );
        patrolWidgetTest(
          'Filter button at start screen',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            await $(#StartTab).tap();
            await $(FilterButton).tap();
            expect($(CheckedPopupMenuItem<FilterStart>), findsNWidgets(3));
            expect($(PopupMenuItem<FilterStart>), findsOneWidget);
          },
        );
        patrolWidgetTest(
          'Press show DNS',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect(settingsCubit.state.showDNS, false);
            await $(#StartTab).tap();
            await $(FilterButton).tap();
            await $(#showDNS).tap();
            expect(settingsCubit.state.showDNS, true);
          },
        );
        patrolWidgetTest(
          'Press show DNF',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect(settingsCubit.state.showDNF, false);
            await $(#StartTab).tap();
            await $(FilterButton).tap();
            await $(#showDNF).tap();
            expect(settingsCubit.state.showDNF, true);
          },
        );
        patrolWidgetTest(
          'Press show DSQ',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect(settingsCubit.state.showDSQ, false);
            await $(#StartTab).tap();
            await $(FilterButton).tap();
            await $(#showDSQ).tap();
            expect(settingsCubit.state.showDSQ, true);
          },
        );
        patrolWidgetTest(
          'Press start defaults',
          (PatrolTester $) async {
            await $.pumpWidgetAndSettle(testWidget());
            expect(settingsCubit.state.showDNS, false);
            expect(settingsCubit.state.showDNF, false);
            expect(settingsCubit.state.showDSQ, false);
            await $(#StartTab).tap();
            await $(FilterButton).tap();
            await $(#showDNS).tap();
            await $(FilterButton).tap();
            await $(#showDNF).tap();
            await $(FilterButton).tap();
            await $(#showDSQ).tap();
            expect(settingsCubit.state.showDNS, true);
            expect(settingsCubit.state.showDNF, true);
            expect(settingsCubit.state.showDSQ, true);
            await $(FilterButton).tap();
            await $(#setStartDefaults).tap();
            expect(settingsCubit.state.showDNS, false);
            expect(settingsCubit.state.showDNF, false);
            expect(settingsCubit.state.showDSQ, false);
          },
        );
      });
    },
  );
}
