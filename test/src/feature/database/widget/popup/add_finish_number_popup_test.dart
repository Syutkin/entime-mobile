import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState>
    implements DatabaseBloc {}

void main() {
  late DatabaseBloc databaseBloc;
  late Stage stage;
  late Finish finish;
  late int number;
  late String finishTime;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: databaseBloc,
          child: Builder(
            builder: (context) {
              return TextButton(
                onPressed: () {
                  addFinishNumberPopup(context, finish);
                },
                child: const Text(
                  'textButton',
                  key: Key('button'),
                ),
              );
            },
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
    number = 5;
    finishTime = '10:10:10';
    finish = Finish(
      id: 1,
      stageId: 1,
      timestamp: DateTime.now(),
      ntpOffset: 111,
      finishTime: finishTime,
      isHidden: false,
      isManual: false,
    );
    stage = const Stage(
      id: 1,
      raceId: 1,
      name: 'Stage name',
      isActive: true,
      isDeleted: false,
    );

    when(() => databaseBloc.state).thenReturn(
      DatabaseState(
        races: [],
        stages: [],
        categories: [],
        riders: [],
        participants: [],
        starts: [],
        finishes: [],
        numbersOnTrace: [],
        stage: stage,
      ),
    );
  });

  group(
    'addFinishNumberPopup tests',
    () {
      patrolWidgetTest(
        'Show nothing when stage is null',
        (PatrolTester $) async {
          when(() => databaseBloc.state).thenReturn(
            const DatabaseState(
              races: [],
              stages: [],
              categories: [],
              riders: [],
              participants: [],
              starts: [],
              finishes: [],
              numbersOnTrace: [],
            ),
          );

          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          expect($(Form), findsNothing);
        },
      );

      patrolWidgetTest(
        'Show dialog if stage not null',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          expect($(Form), findsOneWidget);
        },
      );

      patrolWidgetTest(
        'Enter new number and add it to finish then close dialog',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          await $(TextFormField).enterText('$number');
          await $(#okButton).tap();
          verify(
            () => databaseBloc.add(
              DatabaseEvent.addNumberToFinish(
                finishId: 1,
                number: number,
                finishTime: finishTime,
                stage: stage,
              ),
            ),
          ).called(1);
          expect($(Form), findsNothing);
        },
      );

      patrolWidgetTest(
        'Enter new number then press cancel button',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          await $(TextFormField).enterText('$number');
          await $(#cancelButton).tap();
          verifyNever(
            () => databaseBloc.add(any()),
          );
          expect($(Form), findsNothing);
        },
      );

      patrolWidgetTest(
        'Check number validator',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          // Negative
          await $(TextFormField).enterText('-1');
          expect(
            $(Localization.current.I18nProtocol_incorrectNumber),
            findsOneWidget,
          );

          // Double
          await $(TextFormField).enterText('10.0');
          expect(
            $(Localization.current.I18nProtocol_incorrectNumber),
            findsOneWidget,
          );

          // Custom string
          await $(TextFormField).enterText('aas');
          expect(
            $(Localization.current.I18nProtocol_incorrectNumber),
            findsOneWidget,
          );

          // Correct number
          await $(TextFormField).enterText('1');
          expect(
            $(Localization.current.I18nProtocol_incorrectNumber),
            findsNothing,
          );
        },
      );
    },
  );
}
