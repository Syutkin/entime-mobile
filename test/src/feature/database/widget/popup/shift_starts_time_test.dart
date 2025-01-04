import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockQueryRow extends Mock implements QueryRow {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState>
    implements DatabaseBloc {}

void main() {
  late DatabaseBloc databaseBloc;
  late ParticipantAtStart item;
  late int number;
  late String startTime;

  Widget testWidget(ParticipantAtStart item) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: Builder(
          builder:
              (context) => TextButton(
                onPressed: () => shiftStartsTime(context: context, item: item),
                child: const Text('TextButton'),
              ),
        ),
      ),
    );
  }

  Widget testShiftStartsTimePopup(ParticipantAtStart item) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: BlocProvider.value(
        value: databaseBloc,
        child: Material(child: ShiftStartsTimePopup(item: item)),
      ),
    );
  }

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    number = 1234;
    startTime = '12:13:14';

    item = ParticipantAtStart(
      row: MockQueryRow(),
      riderId: 1,
      raceId: 1,
      number: number,
      participantStatusId: 1,
      name: 'name',
      startId: 1,
      stageId: 1,
      participantId: 1,
      startTime: startTime,
      statusId: 1,
    );
  });

  group('ShiftStartsTimePopup tests', () {
    patrolWidgetTest('Pump widget', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(item));

      expect($(Localization.current.I18nCore_warning), findsNothing);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsNothing,
      );
      expect($(Localization.current.I18nStart_shiftMinutes), findsNothing);

      await $(TextButton).tap();
      await $.pumpAndSettle();

      expect($(Localization.current.I18nCore_warning), findsOneWidget);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsOneWidget,
      );
      expect($(Localization.current.I18nStart_shiftMinutes), findsOneWidget);
    });

    patrolWidgetTest('Do not call bloc event, when shist is empty', (
      PatrolTester $,
    ) async {
      await $.pumpWidgetAndSettle(testWidget(item));
      await $(TextButton).tap();
      await $.pumpAndSettle();

      await $(TextFormField).enterText('');
      await $(#okButton).tap();
      await $.pumpAndSettle();

      expect($(Localization.current.I18nCore_warning), findsNothing);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsNothing,
      );
      expect($(Localization.current.I18nStart_shiftMinutes), findsNothing);
    });

    patrolWidgetTest('Do not call bloc event, when shift is empty', (
      PatrolTester $,
    ) async {
      await $.pumpWidgetAndSettle(testWidget(item));
      await $(TextButton).tap();
      await $.pumpAndSettle();

      expect($(Localization.current.I18nCore_warning), findsOneWidget);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsOneWidget,
      );
      expect($(Localization.current.I18nStart_shiftMinutes), findsOneWidget);

      await $(#cancelButton).tap();
      await $.pumpAndSettle();

      expect($(Localization.current.I18nCore_warning), findsNothing);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsNothing,
      );
      expect($(Localization.current.I18nStart_shiftMinutes), findsNothing);
    });

    patrolWidgetTest('Call bloc event on correct shift', (
      PatrolTester $,
    ) async {
      await $.pumpWidgetAndSettle(testShiftStartsTimePopup(item));

      expect($(Localization.current.I18nCore_warning), findsOneWidget);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsOneWidget,
      );
      expect($(Localization.current.I18nStart_shiftMinutes), findsOneWidget);

      await $(TextFormField).enterText('100');
      await $(#okButton).tap();
      await $.pumpAndSettle();

      expect($(Localization.current.I18nCore_warning), findsNothing);
      expect(
        $(
          Localization.current.I18nStart_shiftStartsTimeFromNumber(
            number,
            startTime,
          ),
        ),
        findsNothing,
      );

      expect($(Localization.current.I18nStart_shiftMinutes), findsNothing);
      verify(
        () => databaseBloc.add(
          DatabaseEvent.shiftStartsTime(
            stageId: 1,
            minutes: 100,
            fromTime: startTime,
          ),
        ),
      ).called(1);
    });
  });
}
