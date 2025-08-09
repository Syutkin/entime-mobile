import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

void main() {
  late Race race;
  late DatabaseBloc databaseBloc;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: BlocProvider.value(
          value: databaseBloc,
          child: RaceItemTile(race: race),
        ),
      ),
    );
  }

  setUpAll(() {
    databaseBloc = MockDatabaseBloc();
  });

  group('RaceItemTile tests', () {
    patrolWidgetTest('Shows race name without dates', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(race.name), findsOneWidget);
      expect($(ListTile), findsOneWidget);
      expect($(PopupMenuButton<void>), findsOneWidget);

      // Проверяем, что subtitle это SizedBox.shrink (когда нет дат)
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<SizedBox>());
    });

    patrolWidgetTest('Shows race name with dates', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race with Dates',
        startDate: '2024-01-15',
        finishDate: '2024-01-17',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(race.name), findsOneWidget);
      expect($(ListTile), findsOneWidget);
      expect($(PopupMenuButton<void>), findsOneWidget);

      // Проверяем, что даты отображаются в подзаголовке
      final formatter = DateFormat.yMd('en');
      final expectedDateText =
          '${formatter.format(DateTime.parse(race.startDate!))} - '
          '${formatter.format(DateTime.parse(race.finishDate!))}';
      expect($(expectedDateText), findsOneWidget);
    });

    patrolWidgetTest('Tap on tile triggers selectRace event', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();

      verify(() => databaseBloc.add(DatabaseEvent.selectRace(race))).called(1);
    });

    patrolWidgetTest('PopupMenu contains all menu items', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();

      expect($(Localization.current.I18nCore_edit), findsOneWidget);
      expect($(Localization.current.I18nHome_importStagesCsv), findsOneWidget);
      expect($(Localization.current.I18nCore_delete), findsOneWidget);
      expect($(PopupMenuDivider), findsOneWidget);
      expect($(PopupMenuItem<void>), findsNWidgets(3));
    });

    patrolWidgetTest('Tap edit menu item', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_edit).tap();

      // Проверяем, что popup закрылся (меню больше не видно)
      expect($(Localization.current.I18nCore_edit), findsNothing);
    });

    patrolWidgetTest('Tap import stages menu item triggers event', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nHome_importStagesCsv).tap();

      verify(() => databaseBloc.add(DatabaseEvent.createStagesFromFile(raceId: race.id))).called(1);
    });

    patrolWidgetTest('Tap delete menu item shows confirmation dialog', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();

      // Проверяем, что появился диалог подтверждения
      expect($(Localization.current.I18nCore_warning), findsOneWidget);
      expect($(Localization.current.I18nDatabase_deleteRace(race.name)), findsOneWidget);
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Delete confirmation - cancel does not trigger delete event', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#cancelButton).tap();

      verifyNever(() => databaseBloc.add(DatabaseEvent.deleteRace(race.id)));
    });

    patrolWidgetTest('Delete confirmation - ok triggers delete event', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#okButton).tap();

      verify(() => databaseBloc.add(DatabaseEvent.deleteRace(race.id))).called(1);
    });

    patrolWidgetTest('Race with only start date shows SizedBox subtitle', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        startDate: '2024-01-15',
        // finishDate отсутствует
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(race.name), findsOneWidget);

      // Проверяем, что subtitle это SizedBox.shrink (когда даты неполные)
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<SizedBox>());
    });

    patrolWidgetTest('Race with only finish date shows SizedBox subtitle', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        // startDate отсутствует
        finishDate: '2024-01-17',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(race.name), findsOneWidget);

      // Проверяем, что subtitle это SizedBox.shrink (когда даты неполные)
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<SizedBox>());
    });

    patrolWidgetTest('PopupMenuButton has correct icon', (PatrolTester $) async {
      race = const Race(
        id: 1,
        name: 'Test Race',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      final popupMenuButton = $.tester.widget<PopupMenuButton<void>>(find.byType(PopupMenuButton<void>));
      final icon = popupMenuButton.icon! as Icon;
      expect(icon.icon, equals(Icons.more_vert));
    });
  });
}
