import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/rider_item_tile.dart';
import 'package:entime/src/feature/database/widget/riders_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late DatabaseBloc databaseBloc;
  late Rider rider1;
  late Rider rider2;
  late Rider rider3;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: BlocProvider.value(
        value: databaseBloc,
        child: RidersListPage(),
      ),
    );
  }

  setUp(() {
    databaseBloc = MockDatabaseBloc();

    rider1 = const Rider(
      id: 1,
      name: 'John Doe',
      birthday: '1990-05-15',
      city: 'Moscow',
      isDeleted: false,
    );

    rider2 = const Rider(
      id: 2,
      name: 'Jane Smith',
      team: 'Team Alpha',
      email: 'jane@example.com',
      isDeleted: false,
    );

    rider3 = const Rider(
      id: 3,
      name: 'Bob Johnson',
      nickname: 'Bobby',
      phone: '+1234567890',
      isDeleted: false,
    );

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

  group('RidersListPage tests', () {
    patrolWidgetTest('Initial page, no riders', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());

      expect($(AppBar).$(Localization.current.I18nInit_riders), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(RiderItemTile), findsNothing);
      expect($(ListView), findsOneWidget);
    });

    patrolWidgetTest('Page with one rider', (PatrolTester $) async {
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [],
          stages: [],
          categories: [],
          riders: [rider1],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(AppBar).$(Localization.current.I18nInit_riders), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(RiderItemTile), findsOneWidget);
      expect($(rider1.name), findsOneWidget);
    });

    patrolWidgetTest('Page with multiple riders', (PatrolTester $) async {
      when(() => databaseBloc.state).thenReturn(
        DatabaseState(
          races: [],
          stages: [],
          categories: [],
          riders: [rider1, rider2, rider3],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(AppBar).$(Localization.current.I18nInit_riders), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(RiderItemTile), findsNWidgets(3));
      expect($(rider1.name), findsOneWidget);
      expect($(rider2.name), findsOneWidget);
      expect($(rider3.name), findsOneWidget);
    });

    patrolWidgetTest('FloatingActionButton is present and tappable', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());

      final fab = $(FloatingActionButton);
      expect(fab, findsOneWidget);

      // Проверяем, что кнопка содержит иконку добавления
      expect($(Icons.add), findsOneWidget);

      // Проверяем, что кнопка кликабельна (хотя функционал пока не реализован)
      await fab.tap();
    });

    patrolWidgetTest('Scrollbar is present', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());

      expect($(Scrollbar), findsOneWidget);
    });

    patrolWidgetTest('ListView has correct controller', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());

      final listView = $.tester.widget<ListView>(find.byType(ListView));
      expect(listView.controller, isNotNull);
    });

    patrolWidgetTest('Riders with different data combinations', (PatrolTester $) async {
      const riderWithAllData = Rider(
        id: 4,
        name: 'Full Rider',
        nickname: 'Nick',
        birthday: '1985-12-25',
        team: 'Team Beta',
        city: 'St. Petersburg',
        email: 'full@example.com',
        phone: '+9876543210',
        comment: 'Test comment',
        isDeleted: false,
      );

      when(() => databaseBloc.state).thenReturn(
        const DatabaseState(
          races: [],
          stages: [],
          categories: [],
          riders: [riderWithAllData],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(riderWithAllData.name), findsOneWidget);
      expect($(RiderItemTile), findsOneWidget);
    });

    patrolWidgetTest('Empty state shows no riders but maintains structure', (PatrolTester $) async {
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

      await $.pumpWidgetAndSettle(testWidget());

      expect($(AppBar), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(ListView), findsOneWidget);
      expect($(RiderItemTile), findsNothing);
    });
  });
}
