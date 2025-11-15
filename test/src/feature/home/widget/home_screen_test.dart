import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/constants/pubspec.yaml.g.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/connectivity/bloc/connectivity_bloc.dart';
import 'package:entime/src/feature/countdown/countdown.dart';
import 'package:entime/src/feature/countdown/model/tick.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/model/filter_start.dart';
import 'package:entime/src/feature/home/widget/home_screen.dart';
import 'package:entime/src/feature/module_settings/module_settings.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/logic/shared_prefs_settings_provider.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:entime/src/feature/tab/widget/finish_page.dart';
import 'package:entime/src/feature/tab/widget/init_page.dart';
import 'package:entime/src/feature/tab/widget/start_page.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState> implements CountdownBloc {}

class MockUpdateBloc extends MockBloc<UpdateEvent, UpdateState> implements UpdateBloc {}

class MockConnectivityBloc extends MockBloc<ConnectivityEvent, ConnectivityState> implements ConnectivityBloc {}

class MockNtpBloc extends MockBloc<NtpEvent, NtpState> implements NtpBloc {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockModuleSettingsBloc extends MockBloc<ModuleSettingsEvent, ModuleSettingsState> implements ModuleSettingsBloc {}

class MockQueryRow extends Mock implements QueryRow {}

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
  late ModuleSettingsBloc moduleSettingsBloc;
  late QueryRow row;

  late SharedPrefsSettingsProvider settingsProvider;
  late int offset;
  late int deltaInSeconds;

  setUpAll(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );
    registerFallbackValue(const DatabaseEvent.addRace(name: 'name'));
    registerFallbackValue(const CountdownEvent.beep());
  });

  setUp(() async {
    countdownBloc = MockCountdownBloc();
    updateBloc = MockUpdateBloc();
    connectivityBloc = MockConnectivityBloc();
    ntpBloc = MockNtpBloc();
    bluetoothBloc = MockBluetoothBloc();
    databaseBloc = MockDatabaseBloc();
    moduleSettingsBloc = MockModuleSettingsBloc();
    row = MockQueryRow();
    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);
    settingsProvider = await SharedPrefsSettingsProvider.load();
    settingsCubit = SettingsCubit(settingsProvider);
    tabCubit = TabCubit();

    offset = 100;
    deltaInSeconds = 10;

    when(() => bluetoothBloc.state).thenReturn(const BluetoothBlocState.notInitialized());
    when(() => countdownBloc.state).thenReturn(const CountdownState.working(tick: Tick(second: 0, text: 'text')));
    when(() => updateBloc.state).thenReturn(const UpdateState.initial());
    when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: true));
    when(() => ntpBloc.state).thenReturn(NtpState.initial(offset));
    when(() => databaseBloc.state).thenReturn(
      const DatabaseState(
        races: [],
        stages: [],
        categories: [],
        riders: [],
        participants: [],
        finishes: [],
        numbersOnTrace: [],
      ),
    );
    when(() => moduleSettingsBloc.state).thenReturn(const ModuleSettingsState.uninitialized());
  });

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
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
                        child: BlocProvider.value(value: moduleSettingsBloc, child: const HomeScreen()),
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

  group('HomeScreen tests', () {
    group('Main screen', () {
      patrolWidgetTest('Initial screen', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(#InitTab), findsOneWidget);
        expect($(#StartTab), findsOneWidget);
        expect($(#FinishTab), findsOneWidget);
      });

      patrolWidgetTest('Switch screens when tap on tabs', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
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
      });
    });

    group('FilterButton widget tests', () {
      patrolWidgetTest("Didn't visible at initial screen", (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(FilterButton).$(PopupMenuButton), findsNothing);
      });
      patrolWidgetTest('Filter button at start screen', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        await $(#StartTab).tap();
        await $(FilterButton).tap();
        expect($(CheckedPopupMenuItem<FilterStart>), findsNWidgets(3));
        expect($(PopupMenuItem<FilterStart>), findsOneWidget);
      });
      patrolWidgetTest('Press show DNS', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showDNS, false);
        await $(#StartTab).tap();
        await $(FilterButton).tap();
        await $(#showDNS).tap();
        expect(settingsCubit.state.showDNS, true);
      });
      patrolWidgetTest('Press show DNF', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showDNF, false);
        await $(#StartTab).tap();
        await $(FilterButton).tap();
        await $(#showDNF).tap();
        expect(settingsCubit.state.showDNF, true);
      });
      patrolWidgetTest('Press show DSQ', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showDSQ, false);
        await $(#StartTab).tap();
        await $(FilterButton).tap();
        await $(#showDSQ).tap();
        expect(settingsCubit.state.showDSQ, true);
      });
      patrolWidgetTest('Press start defaults', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
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
      });

      patrolWidgetTest('Filter button at finish screen', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        await $(#FinishTab).tap();
        await $(FilterButton).tap();
        expect($(CheckedPopupMenuItem<FilterFinish>), findsNWidgets(3));
        expect($(PopupMenuItem<FilterFinish>), findsOneWidget);
      });
      patrolWidgetTest('Press show hidden', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showHidden, false);
        await $(#FinishTab).tap();
        await $(FilterButton).tap();
        await $(#showHidden).tap();
        expect(settingsCubit.state.showHidden, true);
      });
      patrolWidgetTest('Press show numbers', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showNumbers, true);
        await $(#FinishTab).tap();
        await $(FilterButton).tap();
        await $(#showNumbers).tap();
        expect(settingsCubit.state.showNumbers, false);
      });
      patrolWidgetTest('Press show manual', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showManual, true);
        await $(#FinishTab).tap();
        await $(FilterButton).tap();
        await $(#showManual).tap();
        expect(settingsCubit.state.showManual, false);
      });
      patrolWidgetTest('Press finish defaults', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect(settingsCubit.state.showHidden, false);
        expect(settingsCubit.state.showNumbers, true);
        expect(settingsCubit.state.showManual, true);
        await $(#FinishTab).tap();
        await $(FilterButton).tap();
        await $(#showHidden).tap();
        await $(FilterButton).tap();
        await $(#showNumbers).tap();
        await $(FilterButton).tap();
        await $(#showManual).tap();
        expect(settingsCubit.state.showHidden, true);
        expect(settingsCubit.state.showNumbers, false);
        expect(settingsCubit.state.showManual, false);
        await $(FilterButton).tap();
        await $(#setFinishDefaults).tap();
        expect(settingsCubit.state.showHidden, false);
        expect(settingsCubit.state.showNumbers, true);
        expect(settingsCubit.state.showManual, true);
      });
    });

    group('Listeners tests', () {
      group('Bluetooth listener', () {
        patrolWidgetTest('Get AutomaticStart message and add starttime from it to to database', (PatrolTester $) async {
          const stage = Stage(id: 1, raceId: 1, name: 'name', isActive: true, isDeleted: false);
          final automaticStart = AutomaticStart('10:10:10', 1111, DateTime.now());
          when(() => databaseBloc.state).thenReturn(
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              stage: stage,
            ),
          );

          final expectedStates = [
            const BluetoothBlocState.notInitialized(),
            BluetoothBlocState.connected(message: BluetoothMessage.automaticStart(automaticStart: automaticStart)),
          ];
          whenListen(bluetoothBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidgetAndSettle(await testWidget());
          verify(
            () => databaseBloc.add(
              DatabaseEvent.updateAutomaticCorrection(
                stageId: stage.id,
                startTime: automaticStart.time,
                correction: automaticStart.correction,
                timestamp: automaticStart.timestamp,
                ntpOffset: offset,
                deltaInSeconds: deltaInSeconds,
                forceUpdate: automaticStart.updating,
              ),
            ),
          ).called(1);
        });

        patrolWidgetTest('Get AutomaticStart message and do nothing if stage not selected', (PatrolTester $) async {
          final expectedStates = [
            const BluetoothBlocState.notInitialized(),
            BluetoothBlocState.connected(message: BluetoothMessage.finish(time: 'time', timestamp: DateTime.now())),
          ];
          whenListen(bluetoothBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidgetAndSettle(await testWidget());
          verifyNever(() => databaseBloc.add(any()));
        });

        patrolWidgetTest('Get Finish message and add finishtime from it to to database', (PatrolTester $) async {
          const stage = Stage(id: 1, raceId: 1, name: 'name', isActive: true, isDeleted: false);
          const time = '10:10:10';
          final timestamp = DateTime.now();
          when(() => databaseBloc.state).thenReturn(
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              stage: stage,
            ),
          );
          final expectedStates = [
            const BluetoothBlocState.notInitialized(),
            BluetoothBlocState.connected(message: BluetoothMessage.finish(time: time, timestamp: timestamp)),
          ];
          whenListen(bluetoothBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidgetAndSettle(await testWidget());
          verify(
            () => databaseBloc.add(
              DatabaseEvent.addFinishTime(stage: stage, finishTime: time, timestamp: timestamp, ntpOffset: offset),
            ),
          ).called(1);
        });

        patrolWidgetTest('Get Finish message and do nothing if stage not selected', (PatrolTester $) async {
          final expectedStates = [
            const BluetoothBlocState.notInitialized(),
            BluetoothBlocState.connected(
              message: BluetoothMessage.automaticStart(
                automaticStart: AutomaticStart('10:10:10', 1111, DateTime.now()),
              ),
            ),
          ];
          whenListen(bluetoothBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidgetAndSettle(await testWidget());
          verifyNever(() => databaseBloc.add(any()));
        });

        patrolWidgetTest('Get ModuleSettings message', (PatrolTester $) async {
          const json = '{}';
          final expectedStates = [
            const BluetoothBlocState.notInitialized(),
            const BluetoothBlocState.connected(message: BluetoothMessage.moduleSettings(json: json)),
          ];
          whenListen(bluetoothBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidgetAndSettle(await testWidget());
          verify(() => moduleSettingsBloc.add(const ModuleSettingsEvent.get(json))).called(1);
        });
      });

      group('Update start time listener', () {
        patrolWidgetTest('Popup update correction dialog and accept it, '
            'if new correction more than updateStartCorrectionDelay at settings', (PatrolTester $) async {
          const number = 1;
          const startTime = '10:10:10';
          final timestamp = DateTime.now();
          const prevCorrection = 5555;
          const correction = -2222;

          final participantStatus = ParticipantStatus.active.index;
          const id = 1;

          final previousStarts = [
            StartingParticipant(
              row: row,
              startId: id,
              stageId: id,
              participantId: id,
              startTime: startTime,
              startStatus: participantStatus,
              raceId: id,
              riderId: id,
              number: number,
              participantStatus: participantStatus,
              automaticCorrection: prevCorrection,
            ),
          ];

          final notification = Notification.updateAutomaticCorrection(
            previousStarts: previousStarts,
            number: number,
            startTime: startTime,
            timestamp: timestamp,
            correction: correction,
          );

          final expectedStates = [
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
            ),
            DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              notification: notification,
            ),
          ];
          whenListen(databaseBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidget(await testWidget());
          expect($(AlertDialog), findsNothing);
          await $.pump();
          await $(#okButton).tap();
          // expect($(AlertDialog), findsOneWidget);
          verify(
            () => databaseBloc.add(
              DatabaseEvent.updateAutomaticCorrection(
                stageId: id,
                startTime: startTime,
                correction: correction,
                timestamp: timestamp,
                ntpOffset: offset,
                deltaInSeconds: deltaInSeconds,
                forceUpdate: true,
              ),
            ),
          ).called(1);
        });

        patrolWidgetTest('Popup update correction dialog and cancel it', (PatrolTester $) async {
          const number = 1;
          const startTime = '10:10:10';
          final timestamp = DateTime.now();
          const prevCorrection = 5555;
          const correction = -2222;

          final participantStatus = ParticipantStatus.active.index;
          const id = 1;

          final previousStarts = [
            StartingParticipant(
              row: row,
              startId: id,
              stageId: id,
              participantId: id,
              startTime: startTime,
              startStatus: participantStatus,
              raceId: id,
              riderId: id,
              number: number,
              participantStatus: participantStatus,
              automaticCorrection: prevCorrection,
            ),
          ];

          final notification = Notification.updateAutomaticCorrection(
            previousStarts: previousStarts,
            number: number,
            startTime: startTime,
            timestamp: timestamp,
            correction: correction,
          );

          final expectedStates = [
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
            ),
            DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              notification: notification,
            ),
          ];
          whenListen(databaseBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidget(await testWidget());
          expect($(AlertDialog), findsNothing);
          await $.pump();
          await $(#cancelButton).tap();
          verifyNever(() => databaseBloc.add(any()));
        });

        patrolWidgetTest('Do nothing if delta correction less than updateStartCorrectionDelay', (PatrolTester $) async {
          const number = 1;
          const startTime = '10:10:10';
          final timestamp = DateTime.now();
          const prevCorrection = 0;
          const correction = -1999;

          final participantStatus = ParticipantStatus.active.index;
          const id = 1;

          final previousStarts = [
            StartingParticipant(
              row: row,
              startId: id,
              stageId: id,
              participantId: id,
              startTime: startTime,
              startStatus: participantStatus,
              raceId: id,
              riderId: id,
              number: number,
              participantStatus: participantStatus,
              automaticCorrection: prevCorrection,
            ),
          ];

          final notification = Notification.updateAutomaticCorrection(
            previousStarts: previousStarts,
            number: number,
            startTime: startTime,
            timestamp: timestamp,
            correction: correction,
          );

          final expectedStates = [
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
            ),
            DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              notification: notification,
            ),
          ];
          whenListen(databaseBloc, Stream.fromIterable(expectedStates));
          await $.pumpWidgetAndSettle(await testWidget());
          expect($(AlertDialog), findsNothing);
          verifyNever(() => databaseBloc.add(any()));
        });
      });

      group('Updater listener', () {
        patrolWidgetTest('Update available, show SnackBar with version number and tap it', (PatrolTester $) async {
          const version = '0.1.1';
          final expectedStates = [const UpdateState.initial(), const UpdateState.updateAvailable(version: version)];
          whenListen(updateBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidget(await testWidget());
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nHome_updateAvailable(version)), findsOneWidget);
        });

        patrolWidgetTest('Show changelog and close it', (PatrolTester $) async {
          final expectedStates = [const UpdateState.initial(), const UpdateState.initial(changelog: 'changelog')];
          whenListen(updateBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidget(await testWidget());
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsOneWidget);
          await $(TextButton).tap();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
        });

        patrolWidgetTest('Show nothing if prev state not initial', (PatrolTester $) async {
          final expectedStates = [const UpdateState.connecting(), const UpdateState.initial(changelog: 'changelog')];
          whenListen(updateBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidgetAndSettle(await testWidget());
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
        });

        patrolWidgetTest('Show nothing if prev state initial and current not initial or updateAvailable', (
          PatrolTester $,
        ) async {
          final expectedStates = [
            const UpdateState.initial(),
            const UpdateState.connecting(),
            const UpdateState.initial(),
            const UpdateState.downloading(bytes: 1, total: 2),
            const UpdateState.initial(),
            const UpdateState.downloadError(error: 'error'),
          ];
          whenListen(updateBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidget(await testWidget());
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
          await $.pump();
          expect($(Localization.current.I18nUpdate_whatsNew), findsNothing);
          expect($(SnackBar), findsNothing);
        });
      });

      group('Countdown listener', () {
        patrolWidgetTest('Call beep from app if enable at settings', (PatrolTester $) async {
          await settingsCubit.update(settingsCubit.state.copyWith(beepFromApp: true));

          final expectedStates = [
            const CountdownState.initial(),
            const CountdownState.working(tick: Tick(second: 56, text: '4')),
            const CountdownState.working(tick: Tick(second: 57, text: '3')),
            const CountdownState.working(tick: Tick(second: 58, text: '2')),
            const CountdownState.working(tick: Tick(second: 59, text: '1')),
            const CountdownState.initial(),
            const CountdownState.working(tick: Tick(second: 59, text: '1')),
          ];
          whenListen(countdownBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidgetAndSettle(await testWidget());
          verify(() => countdownBloc.add(const CountdownEvent.beep())).called(1);
        });

        patrolWidgetTest("Don't call beep from app if disabled at settings", (PatrolTester $) async {
          final expectedStates = [
            const CountdownState.working(tick: Tick(second: 56, text: '4')),
            const CountdownState.working(tick: Tick(second: 57, text: '3')),
            const CountdownState.working(tick: Tick(second: 58, text: '2')),
            const CountdownState.working(tick: Tick(second: 59, text: '1')),
          ];
          whenListen(countdownBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidgetAndSettle(await testWidget());
          verifyNever(() => countdownBloc.add(any()));
        });

        patrolWidgetTest('Call participant from app if enable at settings', (PatrolTester $) async {
          await settingsCubit.update(settingsCubit.state.copyWith(voiceFromApp: true));

          const stage = Stage(id: 1, raceId: 1, name: 'name', isActive: true, isDeleted: false);

          when(() => databaseBloc.state).thenReturn(
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              stage: stage,
            ),
          );

          final expectedStates = [
            const CountdownState.working(tick: Tick(second: 8, text: '')),
            const CountdownState.working(tick: Tick(second: 9, text: '')),
            const CountdownState.working(tick: Tick(second: 10, text: '', callNextParticipant: true)),
            const CountdownState.working(tick: Tick(second: 11, text: '')),
            const CountdownState.working(tick: Tick(second: 12, text: '')),
          ];
          whenListen(countdownBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidgetAndSettle(await testWidget());
          verify(() => countdownBloc.add(CountdownEvent.callParticipant(stageId: stage.id))).called(1);
        });

        patrolWidgetTest("Don't call participant from app if disabled at settings", (PatrolTester $) async {
          final expectedStates = [
            const CountdownState.working(tick: Tick(second: 13, text: '')),
            const CountdownState.working(tick: Tick(second: 14, text: '')),
            const CountdownState.working(tick: Tick(second: 15, text: '')),
            const CountdownState.working(tick: Tick(second: 16, text: '')),
            const CountdownState.working(tick: Tick(second: 17, text: '')),
          ];
          whenListen(countdownBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidgetAndSettle(await testWidget());
          verifyNever(() => countdownBloc.add(any()));
        });

        patrolWidgetTest("Don't call participant from app if stage not selected", (PatrolTester $) async {
          await settingsCubit.update(settingsCubit.state.copyWith(voiceFromApp: true));

          final expectedStates = [
            const CountdownState.working(tick: Tick(second: 13, text: '')),
            const CountdownState.working(tick: Tick(second: 14, text: '')),
            const CountdownState.working(tick: Tick(second: 15, text: '')),
            const CountdownState.working(tick: Tick(second: 16, text: '')),
            const CountdownState.working(tick: Tick(second: 17, text: '')),
          ];
          whenListen(countdownBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidgetAndSettle(await testWidget());
          verifyNever(() => countdownBloc.add(any()));
        });
      });
    });

    group('TextTitle tests', () {
      const raceName = 'race name123';
      const stageName = 'stage name123';
      const race = Race(id: 1, name: raceName, isDeleted: false);
      const stage = Stage(id: 1, raceId: 1, name: stageName, isActive: true, isDeleted: false);
      patrolWidgetTest('App name if race or stage not selected', (PatrolTester $) async {
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
          ),
        );
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(TextTitle).$(Pubspec.name), findsOneWidget);
      });

      patrolWidgetTest('Race name if selected', (PatrolTester $) async {
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            race: race,
          ),
        );
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(TextTitle).$(race.name), findsOneWidget);
      });

      patrolWidgetTest('Stage name if selected', (PatrolTester $) async {
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            race: race,
            stage: stage,
          ),
        );
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(TextTitle).$(stageName), findsOneWidget);
      });

      patrolWidgetTest('Stage name if selected w/o race', (PatrolTester $) async {
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(TextTitle).$(stageName), findsOneWidget);
      });
    });
  });
}
