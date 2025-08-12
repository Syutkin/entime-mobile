import 'package:bloc_test/bloc_test.dart';
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

void main() {
  late DatabaseBloc databaseBloc;
  late Stage stage;

  Widget testWidget() {
    initializeDateFormatting();
    return BlocProvider.value(
      value: databaseBloc,
      child: MaterialApp(
        localizationsDelegates: const [Localization.delegate],
        supportedLocales: Localization.supportedLocales,
        home: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () {
                addRacerPopup(context: context, stage: stage);
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
      const DatabaseEvent.addStartNumber(
        stage: Stage(id: 1, raceId: 1, name: 'Test', isActive: true, isDeleted: false),
        number: 1,
        startTime: '',
      ),
    );
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    stage = const Stage(id: 1, raceId: 1, name: 'Test Stage', isActive: true, isDeleted: false);

    when(() => databaseBloc.state).thenReturn(
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
    );
  });

  group('addRacerPopup tests', () {
    patrolWidgetTest('Show dialog when button is tapped', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Form), findsOneWidget);
    });

    patrolWidgetTest('Show dialog with correct title', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Text), findsWidgets);
      // Проверяем, что заголовок содержит правильный текст
      expect($(Localization.current.I18nStart_addParticipant), findsOneWidget);
    });

    patrolWidgetTest('Show TextFormField for number input', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(TextFormField), findsOneWidget);
    });

    patrolWidgetTest('Show CupertinoTimerPicker', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(CupertinoTimerPicker), findsOneWidget);
    });

    patrolWidgetTest('Show cancel and ok buttons', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      // Проверяем наличие кнопок отмены и подтверждения
      expect($(TextButton), findsWidgets);
    });

    patrolWidgetTest('Close dialog when cancel button is pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Form), findsOneWidget);

      // Нажимаем на кнопку отмены
      await $(#cancelButton).tap();

      // Диалог должен закрыться
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Validate form when ok button is pressed with empty number', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Нажимаем OK без ввода номера
      await $(#okButton).tap();

      expect($(Form), findsOneWidget);
      expect($(Localization.current.I18nProtocol_incorrectNumber), findsOneWidget);
    });

    patrolWidgetTest('Validate form when ok button is pressed with invalid number', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим неверный номер (0)
      final textField = $(TextField);
      await textField.enterText('0');

      // Нажимаем OK
      await $(#okButton).tap();

      expect($(Form), findsOneWidget);
      expect($(Localization.current.I18nProtocol_incorrectNumber), findsOneWidget);
    });

    patrolWidgetTest('Validate form when ok button is pressed with negative number', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим отрицательный номер
      final textField = $(TextFormField);
      await textField.enterText('-1');

      // Нажимаем OK
      await $(#okButton).tap();

      expect($(Form), findsOneWidget);
      expect($(Localization.current.I18nProtocol_incorrectNumber), findsOneWidget);
    });

    patrolWidgetTest('Successfully add racer with valid number', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим валидный номер
      final textField = $(TextFormField);
      await textField.enterText('5');

      // Нажимаем OK
      await $(#okButton).tap();

      // Проверяем, что был вызван DatabaseEvent.addStartNumber
      verify(() => databaseBloc.add(any(that: isA<DatabaseEvent>()))).called(1);

      // Диалог должен закрыться
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('TextFormField has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Проверяем наличие TextFormField с правильными свойствами
      expect($(TextFormField), findsOneWidget);
      expect($(Localization.current.I18nProtocol_number), findsOneWidget);
    });

    patrolWidgetTest('CupertinoTimerPicker is present', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(CupertinoTimerPicker), findsOneWidget);
    });

    patrolWidgetTest('Dialog closes after successful form submission', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим валидный номер
      final textField = $(TextFormField);
      await textField.enterText('10');

      // Нажимаем OK
      await $(#okButton).tap();

      // Диалог должен закрыться
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('DatabaseBloc receives correct event data', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим валидный номер
      final textField = $(TextFormField);
      await textField.enterText('15');

      final cupertinoTimerPicker = $(CupertinoTimerPicker).evaluate().single.widget as CupertinoTimerPicker;
      final startTime = cupertinoTimerPicker.initialTimerDuration.toString().split('.').first.padLeft(8, '0');

      // Нажимаем OK
      await $(#okButton).tap();

      // Проверяем, что был вызван правильный event
      verify(
        () => databaseBloc.add(
          DatabaseEvent.addStartNumber(
            stage: stage,
            number: 15,
            startTime: startTime,
          ),
        ),
      ).called(1);
    });
  });
}
