import 'package:bloc_test/bloc_test.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/popup/change_finish_time_to_number_popup.dart';
import 'package:entime/src/feature/database/widget/popup/finish_details.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

part 'helpers/database_state.dart';

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockNtpBloc extends MockBloc<NtpEvent, NtpState> implements NtpBloc {}

void main() {
  late SettingsCubit settingsCubit;
  late DatabaseBloc databaseBloc;
  late NtpBloc ntpBloc;
  late AppSettings settings;
  late Stage stage;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(
            value: ntpBloc,
            child: BlocProvider.value(value: settingsCubit, child: const FinishListPage()),
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const DatabaseEvent.deleteRace(1));
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    ntpBloc = MockNtpBloc();
    settingsCubit = MockSettingsCubit();
    settings = const AppSettings.defaults();
    stage = const Stage(id: 1, raceId: 1, name: 'Stage name', isActive: true, isDeleted: false);
  });

  group('FinishListPage tests', () {
    group('Finish list', () {
      patrolWidgetTest('Empty list', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true);
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

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNothing);
      });

      patrolWidgetTest('Show 8 finishes with any states', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true);
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(count));
      });

      patrolWidgetTest('Do not show difference', (PatrolTester $) async {
        settings = settings.copyWith(showFinishDifference: false);
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(Localization.current.I18nProtocol_difference), findsNothing);
      });

      patrolWidgetTest('Show difference', (PatrolTester $) async {
        settings = settings.copyWith(showFinishDifference: true);
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(Localization.current.I18nProtocol_difference), findsOneWidget);
      });

      patrolWidgetTest('Filter hidden finishes', (PatrolTester $) async {
        const count = 10;
        // filter 4 from 10
        const expected = 6;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter finishes with numbers', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true, showNumbers: false);
        const count = 11;
        // filter 4 from 11
        const expected = 7;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter manual finishes', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true, showManual: false);
        const count = 9;
        // filter 4 from 9
        const expected = 5;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter manual and with numbers finishes', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: true, showManual: false, showNumbers: false);
        const count = 11;
        // filter 6 from 11
        const expected = 5;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter hidden and with numbers finishes', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: false, showManual: true, showNumbers: false);
        const count = 10;
        // filter 6 from 10
        const expected = 4;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter hidden and manual finishes', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: false, showManual: false, showNumbers: true);
        const count = 10;
        // filter 6 from 10
        const expected = 4;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Filter hidden, manual and with numbers finishes', (PatrolTester $) async {
        settings = settings.copyWith(showHidden: false, showManual: false, showNumbers: false);
        const count = 12;
        // filter 7 from 12
        const expected = 5;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        expect($(FinishItemTile), findsNWidgets(expected));
      });

      patrolWidgetTest('Tap FinishItemTile and get AlertDialog', (PatrolTester $) async {
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(FinishItemTile).tap();
        expect($(AlertDialog), findsOneWidget);
      });

      patrolWidgetTest('Long press on FinishItemTile w/o number', (PatrolTester $) async {
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(FinishItemTile).longPress();
        expect($(Localization.current.I18nProtocol_clearNumber), findsNothing);
        expect($(Localization.current.I18nProtocol_hideAll), findsOneWidget);
        expect($(Localization.current.I18nCore_details), findsOneWidget);
      });

      patrolWidgetTest('Long press on FinishItemTile with number', (PatrolTester $) async {
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(FinishItemTile).at(1).longPress();
        expect($(Localization.current.I18nProtocol_clearNumber), findsOneWidget);
        expect($(Localization.current.I18nProtocol_hideAll), findsOneWidget);
        expect($(Localization.current.I18nCore_details), findsOneWidget);
      });

      patrolWidgetTest('Long press on FinishItemTile and select clearNumber', (PatrolTester $) async {
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(FinishItemTile).at(1).longPress();
        await $(Localization.current.I18nProtocol_clearNumber).tap();
        verify(() => databaseBloc.add(DatabaseEvent.clearNumberAtFinish(stage: stage, number: 1))).called(1);
      });

      patrolWidgetTest('Long press on FinishItemTile and select hideAll', (PatrolTester $) async {
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(FinishItemTile).at(1).longPress();
        await $(Localization.current.I18nProtocol_hideAll).tap();
        verify(() => databaseBloc.add(DatabaseEvent.hideAllFinishes(stage.id))).called(1);
      });

      patrolWidgetTest('Long press on FinishItemTile and select details', (PatrolTester $) async {
        const count = 8;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: finishes(count),
            numbersOnTrace: [],
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(FinishItemTile).at(1).longPress();
        await $(Localization.current.I18nCore_details).tap();
        expect($(FinishDetailsPopup), findsOneWidget);
      });
    });

    group('NumbersOnTrace list', () {
      patrolWidgetTest('Empty list', (PatrolTester $) async {
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

        await $.pumpWidgetAndSettle(testWidget());

        expect($(NumberOnTraceTile), findsNothing);
      });

      patrolWidgetTest('3 numbers on trace', (PatrolTester $) async {
        const n = 3;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($(NumberOnTraceTile), findsNWidgets(n));
      });

      patrolWidgetTest('Widget shows number', (PatrolTester $) async {
        const n = 4;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());

        expect($('1'), findsOneWidget);
        expect($('2'), findsOneWidget);
        expect($('3'), findsOneWidget);
        expect($('4'), findsOneWidget);
      });

      patrolWidgetTest('Show popup on number on trace', (PatrolTester $) async {
        const n = 1;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(NumberOnTraceTile).longPress();

        expect($(PopupMenuItem<ParticipantStatus>), findsNWidgets(2));
        expect($(Localization.current.I18nProtocol_didNotStart), findsOneWidget);
        expect($(Localization.current.I18nProtocol_didNotFinish), findsOneWidget);
      });

      patrolWidgetTest('Tap DNS on number on trace popup', (PatrolTester $) async {
        const n = 1;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(NumberOnTraceTile).longPress();
        await $(Localization.current.I18nProtocol_didNotStart).tap();
        verify(() => databaseBloc.add(DatabaseEvent.setDNSForStage(stage: stage, number: 1))).called(1);
      });

      patrolWidgetTest('Tap DNF on number on trace popup', (PatrolTester $) async {
        const n = 1;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(NumberOnTraceTile).longPress();
        await $(Localization.current.I18nProtocol_didNotFinish).tap();
        verify(() => databaseBloc.add(DatabaseEvent.setDNFForStage(stage: stage, number: 1))).called(1);
      });

      patrolWidgetTest('Select number on trace when tap', (PatrolTester $) async {
        const n = 1;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: numbersOnTrace(n),
            stage: stage,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(NumberOnTraceTile).tap();
        verify(() => databaseBloc.add(const DatabaseEvent.selectAwaitingNumber(number: n))).called(1);
      });

      patrolWidgetTest('Deselect number on trace when tap if selected', (PatrolTester $) async {
        const number = 199;
        when(() => databaseBloc.state).thenReturn(
          DatabaseState(
            races: [],
            stages: [],
            categories: [],
            riders: [],
            participants: [],
            finishes: [],
            numbersOnTrace: [
              StartingParticipant(
                row: MockQueryRow(),
                startId: 1,
                stageId: 1,
                participantId: 1,
                startTime: 'startTime',
                startStatus: 1,
                raceId: 1,
                riderId: 1,
                number: number,
                participantStatus: 1,
              ),
            ],
            stage: stage,
            awaitingNumber: number,
          ),
        );
        when(() => settingsCubit.state).thenReturn(settings);

        await $.pumpWidgetAndSettle(testWidget());
        await $(NumberOnTraceTile).tap();
        verify(() => databaseBloc.add(const DatabaseEvent.deselectAwaitingNumber())).called(1);
      });
    });

    group('Listeners tests', () {
      late DatabaseState emptyState;
      late Stage stage;
      late int autoFinishNumber;
      setUp(() {
        autoFinishNumber = 21;
        stage = const Stage(id: 1, raceId: 1, name: 'name', isActive: true, isDeleted: false);

        emptyState = const DatabaseState(
          races: [],
          stages: [],
          categories: [],
          riders: [],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        );

        when(() => settingsCubit.state).thenReturn(settings);
        when(() => databaseBloc.state).thenReturn(emptyState);
      });

      group('autoFinishNumber listener', () {
        patrolWidgetTest('Show toast with automatically added number', (PatrolTester $) async {
          final expectedStates = [
            emptyState,
            DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              autoFinishNumber: autoFinishNumber,
            ),
          ];

          whenListen(databaseBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidget(testWidget());
          expect($(ListTile), findsNothing);
          await $.pumpAndSettle();
          expect($(Localization.current.I18nProtocol_finishNumber('$autoFinishNumber')), findsOneWidget);
        });

        patrolWidgetTest('Tap cancel on toast with automatically added number', (PatrolTester $) async {
          final expectedStates = [
            emptyState,
            DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              finishes: [],
              numbersOnTrace: [],
              autoFinishNumber: autoFinishNumber,
              stage: stage,
            ),
          ];

          whenListen(databaseBloc, Stream.fromIterable(expectedStates));

          await $.pumpWidget(testWidget());
          expect($(#cancelToast), findsNothing);
          await $.pumpAndSettle();
          expect($(#cancelToast), findsOneWidget);
          final btn = $(#cancelToast).evaluate().first.widget as TextButton;
          btn.onPressed!();
          // ToDo: Dunno why this .tap() didn't work
          // await $(#cancelToast).tap();
          verify(
            () => databaseBloc.add(DatabaseEvent.clearNumberAtFinish(stage: stage, number: autoFinishNumber)),
          ).called(1);
        });
      });

      group('changeFinishTimeToNumber listener', () {
        patrolWidgetTest('Show updateFinishTimePopup and accept it', (PatrolTester $) async {
          const number = 2;
          const finishTime = '10:10:10';
          final notification = Notification.changeFinishTimeToNumber(
            finishId: 1,
            number: number,
            finishTime: finishTime,
            stage: stage,
          );

          final expectedStates = [
            emptyState,
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

          await $.pumpWidget(testWidget());
          expect($(UpdateFinishTimePopup), findsNothing);
          await $.pump();
          expect($(UpdateFinishTimePopup), findsOneWidget);
          await $(#okButton).tap();
          expect($(UpdateFinishTimePopup), findsNothing);

          switch (notification) {
            case NotificationChangeFinishTimeToNumber():
              verify(
                () => databaseBloc.add(
                  DatabaseEvent.clearNumberAtFinish(stage: notification.stage, number: notification.number),
                ),
              ).called(1);
              verify(
                () => databaseBloc.add(
                  DatabaseEvent.addNumberToFinish(
                    finishId: notification.finishId,
                    number: notification.number,
                    finishTime: notification.finishTime,
                    stage: notification.stage,
                  ),
                ),
              ).called(1);
            default:
          }
        });

        patrolWidgetTest('Show updateFinishTimePopup and do nothing if cancel pressed', (PatrolTester $) async {
          const number = 2;
          const finishTime = '10:10:10';
          final notification = Notification.changeFinishTimeToNumber(
            finishId: 1,
            number: number,
            finishTime: finishTime,
            stage: stage,
          );

          final expectedStates = [
            emptyState,
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

          await $.pumpWidget(testWidget());
          expect($(UpdateFinishTimePopup), findsNothing);
          await $.pump();
          expect($(UpdateFinishTimePopup), findsOneWidget);
          await $(#cancelButton).tap();
          expect($(UpdateFinishTimePopup), findsNothing);

          verifyNever(() => databaseBloc.add(any()));
        });
      });
    });
  });

  group('Widget tests', () {
    group('FAB tests', () {
      patrolWidgetTest('Taping FAB calls DatabaseEvent', (PatrolTester $) async {
        const ntpOffset = 100;
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
        when(() => ntpBloc.state).thenReturn(const NtpState.success(ntpOffset));
        when(() => settingsCubit.state).thenReturn(settings);
        await $.pumpWidget(testWidget());
        await $(FloatingActionButton).tap();
        verify(() => databaseBloc.add(any())).called(1);
      });
    });
  });
}
