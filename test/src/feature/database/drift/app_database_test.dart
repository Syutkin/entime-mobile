import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/common/utils/helper.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
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
      expect(racesList.length, 2);

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
      expect(racesList.length, 3);
      expect(racesList[2].name, raceName);
      expect(racesList[2].startDate, startDate);
      expect(racesList[2].finishDate, finishDate);
      expect(racesList[2].location, location);

      await db.addRace(
        name: raceName2,
      );

      racesList = await db.getRaces().get();

      expect(racesList.length, 4);
      expect(racesList[3].name, raceName2);
      expect(racesList[3].startDate, null);
      expect(racesList[3].finishDate, null);
      expect(racesList[3].location, null);

      await db.addRace(
        name: raceName3,
      );

      racesList = await db.getRaces().get();
      expect(racesList.length, 5);
      expect(racesList[4].name, raceName3);
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

      var result = await db.deleteRace(id: 1);
      expect(result, 1);
      result = await db.deleteRace(id: 2);
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
    group('Test addStartNumber', () {
      test('Add unique start number', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
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

        var participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(participants.length, 1);
        expect(participants.first.number, number);
        expect(participants.first.startTime, startTime);
        expect(participants.first.timestamp, null);
        expect(participants.first.automaticCorrection, null);
        expect(participants.first.automaticStartTime, null);
        expect(participants.first.manualCorrection, null);
        expect(participants.first.manualStartTime, null);
      });

      test('Add existed start number', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '01:00:00';
        var number = 1;

        var result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );
        expect(result, null);

        final participantsList =
            await db.getParticipantsAtStart(stageId: stage.id!).get();
        expect(participantsList.length, 79);

        var participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(participants.length, 1);
        expect(participants.first.number, number);
        expect(participants.first.startTime, startTime);
        expect(participants.first.timestamp, null);
        expect(participants.first.automaticCorrection, null);
        expect(participants.first.automaticStartTime, null);
        expect(participants.first.manualCorrection, null);
        expect(participants.first.manualStartTime, null);
      });

      test('Add new start number with existed time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:00:00';
        var number = 100;

        var result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );

        expect(result?.length, 1);
        var participant = result?.first;

        // Стартовое время '10:00:00' у номера 2 из тестовых данных
        expect(participant?.number, 2);
        expect(participant?.startTime, startTime);

        final participantsList =
            await db.getParticipantsAtStart(stageId: stage.id!).get();
        expect(participantsList.length, 79);

        // номер не добавлен
        var participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(participants.length, 0);
      });

      test(
          'Add new start number. Number exist at participants list, '
          'but not exists at starts', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '01:00:00';
        var number = 1;

        // get participant with number
        var startInfo = (await db
                .getNumberAtStarts(
                  stageId: stage.id!,
                  number: number,
                )
                .get())
            .first;

        // delete participant with number at start
        await (db.delete(db.starts)
              ..where((start) =>
                  start.participantId.isValue(startInfo.participantId)))
            .go();

        var participantsList =
            await db.getParticipantsAtStart(stageId: stage.id!).get();
        expect(participantsList.length, 78);

        var result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );
        expect(result, null);

        participantsList =
            await db.getParticipantsAtStart(stageId: stage.id!).get();
        expect(participantsList.length, 79);

        // get participant with number
        var startInfoNew = (await db
                .getNumberAtStarts(
                  stageId: stage.id!,
                  number: number,
                )
                .get())
            .first;
        expect(startInfoNew.number, startInfo.number);
        expect(startInfoNew.startTime, startTime);
        expect(startInfoNew.category, startInfo.category);
      });
    });
    group('Test updateAutomaticCorrection', () {
      test('Add correct correction', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:15:00';
        var automaticStartTime = '10:15:01,123';
        var timeStamp = '10:15:01,001';
        var correction = 1234;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTime,
          correction: correction,
          timeStamp: strTimeToDateTime(timeStamp)!,
        );
        expect(result, null);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timeStamp);
      });

      test('Add correct correction to started participant', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:15:00';
        var automaticStartTime = '10:15:01,123';
        var automaticStartTimeNew = '10:15:05,678';
        var timeStamp = '10:15:01,001';
        var timeStampNew = '10:15:05,555';
        var correction = 1234;
        var correctionNew = 5678;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTime,
          correction: correction,
          timeStamp: strTimeToDateTime(timeStamp)!,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timeStamp: strTimeToDateTime(timeStampNew)!,
        );
        expect(result?.length, 1);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timeStamp);
      });

      test('Force update correction', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:15:00';
        var automaticStartTime = '10:15:01,123';
        var automaticStartTimeNew = '10:15:05,678';
        var timeStamp = '10:15:01,001';
        var timeStampNew = '10:15:05,555';
        var correction = 1234;
        var correctionNew = 5678;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTime,
          correction: correction,
          timeStamp: strTimeToDateTime(timeStamp)!,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timeStamp: strTimeToDateTime(timeStampNew)!,
          forceUpdate: true,
        );
        expect(result?.length, null);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTimeNew);
        expect(start.first.automaticCorrection, correctionNew);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timeStampNew);
      });

      test('Add incorrect automaticStartTime', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var automaticStartTime = '10:15-01,123';
        var timeStamp = '10:15:01,001';
        var correction = 1234;

        expect(
            () => db.updateAutomaticCorrection(
                  stageId: stage.id!,
                  time: automaticStartTime,
                  correction: correction,
                  timeStamp: strTimeToDateTime(timeStamp)!,
                ),
            throwsA(isA<FormatException>()));
      });

      test('Check delta at automatic', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:15:00';
        var automaticStartTime = '10:15:03,123';
        var timeStamp = '10:15:03,001';
        var correction = 1234;
        var delta = 1;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTime,
          correction: correction,
          timeStamp: strTimeToDateTime(timeStamp)!,
          deltaInSeconds: delta,
        );
        expect(result, null);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, null);
      });
    });

    group('Test updateManualStartTime', () {
      test('Add correct manual start time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:15:00';
        var timeStamp = '10:15:03,001';
        var correction = -3001;

        var result = await db.updateManualStartTime(
          stageId: stage.id!,
          time: strTimeToDateTime(timeStamp)!,
        );
        expect(result, 1);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, null);
        expect(start.first.manualStartTime, timeStamp);
        expect(start.first.manualCorrection, correction);
      });

      test('Participant around time does not exists', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var timeStamp = '00:15:03,001';

        var result = await db.updateManualStartTime(
          stageId: stage.id!,
          time: strTimeToDateTime(timeStamp)!,
        );
        expect(result, 0);
      });

      test('Check delta at manual', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '10:15:00';
        var timeStamp = '10:15:03,001';
        var correction = -3001;
        var delta = 1;

        var result = await db.updateManualStartTime(
          stageId: stage.id!,
          time: strTimeToDateTime(timeStamp)!,
          deltaInSeconds: delta,
        );
        expect(result, 0);

        var start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, null);
        expect(start.first.manualStartTime, null);
        expect(start.first.manualCorrection, null);

        result = await db.updateManualStartTime(
          stageId: stage.id!,
          time: strTimeToDateTime(timeStamp)!,
        );
        expect(result, 1);

        start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, null);
        expect(start.first.manualStartTime, timeStamp);
        expect(start.first.manualCorrection, correction);
      });
    });

    group('Test checkParticipantAroundStartTime', () {
      test('Check existing participant around time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '10:14:53,001';

        var result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id!,
        );
        expect(result, 1);
      });

      test('Check not existing participant around time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '19:15:03,001';

        var result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id!,
        );
        expect(result, 0);
      });

      test('Submit wrong time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '19-15-03,001';

        var result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id!,
        );
        expect(result, 0);
      });
    });

    group('Test getStartingParticipants', () {
      test('Starting participant exists after time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '10:14:53,001';

        var result = await db.getStartingParticipants(
          time: time,
          stageId: stage.id!,
        );
        expect(result.length, 1);
      });

      test('Starting participant not exists after time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '14:14:53,001';

        var result = await db.getStartingParticipants(
          time: time,
          stageId: stage.id!,
        );
        expect(result.length, 0);
      });
    });

    group('Test setStatusForStartId', () {
      test('Set DNS and start with id exists, DNS set successfully', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var number = 1;
        var participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(participants.length, 1);

        var startId = participants.first.startId!;
        var startTime = participants.first.startTime;
        var automaticStartTime = startTime.replaceAll(':00', ':01,123');
        var manualStartTime = startTime.replaceAll(':00', ':01,523');
        var timeStamp = startTime.replaceAll(':00', ':01,001');
        var automaticCorrection = -1523;

        var correctionResult = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTime,
          correction: automaticCorrection,
          timeStamp: strTimeToDateTime(timeStamp)!,
        );
        expect(correctionResult, null);

        var manualResult = await db.updateManualStartTime(
          stageId: stage.id!,
          time: strTimeToDateTime(manualStartTime)!,
        );
        expect(manualResult, 1);

        var start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id!,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, automaticCorrection);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timeStamp);
        expect(start.first.manualStartTime, manualStartTime);
        expect(start.first.manualCorrection, automaticCorrection);

        participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();

        var result = await db.setStatusForStartId(
            id: startId, status: ParticipantStatus.dns);
        expect(result, 1);

        participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();

        expect(participants.length, 1);
        expect(participants.first.startStatus, ParticipantStatus.dns.index);
        expect(participants.first.automaticStartTime, null);
        expect(participants.first.automaticCorrection, null);
        expect(participants.first.startTime, startTime);
        expect(participants.first.timestamp, null);
        expect(participants.first.manualStartTime, null);
        expect(participants.first.manualCorrection, null);
      });

      test('Set DNS but start with id does not exists', () async {
        var result =
            await db.setStatusForStartId(id: 0, status: ParticipantStatus.dns);
        expect(result, 0);
      });
    });
  });
}

Future<List<Start>> startsByStartTime({
  required AppDatabase db,
  required String startTime,
  required int stageId,
}) {
  return (db.select(db.starts)
        ..where((start) =>
            start.startTime.equals(startTime) & start.stageId.equals(stageId)))
      .get();
}
