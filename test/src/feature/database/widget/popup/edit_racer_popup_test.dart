import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/popup/edit_racer_popup.dart';
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
  late ParticipantAtStart participantAtStart;
  late List<Rider> riders;
  late List<String?> categories;

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
    return BlocProvider.value(
      value: databaseBloc,
      child: MaterialApp(
        localizationsDelegates: const [Localization.delegate],
        supportedLocales: Localization.supportedLocales,
        home: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                await editRacerPopup(
                  context: context,
                  participantAtStart: participantAtStart,
                  riders: riders,
                  categories: categories,
                );
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(
      const DatabaseEvent.updateRacer(
        riderId: 1,
        participantId: 1,
        category: 'Test Category',
        name: 'Test Rider',
        nickname: 'Test Nickname',
      ),
    );
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();

    participantAtStart = ParticipantAtStart(
      row: MockQueryRow(),
      riderId: 1,
      raceId: 1,
      number: 1,
      category: 'Test Category',
      participantStatusId: ParticipantStatus.active.index,
      name: 'Test Rider',
      nickname: 'Test Nickname',
      birthday: '1990-01-01',
      team: 'Test Team',
      city: 'Test City',
      email: 'test@example.com',
      phone: '+1234567890',
      comment: 'Test Comment',
      startId: 1,
      stageId: 1,
      participantId: 1,
      startTime: '10:00:00',
      statusId: ParticipantStatus.active.index,
    );

    riders = [
      const Rider(id: 1, name: 'Test Rider', isDeleted: false, team: 'Team 1', city: 'City 1'),
      const Rider(id: 2, name: 'Another Rider', isDeleted: false, team: 'Team 2', city: 'City 2'),
      const Rider(id: 3, name: 'Rider 3', isDeleted: false, team: 'Team 2', city: 'City 2'),
      const Rider(id: 4, name: 'Rider 4', isDeleted: false),
    ];

    categories = ['Test Category', 'Another Category'];

    when(() => databaseBloc.state).thenReturn(
      DatabaseState(
        races: [],
        stages: [],
        categories: categories,
        riders: riders,
        participants: [],
        finishes: [],
        numbersOnTrace: [],
        stage: const Stage(id: 1, raceId: 1, name: 'Test Stage', isActive: true, isDeleted: false),
      ),
    );
  });

  group('editRacerPopup tests', () {
    patrolWidgetTest('Show dialog when button is tapped', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Form), findsOneWidget);
    });

    patrolWidgetTest('Show dialog with correct title', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Text), findsWidgets);
      // Проверяем, что заголовок содержит номер и имя участника
      expect($('№1, Test Rider'), findsOneWidget);
    });

    patrolWidgetTest('Show category dropdown', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_category), findsOneWidget);
    });

    patrolWidgetTest('Show rider dropdown', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_name), findsOneWidget);
    });

    patrolWidgetTest('Show nickname field', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_nickname), findsOneWidget);
    });

    patrolWidgetTest('Show birthday field', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_birthday), findsOneWidget);
    });

    patrolWidgetTest('Show team dropdown', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_team), findsOneWidget);
    });

    patrolWidgetTest('Show city dropdown', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_city), findsOneWidget);
    });

    patrolWidgetTest('Show email field', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_email), findsOneWidget);
    });

    patrolWidgetTest('Show phone field', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_phone), findsOneWidget);
    });

    patrolWidgetTest('Show comment field', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nDatabase_comment), findsOneWidget);
    });

    patrolWidgetTest('Show cancel and ok buttons', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Validate email with correct format', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Находим поле email и вводим правильный email
      final emailField = $(TextFormField).containing(Localization.current.I18nDatabase_email);
      await emailField.enterText('test@example.com');

      // Нажимаем OK для запуска валидации
      await $(#okButton).tap();

      // Проверяем, что ошибка валидации email не появилась
      expect($(Localization.current.I18nStart_incorrectEmail), findsNothing);
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Validate email with incorrect format', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Находим поле email и вводим неправильный email
      final emailField = $(TextFormField).containing(Localization.current.I18nDatabase_email);
      await emailField.enterText('invalid-email');

      // Нажимаем OK для запуска валидации
      await $(#okButton).tap();

      // Проверяем, что появилась ошибка валидации email
      expect($(Localization.current.I18nStart_incorrectEmail), findsOneWidget);
      expect($(Form), findsOneWidget);
    });

    patrolWidgetTest('Validate nickname with correct format', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Находим поле nickname и вводим правильный никнейм
      final nicknameField = $(TextFormField).containing(Localization.current.I18nDatabase_nickname);
      await nicknameField.enterText('TestNick123');

      // Нажимаем OK для запуска валидации
      await $(#okButton).tap();

      // Проверяем, что ошибка валидации никнейма не появилась
      expect($(Localization.current.I18nStart_incorrectNickname), findsNothing);
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Validate nickname with incorrect format', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Находим поле nickname и вводим неправильный никнейм с запрещенными символами
      final nicknameField = $(TextFormField).containing(Localization.current.I18nDatabase_nickname);
      await nicknameField.enterText('Test@Nick!');

      // Нажимаем OK для запуска валидации
      await $(#okButton).tap();

      // Проверяем, что появилась ошибка валидации никнейма
      expect($(Localization.current.I18nStart_incorrectNickname), findsOneWidget);
      expect($(Form), findsOneWidget);
    });

    patrolWidgetTest('Validate birthday with correct format', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Находим поле birthday и вводим правильную дату рождения
      final birthdayField = $(TextFormField).containing(Localization.current.I18nDatabase_birthday);
      await birthdayField.enterText('1990-01-15');

      // Нажимаем OK для запуска валидации
      await $(#okButton).tap();

      // Проверяем, что ошибка валидации дня рождения не появилась
      expect($(Localization.current.I18nStart_incorrectBirthday), findsNothing);
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Validate birthday with incorrect format', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Находим поле birthday и вводим неправильную дату рождения
      final birthdayField = $(TextFormField).containing(Localization.current.I18nDatabase_birthday);
      await birthdayField.enterText('invalid-date');

      // Нажимаем OK для запуска валидации
      await $(#okButton).tap();

      // Проверяем, что появилась ошибка валидации дня рождения
      expect($(Localization.current.I18nStart_incorrectBirthday), findsOneWidget);
      expect($(Form), findsOneWidget);
    });

    patrolWidgetTest('Form saves successfully with valid data', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Нажимаем OK для сохранения (все данные уже валидные)
      await $(#okButton).tap();

      // Проверяем, что был вызван DatabaseEvent.updateRacer
      verify(() => databaseBloc.add(any(that: isA<DatabaseEvent>()))).called(1);

      // Проверяем, что диалог закрылся
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Dialog closes when cancel button is pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Нажимаем кнопку отмены
      await $(#cancelButton).tap();

      verifyNever(() => databaseBloc.add(any(that: isA<DatabaseEvent>())));
      expect($(Form), findsNothing);
    });
  });
}
