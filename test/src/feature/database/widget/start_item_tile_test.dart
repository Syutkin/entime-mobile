import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  late MockQueryRow row;
  late String name;
  late int number;
  late String startTime;
  late String automaticStartTime;
  late int automaticCorrection;
  late String manualStartTime;
  late int manualCorrection;
  late String countdown;

  Widget testWithLocale(Widget widget) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: widget,
      ),
    );
  }

  group('StartItemTile', () {
    setUp(() {
      row = MockQueryRow();
      name = 'Name';
      number = 7;
      startTime = '10:00:00';
      automaticStartTime = '10:00:03,123';
      automaticCorrection = 1234;
      manualStartTime = '10:00:04,456';
      manualCorrection = -4567;
      countdown = '03:56:27';
    });

    patrolWidgetTest('Show all basic info', (PatrolTester $) async {
      final item = ParticipantAtStart(
        row: row,
        riderId: 1,
        raceId: 1,
        number: number,
        participantStatusId: ParticipantStatus.active.index,
        name: name,
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: startTime,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
        statusId: ParticipantStatus.active.index,
      );
      await $.pumpWidgetAndSettle(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );

      expect($(number.toString()), findsOneWidget);
      expect($(startTime), findsOneWidget);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualCorrection.toString()), findsOneWidget);
    });

    patrolWidgetTest('If countdown presents, show it instead of startTime',
        (PatrolTester $) async {
      final item = ParticipantAtStart(
        row: row,
        riderId: 1,
        raceId: 1,
        number: number,
        participantStatusId: ParticipantStatus.active.index,
        name: name,
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: startTime,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
        statusId: ParticipantStatus.active.index,
      );
      await $.pumpWidgetAndSettle(
        testWithLocale(
          StartItemTile(
            item: item,
            countdown: countdown,
          ),
        ),
      );

      expect($(number.toString()), findsOneWidget);
      expect($(startTime), findsNothing);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualCorrection.toString()), findsOneWidget);
      expect($(countdown), findsOneWidget);
    });

    patrolWidgetTest(
        'If participant is dns, show status name instead of manualCorrection',
        (PatrolTester $) async {
      final item = ParticipantAtStart(
        row: row,
        riderId: 1,
        raceId: 1,
        number: number,
        participantStatusId: ParticipantStatus.active.index,
        name: name,
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: startTime,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
        statusId: ParticipantStatus.dns.index,
      );
      await $.pumpWidgetAndSettle(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );

      expect($(number.toString()), findsOneWidget);
      expect($(startTime), findsOneWidget);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualCorrection.toString()), findsNothing);
      expect($(Localization.current.I18nCore_dns), findsOneWidget);
    });

    patrolWidgetTest(
        'If participant is dnf, show status name instead of manualCorrection',
        (PatrolTester $) async {
      final item = ParticipantAtStart(
        row: row,
        riderId: 1,
        raceId: 1,
        number: number,
        participantStatusId: ParticipantStatus.active.index,
        name: name,
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: startTime,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
        statusId: ParticipantStatus.dnf.index,
      );
      await $.pumpWidgetAndSettle(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );

      expect($(number.toString()), findsOneWidget);
      expect($(startTime), findsOneWidget);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualCorrection.toString()), findsNothing);
      expect($(Localization.current.I18nCore_dnf), findsOneWidget);
    });

    patrolWidgetTest(
        'If participant is dsq, show status name instead of manualCorrection',
        (PatrolTester $) async {
      final item = ParticipantAtStart(
        row: row,
        riderId: 1,
        raceId: 1,
        number: number,
        participantStatusId: ParticipantStatus.dsq.index,
        name: name,
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: startTime,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
        statusId: ParticipantStatus.dns.index,
      );
      await $.pumpWidgetAndSettle(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );

      expect($(number.toString()), findsOneWidget);
      expect($(startTime), findsOneWidget);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualCorrection.toString()), findsNothing);
      expect($(Localization.current.I18nCore_dsq), findsOneWidget);
    });

    patrolWidgetTest('Change color if highlighted', (PatrolTester $) async {
      final item = ParticipantAtStart(
        row: row,
        riderId: 1,
        raceId: 1,
        number: number,
        participantStatusId: ParticipantStatus.active.index,
        name: name,
        startId: 1,
        stageId: 1,
        participantId: 1,
        startTime: startTime,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
        statusId: ParticipantStatus.active.index,
      );
      await $.pumpWidgetAndSettle(
        testWithLocale(
          StartItemTile(
            item: item,
            isHighlighted: true,
          ),
        ),
      );

      final context = $.tester.element(find.byType(StartItemTile));
      final color = ($.tester.firstWidget(find.byType(Card)) as Card).color;

      expect(color, Theme.of(context).colorScheme.primaryContainer);
      expect($(startTime), findsOneWidget);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualCorrection.toString()), findsOneWidget);
    });
  });
}
