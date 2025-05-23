import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/constants/date_time_formats.dart';
import 'package:entime/src/feature/database/database.dart';
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

  late int id;
  late int number;
  late String name;
  late String category;
  late String nickname;
  late String city;
  late String team;
  late String birthday;

  late String startTime;
  late DateTime timestamp;
  late int timestampCorrection;
  late String automaticStartTime;
  late int automaticCorrection;
  late String manualStartTime;
  late int manualCorrection;

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
                  editStartTime(context, item);
                },
                child: const Text('textButton', key: Key('button')),
              );
            },
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const DatabaseEvent.updateStartingInfo(stageId: 1, participantId: 1, startTime: ''));
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();

    id = 1;
    number = 1;
    name = 'name';
    category = 'category';
    nickname = 'nickname';
    city = 'city';
    team = 'team';
    birthday = 'birthday';

    startTime = '10:10:10,111';
    timestamp = DateTime(2000, 1, 1, 12, 24, 36, 789);
    timestampCorrection = 1234;
    automaticStartTime = '10:10:10,333';
    automaticCorrection = 2345;
    manualStartTime = '10:10:10,555';
    manualCorrection = 3456;

    item = ParticipantAtStart(
      row: MockQueryRow(),
      stageId: id,
      riderId: id,
      raceId: id,
      startId: id,
      participantId: id,
      participantStatusId: ParticipantStatus.active.index,
      statusId: ParticipantStatus.active.index,
      ntpOffset: id,

      number: number,
      name: name,
      category: category,
      nickname: nickname,
      city: city,
      team: team,
      birthday: birthday,

      startTime: startTime,
      timestamp: timestamp,
      timestampCorrection: timestampCorrection,
      automaticStartTime: automaticStartTime,
      automaticCorrection: automaticCorrection,
      manualStartTime: manualStartTime,
      manualCorrection: manualCorrection,
    );
  });

  group('editStartTime tests', () {
    patrolWidgetTest('Initial showDialog popup', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Form), findsOneWidget);
    });

    patrolWidgetTest('Correct populate showDialog with existing data', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nStart_participantNumber(item.number)), findsNothing);
      expect($(Localization.current.I18nStart_participantNumberWithName(item.number, item.name)), findsOneWidget);
      expect($(Localization.current.I18nStart_participantCategory(item.category!)), findsOneWidget);
      expect($(Localization.current.I18nStart_participantNickname(item.nickname!)), findsOneWidget);
      expect($(Localization.current.I18nStart_participantCity(item.city!)), findsOneWidget);
      expect($(Localization.current.I18nStart_participantTeam(item.team!)), findsOneWidget);
      expect($(Localization.current.I18nStart_participantYear(item.birthday!)), findsOneWidget);
    });

    patrolWidgetTest('Show only number if name is absent', (PatrolTester $) async {
       item = ParticipantAtStart(
        row: MockQueryRow(),
        stageId: id,
        riderId: id,
        raceId: id,
        startId: id,
        participantId: id,
        participantStatusId: ParticipantStatus.active.index,
        statusId: ParticipantStatus.active.index,
        ntpOffset: id,

        number: number,
        name: '',
        category: category,
        nickname: nickname,
        city: city,
        team: team,
        birthday: birthday,

        startTime: startTime,
        timestamp: timestamp,
        timestampCorrection: timestampCorrection,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
      );
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nStart_participantNumber(item.number)), findsOneWidget);
      expect($(Localization.current.I18nStart_participantNumberWithName(item.number, item.name)), findsNothing);
    });

    patrolWidgetTest('Do not show some Text fields if data is absent', (PatrolTester $) async {
      item = ParticipantAtStart(
        row: MockQueryRow(),
        stageId: id,
        riderId: id,
        raceId: id,
        startId: id,
        participantId: id,
        participantStatusId: ParticipantStatus.active.index,
        statusId: ParticipantStatus.active.index,
        ntpOffset: id,

        number: number,
        name: name,
        category: '',
        nickname: '',
        city: '',
        team: '',
        birthday: '',

        startTime: startTime,
        timestamp: timestamp,
        timestampCorrection: timestampCorrection,
        automaticStartTime: automaticStartTime,
        automaticCorrection: automaticCorrection,
        manualStartTime: manualStartTime,
        manualCorrection: manualCorrection,
      );

      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nStart_participantCategory(item.category!)), findsNothing);
      expect($(Localization.current.I18nStart_participantNickname(item.nickname!)), findsNothing);
      expect($(Localization.current.I18nStart_participantCity(item.city!)), findsNothing);
      expect($(Localization.current.I18nStart_participantTeam(item.team!)), findsNothing);
      expect($(Localization.current.I18nStart_participantYear(item.birthday!)), findsNothing);
    });

    patrolWidgetTest('Correct show TextFormFields', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(TextFormField), findsNWidgets(7));
      expect($(Localization.current.I18nStart_startTime), findsNWidgets(3));
      expect($(Localization.current.I18nStart_startTimestamp), findsOneWidget);
      expect($(Localization.current.I18nCore_correction), findsNWidgets(3));
    });

    patrolWidgetTest('Correct populate TextFormFields with existing data', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(startTime), findsOneWidget);
      expect($(timestamp.format(longTimeFormat)), findsOneWidget);
      expect($(timestampCorrection.toString()), findsOneWidget);
      expect($(automaticStartTime), findsOneWidget);
      expect($(automaticCorrection.toString()), findsOneWidget);
      expect($(manualStartTime), findsOneWidget);
      expect($(manualCorrection.toString()), findsOneWidget);
    });

    patrolWidgetTest('Validators is set to start times', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextFormField).containing(Localization.current.I18nStart_startTime).at(0).enterText('A');
      await $(TextFormField).containing(Localization.current.I18nStart_startTime).at(1).enterText('A');
      await $(TextFormField).containing(Localization.current.I18nStart_startTime).at(2).scrollTo().enterText('A');
      expect($(Localization.current.I18nStart_incorrectTime), findsNWidgets(3));
    });

    patrolWidgetTest('Validators is set to corrections', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextFormField).containing(Localization.current.I18nCore_correction).at(1).enterText('A');
      await $(TextFormField).containing(Localization.current.I18nCore_correction).at(2).scrollTo().enterText('A');
      expect($(Localization.current.I18nStart_incorrectCorrection), findsNWidgets(2));
    });

    patrolWidgetTest('Press cancel', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      await $(#cancelButton).tap();
      verifyNever(() => databaseBloc.add(any()));
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      await $(#okButton).tap();
      verify(
        () => databaseBloc.add(
          DatabaseEvent.updateStartingInfo(
            startTime: startTime,
            automaticStartTime: automaticStartTime,
            automaticCorrection: automaticCorrection,
            manualStartTime: manualStartTime,
            manualCorrection: manualCorrection,
            stageId: item.stageId,
            participantId: item.participantId,
          ),
        ),
      ).called(1);
      expect($(Form), findsNothing);
    });

    patrolWidgetTest('Press OK checks validation', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();
      await $(TextFormField).containing(Localization.current.I18nStart_startTime).at(0).enterText('A');
      await $(#okButton).tap();
      verifyNever(() => databaseBloc.add(any()));
      expect($(Form), findsOneWidget);
    });
  });
}
