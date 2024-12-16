import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

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
    setUpAll(() {
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

    testWidgets('Show all basic info', (WidgetTester tester) async {
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
      await tester.pumpWidget(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text(number.toString()), findsOneWidget);
      expect(find.text(startTime), findsOneWidget);
      expect(find.text(automaticCorrection.toString()), findsOneWidget);
      expect(find.text(manualCorrection.toString()), findsOneWidget);
    });

    testWidgets('If countdown presents, show it instead of startTime',
        (WidgetTester tester) async {
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
      await tester.pumpWidget(
        testWithLocale(
          StartItemTile(
            item: item,
            countdown: countdown,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text(number.toString()), findsOneWidget);
      expect(find.text(startTime), findsNothing);
      expect(find.text(automaticCorrection.toString()), findsOneWidget);
      expect(find.text(manualCorrection.toString()), findsOneWidget);
      expect(find.text(countdown), findsOneWidget);
    });

    testWidgets(
        'If participant is dns, show status name instead of manualCorrection',
        (WidgetTester tester) async {
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
      await tester.pumpWidget(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text(number.toString()), findsOneWidget);
      expect(find.text(startTime), findsOneWidget);
      expect(find.text(automaticCorrection.toString()), findsOneWidget);
      expect(find.text(manualCorrection.toString()), findsNothing);
      expect(find.text(Localization.current.I18nCore_dns), findsOneWidget);
    });

    testWidgets(
        'If participant is dnf, show status name instead of manualCorrection',
        (WidgetTester tester) async {
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
      await tester.pumpWidget(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text(number.toString()), findsOneWidget);
      expect(find.text(startTime), findsOneWidget);
      expect(find.text(automaticCorrection.toString()), findsOneWidget);
      expect(find.text(manualCorrection.toString()), findsNothing);
      expect(find.text(Localization.current.I18nCore_dnf), findsOneWidget);
    });

    testWidgets(
        'If participant is dsq, show status name instead of manualCorrection',
        (WidgetTester tester) async {
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
      await tester.pumpWidget(
        testWithLocale(
          StartItemTile(
            item: item,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text(number.toString()), findsOneWidget);
      expect(find.text(startTime), findsOneWidget);
      expect(find.text(automaticCorrection.toString()), findsOneWidget);
      expect(find.text(manualCorrection.toString()), findsNothing);
      expect(find.text(Localization.current.I18nCore_dsq), findsOneWidget);
    });

    testWidgets('Change color if highlighted', (WidgetTester tester) async {
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
      await tester.pumpWidget(
        testWithLocale(
          StartItemTile(
            item: item,
            isHighlighted: true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      final context = tester.element(find.byType(StartItemTile));
      final color = (tester.firstWidget(find.byType(Card)) as Card).color;

      expect(color, Theme.of(context).colorScheme.primaryContainer);
      expect(find.text(startTime), findsOneWidget);
      expect(find.text(automaticCorrection.toString()), findsOneWidget);
      expect(find.text(manualCorrection.toString()), findsOneWidget);
    });
  });
}
