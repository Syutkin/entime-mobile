import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/countdown/countdown.dart';
import 'package:entime/src/feature/countdown/model/tick.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/popup/edit_racer_popup.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState> implements CountdownBloc {}

class MockNtpBloc extends MockBloc<NtpEvent, NtpState> implements NtpBloc {}

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  late DatabaseBloc databaseBloc;
  late SettingsCubit settingsCubit;
  late CountdownBloc countdownBloc;
  late NtpBloc ntpBloc;
  late AppSettings settings;
  late List<DatabaseState> expectedStates;
  late Stage stage;

  setUpAll(() async {
    registerFallbackValue(const DatabaseEvent.addRace(name: 'name'));
    registerFallbackValue(const AppSettings.defaults());
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    settingsCubit = MockSettingsCubit();
    countdownBloc = MockCountdownBloc();
    ntpBloc = MockNtpBloc();
    settings = const AppSettings.defaults();
  });

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(
            value: settingsCubit,
            child: BlocProvider.value(
              value: countdownBloc,
              child: BlocProvider.value(value: ntpBloc, child: const StartListPage()),
            ),
          ),
        ),
      ),
    );
  }

  group('StartListPage tests', () {
    group('General widgets', () {
      setUp(() {
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
        when(() => settingsCubit.state).thenReturn(settings);
      });
      patrolWidgetTest('Show initial widgets', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(StartItemTile), findsNothing);
        expect($(SliverPersistentHeader), findsOneWidget);
        expect($(FloatingActionButton), findsOneWidget);
      });
      patrolWidgetTest('Sliver legend', (PatrolTester $) async {
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Localization.current.I18nStart_sliverNumber), findsOneWidget);
        expect($(Localization.current.I18nStart_sliverStart), findsOneWidget);
        expect($(Localization.current.I18nStart_sliverManualCorrection), findsOneWidget);
        expect($(Localization.current.I18nStart_sliverAutomaticCorrection), findsOneWidget);
      });
    });
    group('Countdown floating widget', () {
      setUp(() {
        when(() => settingsCubit.update(any())).thenAnswer((_) => Future.value());
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
      });

      patrolWidgetTest('Show countdown if enabled in settings', (PatrolTester $) async {
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        settings = settings.copyWith(countdown: true);
        when(() => settingsCubit.state).thenReturn(settings);
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Positioned), findsOneWidget);
      });
      patrolWidgetTest('Show custom text', (PatrolTester $) async {
        settings = settings.copyWith(countdown: true);
        const text = 'countdown text';
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.working(tick: Tick(second: 0, text: text)));
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(text), findsOneWidget);
      });

      patrolWidgetTest('Default 75 size', (PatrolTester $) async {
        settings = settings.copyWith(countdown: true);
        const text = 'countdown text';
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.working(tick: Tick(second: 0, text: text)));
        await $.pumpWidgetAndSettle(await testWidget());
        expect(($(CountdownWidget).$(Container).evaluate().single.widget as Container).constraints?.maxWidth, 75);
        expect(($(CountdownWidget).$(Container).evaluate().single.widget as Container).constraints?.maxHeight, 75);
      });

      patrolWidgetTest('Change size', (PatrolTester $) async {
        settings = settings.copyWith(countdown: true, countdownSize: 150);
        const text = 'countdown text';
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.working(tick: Tick(second: 0, text: text)));
        await $.pumpWidgetAndSettle(await testWidget());
        expect(($(CountdownWidget).$(Container).evaluate().single.widget as Container).constraints?.maxWidth, 150);
        expect(($(CountdownWidget).$(Container).evaluate().single.widget as Container).constraints?.maxHeight, 150);
      });

      patrolWidgetTest('Drag countdown and update settings with new place', (PatrolTester $) async {
        settings = settings.copyWith(countdown: true);
        const text = 'countdown text';
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.working(tick: Tick(second: 0, text: text)));
        await $.pumpWidgetAndSettle(await testWidget());
        await $.tester.drag($(Draggable), const Offset(50, 50));
        await $.pumpAndSettle();
        verify(() => settingsCubit.update(settings.copyWith(countdownLeft: 50, countdownTop: 50))).called(1);
        await $.tester.drag($(Draggable), const Offset(100, 100));
        await $.pumpAndSettle();
        verify(() => settingsCubit.update(settings.copyWith(countdownLeft: 100, countdownTop: 100))).called(1);
      });
    });

    group('FAB button', () {
      setUp(() {
        when(() => databaseBloc.state).thenReturn(
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: Stage(id: 1, raceId: 1, name: 'name', isActive: true, isDeleted: false),
          ),
        );
      });
      patrolWidgetTest('Hide when disabled at settings', (PatrolTester $) async {
        settings = settings.copyWith(startFab: false);
        when(() => settingsCubit.state).thenReturn(settings);
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(FloatingActionButton), findsNothing);
      });
      patrolWidgetTest('Default 75 size', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        await $.pumpWidgetAndSettle(await testWidget());
        expect(($(SizedBox).containing($(FittedBox)).evaluate().single.widget as SizedBox).height, 75);
        expect(($(SizedBox).containing($(FittedBox)).evaluate().single.widget as SizedBox).width, 75);
      });

      patrolWidgetTest('Change size', (PatrolTester $) async {
        settings = settings.copyWith(startFabSize: 150);
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        expect(($(SizedBox).containing($(FittedBox)).evaluate().single.widget as SizedBox).height, 150);
        expect(($(SizedBox).containing($(FittedBox)).evaluate().single.widget as SizedBox).width, 150);
      });

      patrolWidgetTest('Tap FAB', (PatrolTester $) async {
        const offset = 1111;
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => ntpBloc.state).thenReturn(const NtpState.initial(offset));
        await $.pumpWidgetAndSettle(await testWidget());
        await $(FloatingActionButton).tap();
        final captured = verify(() => databaseBloc.add(captureAny())).captured;

        expect(switch (captured.first as DatabaseEvent) {
          DatabaseEventUpdateManualStartTime(ntpOffset: final ntpOffset) => ntpOffset,
          DatabaseEvent() => null,
        }, offset);
      });

      patrolWidgetTest('Tap FAB and do nothing when stage not selected', (PatrolTester $) async {
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
        const offset = 1111;
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => ntpBloc.state).thenReturn(const NtpState.initial(offset));
        await $.pumpWidgetAndSettle(await testWidget());
        await $(FloatingActionButton).tap();
        verifyNever(() => databaseBloc.add(captureAny()));
      });
    });
    group('Start list', () {
      setUp(() {
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: riders,
            participants: participants,
            finishes: [],
            numbersOnTrace: [],
          ),
        );
      });
      patrolWidgetTest('Show default participants', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(StartItemTile), findsNWidgets(3));
      });

      patrolWidgetTest('Tap then edit start time', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(TextFormField), findsNothing);
        await $(StartItemTile).tap();
        expect($(TextFormField), findsNWidgets(7));
      });

      patrolWidgetTest('Long press then popup appears', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(PopupMenuItem<StartPopupMenu>), findsNothing);
        await $(StartItemTile).longPress();
        expect($(PopupMenuItem<StartPopupMenu>), findsNWidgets(2));
        expect($(Localization.current.I18nCore_edit), findsOneWidget);
        expect($(Localization.current.I18nStart_shiftStartsTime), findsOneWidget);
      });

      patrolWidgetTest('Long press on tile with automaticCorrection, then popup appears', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(PopupMenuItem<StartPopupMenu>), findsNothing);
        await $('6').longPress();
        expect($(PopupMenuItem<StartPopupMenu>), findsNWidgets(3));
        expect($(Localization.current.I18nCore_edit), findsOneWidget);
        expect($(Localization.current.I18nStart_shiftStartsTime), findsOneWidget);
        expect($(Localization.current.I18nStart_replaceAutomaticCorrection), findsOneWidget);
      });

      patrolWidgetTest('Call replaceAutomaticCorrection popup, and confirm', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(PopupMenuItem<StartPopupMenu>), findsNothing);
        await $('6').longPress();
        await $(Localization.current.I18nStart_replaceAutomaticCorrection).tap();
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
        await $(#okButton).tap();
        verify(
          () => databaseBloc.add(
            const DatabaseEvent.updateStartingInfo(
              stageId: 1,
              participantId: 1,
              startTime: '10:00:00',
              timestampCorrection: -2000,
              automaticStartTime: '10:00:02,000',
              automaticCorrection: -2000,
            ),
          ),
        ).called(1);
      });

      patrolWidgetTest('Call edit racer popup', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        await $(StartItemTile).longPress();
        await $(Localization.current.I18nCore_edit).tap();
        expect($(EditRacerPopup), findsOneWidget);
      });

      patrolWidgetTest('Call shift popup', (PatrolTester $) async {
        when(() => settingsCubit.state).thenReturn(settings);
        when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
        await $.pumpWidgetAndSettle(await testWidget());
        await $(StartItemTile).longPress();
        await $(Localization.current.I18nStart_shiftStartsTime).tap();
        expect($(ShiftStartsTimePopup), findsOneWidget);
      });

      patrolWidgetTest(
        'Set DNS when dismissed',
        (PatrolTester $) async {
          when(() => settingsCubit.state).thenReturn(settings);
          when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
          await $.pumpWidgetAndSettle(await testWidget());
          expect($(StartItemTile), findsNWidgets(3));
          await $.tester.drag($(StartItemTile).containing('11:00:00'), const Offset(-500, 0));
          await $.pumpAndSettle();
          // Handle the confirmation popup
          await $(#okButton).tap();
          await $.pumpAndSettle();
          verify(
            () => databaseBloc.add(const DatabaseEvent.setStatusForStartId(startId: 1, status: ParticipantStatus.dns)),
          ).called(1);
        },
      );
    });

    group('Listener tests, updating start time to number', () {
      setUp(() {
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
        when(() => settingsCubit.state).thenReturn(settings);

        stage = const Stage(id: 1, raceId: 1, name: 'name', isActive: true, isDeleted: false);
        expectedStates = [
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
          ),
          const DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            notification: NotificationUpdateStartNumber(
              existedStartingParticipants: [],
              number: 123,
              startTime: 'startTime',
            ),
          ),
        ];
      });

      patrolWidgetTest('Show notification when updating starttime', (PatrolTester $) async {
        whenListen(databaseBloc, Stream.fromIterable(expectedStates));
        await $.pumpWidget(await testWidget());
        expect($(Localization.current.I18nCore_warning), findsNothing);
        await $.pumpAndSettle();
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
      });

      patrolWidgetTest('Do nothing when cancel pressed', (PatrolTester $) async {
        whenListen(databaseBloc, Stream.fromIterable(expectedStates));
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
        await $(#cancelButton).tap();
        expect($(Localization.current.I18nCore_warning), findsNothing);
        verifyNever(() => databaseBloc.add(any()));
      });

      patrolWidgetTest('Do not update number when ok pressed, because stage must be selected', (PatrolTester $) async {
        whenListen(databaseBloc, Stream.fromIterable(expectedStates));
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
        await $(#okButton).tap();
        expect($(Localization.current.I18nCore_warning), findsNothing);
        verifyNever(() => databaseBloc.add(any()));
      });

      patrolWidgetTest('Force update number when ok pressed', (PatrolTester $) async {
        expectedStates = [
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
          ),
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
            notification: NotificationUpdateStartNumber(
              existedStartingParticipants: [
                StartingParticipant(
                  row: MockQueryRow(),
                  startId: 1,
                  stageId: 1,
                  participantId: 1,
                  startTime: 'startTime1',
                  startStatus: ParticipantStatus.active.index,
                  raceId: 1,
                  riderId: 1,
                  number: 456,
                  participantStatus: ParticipantStatus.active.index,
                ),
              ],
              number: 123,
              startTime: 'startTime2',
            ),
          ),
        ];

        whenListen(databaseBloc, Stream.fromIterable(expectedStates));
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
        expect($(Localization.current.I18nHome_equalStartTime('startTime2', 456, 123)), findsOneWidget);

        await $(#okButton).tap();
        expect($(Localization.current.I18nCore_warning), findsNothing);
        verify(
          () => databaseBloc.add(
            DatabaseEvent.addStartNumber(stage: stage, number: 123, startTime: 'startTime2', forceAdd: true),
          ),
        ).called(1);
      });

      patrolWidgetTest('Show warning when automatic start already exists', (PatrolTester $) async {
        expectedStates = [
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
          ),
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
            notification: NotificationUpdateStartNumber(
              existedStartingParticipants: [
                StartingParticipant(
                  row: MockQueryRow(),
                  startId: 1,
                  stageId: 1,
                  participantId: 1,
                  startTime: 'startTime1',
                  startStatus: ParticipantStatus.active.index,
                  raceId: 1,
                  riderId: 1,
                  number: 456,
                  participantStatus: ParticipantStatus.active.index,
                  automaticStartTime: 'automaticStartTime',
                ),
              ],
              number: 123,
              startTime: 'startTime2',
            ),
          ),
        ];

        whenListen(databaseBloc, Stream.fromIterable(expectedStates));
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
        expect(
          $(Localization.current.I18nHome_updateAutomaticStartCorrection(123, 'automaticStartTime')),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Show warning when manual start already exists', (PatrolTester $) async {
        expectedStates = [
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
          ),
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [],
            stage: stage,
            notification: NotificationUpdateStartNumber(
              existedStartingParticipants: [
                StartingParticipant(
                  row: MockQueryRow(),
                  startId: 1,
                  stageId: 1,
                  participantId: 1,
                  startTime: 'startTime1',
                  startStatus: ParticipantStatus.active.index,
                  raceId: 1,
                  riderId: 1,
                  number: 456,
                  participantStatus: ParticipantStatus.active.index,
                  manualStartTime: 'manualStartTime',
                ),
              ],
              number: 123,
              startTime: 'startTime2',
            ),
          ),
        ];

        whenListen(databaseBloc, Stream.fromIterable(expectedStates));
        await $.pumpWidgetAndSettle(await testWidget());
        expect($(Localization.current.I18nCore_warning), findsOneWidget);
        expect($(Localization.current.I18nHome_updateAutomaticStartCorrection(123, 'manualStartTime')), findsOneWidget);
      });
    });
  });
}

final participants = <ParticipantAtStart>[
  ParticipantAtStart(
    row: MockQueryRow(),
    riderId: 1,
    raceId: 1,
    number: 1,
    participantStatusId: ParticipantStatus.active.index,
    name: 'active1',
    startId: 1,
    stageId: 1,
    participantId: 1,
    startTime: '11:00:00',
    statusId: ParticipantStatus.active.index,
  ),
  ParticipantAtStart(
    row: MockQueryRow(),
    riderId: 1,
    raceId: 1,
    number: 2,
    participantStatusId: ParticipantStatus.dns.index,
    name: 'dns1',
    startId: 1,
    stageId: 1,
    participantId: 1,
    startTime: '10:00:00',
    statusId: ParticipantStatus.active.index,
  ),
  ParticipantAtStart(
    row: MockQueryRow(),
    riderId: 1,
    raceId: 1,
    number: 3,
    participantStatusId: ParticipantStatus.dnf.index,
    name: 'dnf1',
    startId: 1,
    stageId: 1,
    participantId: 1,
    startTime: '10:00:00',
    statusId: ParticipantStatus.active.index,
  ),
  ParticipantAtStart(
    row: MockQueryRow(),
    riderId: 1,
    raceId: 1,
    number: 4,
    participantStatusId: ParticipantStatus.dsq.index,
    name: 'dsq1',
    startId: 1,
    stageId: 1,
    participantId: 1,
    startTime: '10:00:00',
    statusId: ParticipantStatus.active.index,
  ),
  ParticipantAtStart(
    row: MockQueryRow(),
    riderId: 1,
    raceId: 1,
    number: 5,
    participantStatusId: ParticipantStatus.active.index,
    name: 'active2',
    startId: 1,
    stageId: 1,
    participantId: 1,
    startTime: '10:00:00',
    statusId: ParticipantStatus.active.index,
  ),
  ParticipantAtStart(
    row: MockQueryRow(),
    riderId: 1,
    raceId: 1,
    number: 6,
    participantStatusId: ParticipantStatus.active.index,
    name: 'active3',
    startId: 1,
    stageId: 1,
    participantId: 1,
    startTime: '10:00:00',
    statusId: ParticipantStatus.active.index,
    automaticStartTime: 'automaticStartTime',
    automaticCorrection: 1234,
    timestamp: '10:00:02'.toDateTime(),
    timestampCorrection: -2000,
  ),
];

final riders = <Rider>[const Rider(id: 1, name: 'name', isDeleted: false)];
