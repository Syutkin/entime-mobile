import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:flutter_test/flutter_test.dart';

import 'raw_queries.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late AppDatabase db;

  setUp(() {
    db = AppDatabase.forTesting(DatabaseConnection(NativeDatabase.memory()));

    for (var query in PopDB().queries) {
      db.customInsert(query);
    }
  });

  tearDown(() async {
    await db.close();
  });

  group('AppDatabase:', () {
    test('Check initial state', () async {
      final racesList = await db.getRaces().get();
      expect(racesList.length, 1);

      final stagesList = await db.getStages(raceId: 1).get();
      expect(stagesList.length, 4);

      final participantsList =
          await db.getParticipantsAtStart(stageId: 1).get();
      expect(participantsList.length, 79);
    });

    test('Add race', () async {
      const raceName = 'race1';
      const startDate = '01-01-2020';
      const finishDate = '02-01-2020';
      const location = 'location';
      const raceName2 = 'race2';
      const raceName3 = 'race3';

      await db.addRace(
        name: raceName,
        startDate: startDate,
        finishDate: finishDate,
        location: location,
      );

      List<Race> racesList = await db.getRaces().get();
      expect(racesList.length, 2);
      expect(racesList[1].name, raceName);
      expect(racesList[1].startDate, startDate);
      expect(racesList[1].finishDate, finishDate);
      expect(racesList[1].location, location);

      await db.addRace(
        name: raceName2,
      );

      racesList = await db.getRaces().get();

      expect(racesList.length, 3);
      expect(racesList[2].name, raceName2);
      expect(racesList[2].startDate, null);
      expect(racesList[2].finishDate, null);
      expect(racesList[2].location, null);

      await db.addRace(
        name: raceName3,
      );

      racesList = await db.getRaces().get();
      expect(racesList.length, 4);
      expect(racesList[3].name, raceName3);
    });

    test('Delete race', () async {
      const raceName = 'race1';
      const startDate = '01-01-2020';
      const finishDate = '02-01-2020';
      const location = 'location';

      await db.addRace(
        name: raceName,
        startDate: startDate,
        finishDate: finishDate,
        location: location,
      );

      final result = await db.deleteRace(id: 1);
      expect(result, 1);

      final racesList = await db.getRaces().get();
      expect(racesList.first.name, raceName);
      expect(racesList.length, 1);
    });

    test('Add stage', () async {
      const stageName = 'stage1';

      await db.addStage(
        name: stageName,
        raceId: 1,
      );

      final stagesList = await db.getStages(raceId: 1).get();
      expect(stagesList[4].name, stageName);
      expect(stagesList.length, 5);
    });

    test('Delete stage', () async {
      const stageName = 'stage1';

      await db.addStage(
        name: stageName,
        raceId: 1,
      );

      var stagesList = await db.getStages(raceId: 1).get();
      expect(stagesList.length, 5);
      expect(stagesList[4].name, stageName);

      await db.deleteStage(id: 1);
      stagesList = await db.getStages(raceId: 1).get();
      expect(stagesList.length, 4);
      expect(stagesList[3].name, stageName);
    });

    test('Add unique start number', () async {
      var stages = await db.getStages(raceId: 1).get();
      var stage = stages.first;
      var startTime = '01:00:00';
      var number = 100;

      var result = await db.addStartNumber(
        number: number,
        stage: stage,
        startTime: startTime,
      );
      expect(result, null);

      final participantsList =
          await db.getParticipantsAtStart(stageId: stage.id!).get();
      expect(participantsList.length, 80);

      var participants =
          await db.getNumberAtStarts(stageId: stage.id!, number: number).get();
      expect(participants.length, 1);
      expect(participants.first.number, number);
      expect(participants.first.startTime, startTime);
      expect(participants.first.timestamp, null);
      expect(participants.first.automaticCorrection, null);
      expect(participants.first.automaticStartTime, null);
      expect(participants.first.manualCorrection, null);
      expect(participants.first.manualStartTime, null);
    });
  });
}
