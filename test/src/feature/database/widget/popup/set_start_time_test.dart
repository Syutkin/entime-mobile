import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/cupertino.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  late DatabaseBloc databaseBloc;
  late ParticipantAtStart item;

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: BlocProvider.value(
        value: databaseBloc,
        child: Material(child: SetStartTimePopup(item: item)),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(
      const DatabaseEvent.setStartTime(stageId: 1, participantId: 1, number: 1, startTime: ''),
    );
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    item = ParticipantAtStart(
      row: MockQueryRow(),
      riderId: 1,
      raceId: 1,
      number: 42,
      participantStatusId: ParticipantStatus.active.index,
      name: 'name',
      startId: 1,
      stageId: 2,
      participantId: 3,
      startTime: '12:13:14',
      statusId: ParticipantStatus.active.index,
      timestampCorrection: 123,
      automaticStartTime: '12:13:15',
      automaticCorrection: 456,
      manualStartTime: '12:13:16',
      manualCorrection: 789,
    );
  });

  group('SetStartTimePopup tests', () {
    patrolWidgetTest('Shows current start time info and picker', ($) async {
      await $.pumpWidgetAndSettle(await testWidget());

      expect($(SetStartTimePopup), findsOneWidget);
      expect($(Form), findsOneWidget);
      expect($(Localization.current.I18nStart_startTime), findsOneWidget);
      expect($(Localization.current.I18nStart_changeStartTimeInfo(item.number, item.startTime)), findsOneWidget);
      expect($(CupertinoTimerPicker), findsOneWidget);

      final picker = $(CupertinoTimerPicker).evaluate().single.widget as CupertinoTimerPicker;
      expect(picker.mode, CupertinoTimerPickerMode.hm);
      expect(picker.initialTimerDuration, const Duration(hours: 12, minutes: 13));
    });

    patrolWidgetTest('Cancel closes popup and does not call bloc event', ($) async {
      await $.pumpWidgetAndSettle(await testWidget());

      await $(#cancelButton).tap();
      await $.pumpAndSettle();

      verifyNever(() => databaseBloc.add(any()));
      expect($(SetStartTimePopup), findsNothing);
    });

    patrolWidgetTest('Press OK calls setStartTime with initial picker time', ($) async {
      await $.pumpWidgetAndSettle(await testWidget());

      await $(#okButton).tap();
      await $.pumpAndSettle();

      verify(
        () => databaseBloc.add(
          const DatabaseEvent.setStartTime(stageId: 2, participantId: 3, number: 42, startTime: '12:13:00'),
        ),
      ).called(1);
      expect($(SetStartTimePopup), findsNothing);
    });

    patrolWidgetTest('Press OK calls setStartTime with selected picker time', ($) async {
      await $.pumpWidgetAndSettle(await testWidget());

      final picker = $(CupertinoTimerPicker).evaluate().single.widget as CupertinoTimerPicker;
      picker.onTimerDurationChanged(const Duration(hours: 14, minutes: 35));

      await $(#okButton).tap();
      await $.pumpAndSettle();

      verify(
        () => databaseBloc.add(
          const DatabaseEvent.setStartTime(stageId: 2, participantId: 3, number: 42, startTime: '14:35:00'),
        ),
      ).called(1);
      expect($(SetStartTimePopup), findsNothing);
    });
  });
}
