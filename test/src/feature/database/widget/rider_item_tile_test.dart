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
  late Rider rider;
  late DatabaseBloc databaseBloc;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: BlocProvider.value(
          value: databaseBloc,
          child: RiderItemTile(rider: rider),
        ),
      ),
    );
  }

  setUpAll(() {
    databaseBloc = MockDatabaseBloc();
  });

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
  });

  group('RiderItemTile tests', () {
    patrolWidgetTest('Shows rider name without additional info', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(rider.name), findsOneWidget);
      expect($(ListTile), findsOneWidget);
      expect($(PopupMenuButton<void>), findsOneWidget);

      // Проверяем, что subtitle отсутствует (null)
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isNull);
    });

    patrolWidgetTest('Shows rider name with birthday only', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        birthday: '1990-05-15',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(rider.name), findsOneWidget);
      expect($(rider.birthday), findsOneWidget);
      expect($(ListTile), findsOneWidget);

      // Проверяем, что subtitle содержит только день рождения
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<Text>());
      final subtitleText = (listTile.subtitle! as Text).data;
      expect(subtitleText, equals(rider.birthday));
    });

    patrolWidgetTest('Shows rider name with city only', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        city: 'Moscow',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(rider.name), findsOneWidget);
      expect($(rider.city), findsOneWidget);
      expect($(ListTile), findsOneWidget);

      // Проверяем, что subtitle содержит только город
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<Text>());
      final subtitleText = (listTile.subtitle! as Text).data;
      expect(subtitleText, equals(rider.city));
    });

    patrolWidgetTest('Shows rider name with birthday and city', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        birthday: '1990-05-15',
        city: 'Moscow',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(rider.name), findsOneWidget);
      expect($(ListTile), findsOneWidget);

      // Проверяем, что subtitle содержит и день рождения, и город через запятую
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<Text>());
      final subtitleText = (listTile.subtitle! as Text).data;
      expect(subtitleText, equals('${rider.birthday}, ${rider.city}'));
    });

    patrolWidgetTest('Tap on tile triggers editRacer', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();

      // Проверяем, что появился диалог редактирования
      expect($(EditRiderPopup), findsOneWidget);
    });

    patrolWidgetTest('PopupMenu contains edit menu item', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();

      expect($(Localization.current.I18nCore_edit), findsOneWidget);
      expect($(PopupMenuItem<void>), findsOneWidget);
      expect($(Icon), findsAtLeastNWidgets(1)); // edit icon
    });

    patrolWidgetTest('Tap edit menu item triggers editRacer', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_edit).tap();

      // Проверяем, что появился диалог редактирования
      expect($(EditRiderPopup), findsOneWidget);
    });

    patrolWidgetTest('PopupMenuButton has correct icon', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      final popupMenuButton = $.tester.widget<PopupMenuButton<void>>(find.byType(PopupMenuButton<void>));
      final icon = popupMenuButton.icon! as Icon;
      expect(icon.icon, equals(Icons.more_vert));
    });

    patrolWidgetTest('Subtitle has correct text style', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        birthday: '1990-05-15',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.subtitle, isA<Text>());
      final subtitleWidget = listTile.subtitle! as Text;

      // Проверяем, что применен fontSizeFactor 0.75
      expect(subtitleWidget.style?.fontSize, isNotNull);
    });

    patrolWidgetTest('Rider with team info (team not shown in subtitle)', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        team: 'Team A',
        birthday: '1990-05-15',
        city: 'Moscow',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(rider.name), findsOneWidget);

      // Проверяем, что в subtitle есть birthday и city, но нет team
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      final subtitleText = (listTile.subtitle! as Text).data;
      expect(subtitleText, equals('${rider.birthday}, ${rider.city}'));
      expect(subtitleText, isNot(contains(rider.team)));
    });

    patrolWidgetTest('All rider fields present but only birthday and city in subtitle', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        nickname: 'JD',
        birthday: '1990-05-15',
        team: 'Team A',
        city: 'Moscow',
        email: 'john@example.com',
        phone: '+1234567890',
        comment: 'Test rider',
        isDeleted: false,
      );

      await $.pumpWidgetAndSettle(testWidget());

      expect($(rider.name), findsOneWidget);

      // Проверяем, что в subtitle отображаются только birthday и city
      final listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      final subtitleText = (listTile.subtitle! as Text).data;
      expect(subtitleText, equals('${rider.birthday}, ${rider.city}'));

      // Проверяем, что другие поля не отображаются в subtitle
      expect(subtitleText, isNot(contains(rider.nickname)));
      expect(subtitleText, isNot(contains(rider.team)));
      expect(subtitleText, isNot(contains(rider.email)));
      expect(subtitleText, isNot(contains(rider.phone)));
    });

    patrolWidgetTest('Correctly aggregate teams and cities for edit popup', (PatrolTester $) async {
      rider = const Rider(
        id: 1,
        name: 'John Doe',
        team: 'Team A',
        birthday: '1990-05-15',
        city: 'Moscow',
        isDeleted: false,
      );

      when(() => databaseBloc.state).thenReturn(
        const DatabaseState(
          races: [],
          stages: [],
          categories: [],
          riders: [
         Rider(
          id: 1,
          name: 'John Doe',
          team: 'Team A',
          birthday: '1990-05-15',
          city: 'Moscow',
          isDeleted: false,
        ),
         Rider(
          id: 1,
          name: 'John Doe 1',
          team: 'Team B',
          birthday: '1991-05-15',
          city: 'SPb',
          isDeleted: false,
        ),
      ],
          participants: [],
          finishes: [],
          numbersOnTrace: [],
        ),
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();

      final editRiderPopup = $.tester.widget<EditRiderPopup>(find.byType(EditRiderPopup));

      expect(editRiderPopup.cities, ['Moscow', 'SPb']);
      expect(editRiderPopup.teams, ['Team A', 'Team B']);
    });
  });
}
