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
  int deltaInSeconds = 15;

  setUp(() {
    db = AppDatabase.forTesting(DatabaseConnection(NativeDatabase.memory()));

    // populate DB
    for (var query in PopDB().queries) {
      db.customInsert(query);
    }
  });

  tearDown(() async {
    await db.close();
  });

  group('Tests for AppDatabase', () {
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

    group('Test setStartingInfo', () {
      test('All field filled for starting info', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '11:11:11';
        var manualStartTime = '11:11:11';
        var automaticStartTime = '11:11:11';
        var manualCorrection = 1234;
        var automaticCorrection = -4331;
        var number = 2;
        var participant = (await db
                .getNumberAtStarts(stageId: stage.id!, number: number)
                .get())
            .first;
        var participantId = participant.participantId;

        var rowsUpdated = await db.setStartingInfo(
          startTime: startTime,
          stageId: stage.id!,
          participantId: participantId,
          manualStartTime: manualStartTime,
          manualCorrection: manualCorrection,
          automaticStartTime: automaticStartTime,
          automaticCorrection: automaticCorrection,
        );
        expect(rowsUpdated, 1);

        participant = (await db
                .getNumberAtStarts(stageId: stage.id!, number: number)
                .get())
            .first;
        expect(participant.number, number);
        expect(participant.participantId, participantId);
        expect(participant.startTime, startTime);
        expect(participant.manualStartTime, manualStartTime);
        expect(participant.manualCorrection, manualCorrection);
        expect(participant.automaticStartTime, automaticStartTime);
        expect(participant.automaticCorrection, automaticCorrection);
      });

      test('Only required fields for starting info', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var startTime = '11:11:11';
        var manualStartTime = '11:11:11';
        var automaticStartTime = '11:11:11';
        var manualCorrection = 1234;
        var automaticCorrection = -4331;
        var number = 2;
        var participant = (await db
                .getNumberAtStarts(stageId: stage.id!, number: number)
                .get())
            .first;
        var participantId = participant.participantId;

        var rowsUpdated = await db.setStartingInfo(
          startTime: startTime,
          stageId: stage.id!,
          participantId: participantId,
          manualStartTime: manualStartTime,
          manualCorrection: manualCorrection,
          automaticStartTime: automaticStartTime,
          automaticCorrection: automaticCorrection,
        );
        expect(rowsUpdated, 1);

        rowsUpdated = await db.setStartingInfo(
          startTime: startTime,
          stageId: stage.id!,
          participantId: participantId,
        );
        expect(rowsUpdated, 1);

        participant = (await db
                .getNumberAtStarts(stageId: stage.id!, number: number)
                .get())
            .first;
        expect(participant.number, number);
        expect(participant.participantId, participantId);
        expect(participant.startTime, startTime);
        expect(participant.manualStartTime, null);
        expect(participant.manualCorrection, null);
        expect(participant.automaticStartTime, null);
        expect(participant.automaticCorrection, null);
      });
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
          timeStamp: timeStamp.toDateTime()!,
          deltaInSeconds: deltaInSeconds,
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
          timeStamp: timeStamp.toDateTime()!,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timeStamp: timeStampNew.toDateTime()!,
          deltaInSeconds: deltaInSeconds,
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
          timeStamp: timeStamp.toDateTime()!,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id!,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timeStamp: timeStampNew.toDateTime()!,
          forceUpdate: true,
          deltaInSeconds: deltaInSeconds,
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
                  timeStamp: timeStamp.toDateTime()!,
                  deltaInSeconds: deltaInSeconds,
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
          timeStamp: timeStamp.toDateTime()!,
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
          time: timeStamp.toDateTime()!,
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
          time: timeStamp.toDateTime()!,
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
          time: timeStamp.toDateTime()!,
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
          time: timeStamp.toDateTime()!,
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

    group('Test getNextStartingParticipants', () {
      test('Next starting participants exists', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '09:59:53,001';

        var result = await db
            .getNextStartingParticipants(
              stageId: stage.id!,
              time: time,
            )
            .get();
        expect(result.length, 79);
        expect(result.first.number, 2);
      });

      test('Next starting participant does not exists', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var time = '23:14:53,001';

        var result = await db
            .getNextStartingParticipants(
              stageId: stage.id!,
              time: time,
            )
            .get();
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
          timeStamp: timeStamp.toDateTime()!,
          deltaInSeconds: deltaInSeconds,
        );
        expect(correctionResult, null);

        var manualResult = await db.updateManualStartTime(
          stageId: stage.id!,
          time: manualStartTime.toDateTime()!,
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
            startId: startId, status: ParticipantStatus.dns);
        expect(result, 1);

        participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();

        expect(participants.length, 1);
        expect(participants.first.startStatusId, ParticipantStatus.dns.index);
        expect(participants.first.automaticStartTime, null);
        expect(participants.first.automaticCorrection, null);
        expect(participants.first.startTime, startTime);
        expect(participants.first.timestamp, null);
        expect(participants.first.manualStartTime, null);
        expect(participants.first.manualCorrection, null);
      });

      test('Set DNS but start with id does not exists', () async {
        var result = await db.setStatusForStartId(
            startId: 0, status: ParticipantStatus.dns);
        expect(result, 0);
      });
    });

    group('Test addNumberToFinish', () {
      test('Correct adding number', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finishTime = '10:05:23,123';
        var timeStamp = '10:05:23,456';
        var number = 2;

        var startInfo = (await db
                .getNumberAtStarts(stageId: stage.id!, number: number)
                .get())
            .first;
        expect(startInfo.finishId, null);

        await db.addFinishTime(
            stage: stage,
            finish: finishTime,
            timeStamp: timeStamp.toDateTime()!);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 1);
        var finishId = finishes.first.id!;

        var result = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId,
          number: number,
          finishTime: finishTime,
        );
        expect(result, true);

        finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.first.number, number);

        startInfo = (await db
                .getNumberAtStarts(stageId: stage.id!, number: number)
                .get())
            .first;
        expect(startInfo.finishId, 1);
      });

      test('Number already exists at finishes', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finishTime = '10:05:23,123';
        var timeStamp = '10:05:23,456';
        var number = 2;

        await db.addFinishTime(
            stage: stage,
            finish: finishTime,
            timeStamp: timeStamp.toDateTime()!);

        await db.addFinishTime(
            stage: stage,
            finish: finishTime,
            timeStamp: timeStamp.toDateTime()!);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 2);
        var finishId1 = finishes.first.id!;
        var finishId2 = finishes.last.id!;

        var result1 = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId1,
          number: number,
          finishTime: finishTime,
        );
        expect(result1, true);

        var result2 = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId2,
          number: number,
          finishTime: finishTime,
        );
        expect(result2, false);
      });

      test('Add not existing number to finish', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finishTime = '10:05:23,123';
        var timeStamp = '10:05:23,456';
        var number = 999;

        var startInfo = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(startInfo.isEmpty, true);

        await db.addFinishTime(
            stage: stage,
            finish: finishTime,
            timeStamp: timeStamp.toDateTime()!);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 1);
        var finishId = finishes.first.id!;

        var result = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId,
          number: number,
          finishTime: finishTime,
        );
        expect(result, true);

        finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.first.number, number);

        // startInfo = (await db
        //         .getNumberAtStarts(stageId: stage.id!, number: number)
        //         .get())
        //     .first;
        // expect(startInfo.finishId, 1);
      });
    });

    group('Test getNumbersOnTraceNow', () {
      test('No numbers on trace', () async {
        var stageId = (await db.getStages(raceId: 1).get()).first.id!;
        var dateTimeNow = '09:00:00.111'.toDateTime()!;
        var result = await db
            .getNumbersOnTraceNow(
              stageId: stageId,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 0);
      });
      test('One number on trace', () async {
        var stageId = (await db.getStages(raceId: 1).get()).first.id!;
        var dateTimeNow = '10:00:01.111'.toDateTime()!;
        var result = await db
            .getNumbersOnTraceNow(
              stageId: stageId,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 1);
        expect(result.first.number, 2);
      });
      test('All numbers on trace', () async {
        var stageId = (await db.getStages(raceId: 1).get()).first.id!;
        var dateTimeNow = '23:00:01.111'.toDateTime()!;
        var result = await db
            .getNumbersOnTraceNow(
              stageId: stageId,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 79);
        expect(result.first.number, 2);
        expect(result.last.number, 73);
      });
      test('One number finished, two on trace', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var dateTimeNow = '10:02:01.111'.toDateTime()!;
        var finishTime = '10:01:23,123';
        var timeStamp = '10:01:23,456';
        var number = 2;
        var number2 = 7;

        var result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id!,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 3);
        expect(result.first.number, 2);

        await db.addFinishTime(
            stage: stage,
            finish: finishTime,
            timeStamp: timeStamp.toDateTime()!);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 1);
        var finishId = finishes.first.id!;

        await db.addNumberToFinish(
          stage: stage,
          finishId: finishId,
          number: number,
          finishTime: finishTime,
        );

        result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id!,
              dateTimeNow: dateTimeNow,
            )
            .get();
        expect(result.length, 2);
        expect(result.first.number, number2);
      });
      test('One number dns, two on trace', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var dateTimeNow = '10:02:01.111'.toDateTime()!;
        var number = 2;
        var number2 = 7;

        var result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id!,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 3);
        expect(result.first.number, 2);

        var participants = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(participants.length, 1);
        var startId = participants.first.startId!;

        var resultStatus = await db.setStatusForStartId(
            startId: startId, status: ParticipantStatus.dns);
        expect(resultStatus, 1);

        result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id!,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 2);
        expect(result.first.number, number2);
      });
    });

    group('Test hideFinish', () {
      test('Finish hided successfully', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish = '10:05:23,123';
        var timeStamp = '10:05:23,456';

        await db.addFinishTime(
            stage: stage, finish: finish, timeStamp: timeStamp.toDateTime()!);

        await db.addFinishTime(
            stage: stage, finish: finish, timeStamp: timeStamp.toDateTime()!);

        var result = await db
            .getFinishesFromStage(
              stageId: stage.id!,
              hideMarked: false,
            )
            .get();
        expect(result[0].isHidden, false);
        expect(result[1].isHidden, false);

        var count = await db.hideFinish(result[0].id!);
        expect(count, 1);

        result = await db
            .getFinishesFromStage(
              stageId: stage.id!,
              hideMarked: false,
            )
            .get();
        expect(result[0].isHidden, true);
        expect(result[1].isHidden, false);

        count = await db.hideFinish(result[1].id!);
        result = await db
            .getFinishesFromStage(
              stageId: stage.id!,
              hideMarked: false,
            )
            .get();
        expect(result[0].isHidden, true);
        expect(result[1].isHidden, true);
      });
    });

    group('Test hideAllFinish', () {
      test('Finishes hided successfully', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish = '10:05:23,123';
        var timeStamp = '10:05:23,456';

        await db.addFinishTime(
            stage: stage, finish: finish, timeStamp: timeStamp.toDateTime()!);

        var result = await db.hideAllFinishes(stage.id!);
        expect(result, 1);

        await db.addFinishTime(
            stage: stage, finish: finish, timeStamp: timeStamp.toDateTime()!);

        result = await db.hideAllFinishes(stage.id!);
        expect(result, 2);

        await db.addFinishTime(
            stage: stage, finish: finish, timeStamp: timeStamp.toDateTime()!);

        result = await db.hideAllFinishes(stage.id!);
        expect(result, 3);

        var finishes = await db
            .getFinishesFromStage(
              stageId: stage.id!,
              hideMarked: false,
            )
            .get();
        expect(finishes.length, 3);
        expect(finishes[0].isHidden, true);
        expect(finishes[1].isHidden, true);
        expect(finishes[2].isHidden, true);
      });
    });

    group('Test addFinishTime', () {
      test('New automatic finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish = '10:05:23,123';
        var timeStamp = '10:05:23,456';

        var result = await db.addFinishTime(
            stage: stage, finish: finish, timeStamp: timeStamp.toDateTime()!);

        expect(result, null);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 1);
        expect(finishes.first.stageId, stage.id);
        expect(finishes.first.number, null);
        expect(finishes.first.finishTime, finish);
        expect(finishes.first.timestamp, timeStamp);
        expect(finishes.first.isHidden, false);
        expect(finishes.first.isManual, false);
      });

      test('Second automatic finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var finish2 = '10:05:23,129';
        var timeStamp1 = '10:05:23,456';
        var timeStamp2 = '10:05:23,459';

        await db.addFinishTime(
            stage: stage, finish: finish1, timeStamp: timeStamp1.toDateTime()!);

        await db.addFinishTime(
            stage: stage, finish: finish2, timeStamp: timeStamp2.toDateTime()!);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 2);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      test('Automatic add number to first finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var timeStamp1 = '10:05:23,456';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var number = 2;

        var addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timeStamp: timeStamp1.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber, number);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 1);
        expect(finishes.first.stageId, stage.id);
        expect(finishes.first.number, number);
        expect(finishes.first.finishTime, finish1);
        expect(finishes.first.timestamp, timeStamp1);
        expect(finishes.first.isHidden, false);
        expect(finishes.first.isManual, false);
      });

      test('Automatic add number to second finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var finish2 = '10:05:25,129';
        var timeStamp1 = '10:05:23,456';
        var timeStamp2 = '10:05:25,459';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var number1 = 2;

        var addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timeStamp: timeStamp1.toDateTime()!,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber1, null);

        var addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timeStamp: timeStamp2.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber2, number1);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 2);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timeStamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number1);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      test('Automatic add number to first and second finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var finish2 = '10:05:25,129';
        var timeStamp1 = '10:05:23,456';
        var timeStamp2 = '10:05:25,459';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var number1 = 2;
        var number2 = 7;

        var addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timeStamp: timeStamp1.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber1, number1);

        var addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timeStamp: timeStamp2.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber2, number2);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 2);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timeStamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number2);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      // Пытаемся добавлять номера во все отсечки,
      // Но добавится только в первую и третью, т.к. разница между первой и второй
      // меньше [substituteNumbersDelay]
      test('Automatic add number to all, but substituteNumbersDelay at work',
          () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var finish2 = '10:05:23,129';
        var finish3 = '10:05:25,129';
        var timeStamp1 = '10:05:23,456';
        var timeStamp2 = '10:05:23,459';
        var timeStamp3 = '10:05:25,459';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var substituteNumbersDelay = 1000;
        var number1 = 2;
        var number2 = 7;

        var addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timeStamp: timeStamp1.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber1, number1);

        var addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timeStamp: timeStamp2.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber2, null);

        var addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timeStamp: timeStamp3.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber3, number2);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timeStamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number2);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timeStamp3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);
      });

      // Пытаемся добавлять номера во все отсечки,
      // Но добавится только в первую и третью, т.к. вторую автоматически скроет
      test('Automatic add number to all, but finishDelay at work', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var finish2 = '10:05:23,129';
        var finish3 = '10:05:25,129';
        var timeStamp1 = '10:05:23,456';
        var timeStamp2 = '10:05:23,459';
        var timeStamp3 = '10:05:25,459';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var finishDelay = 1000;
        var number1 = 2;
        var number2 = 7;

        var addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timeStamp: timeStamp1.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber1, number1);

        var addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timeStamp: timeStamp2.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber2, null);

        var addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timeStamp: timeStamp3.toDateTime()!,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber3, number2);

        var finishes = await db
            .getFinishesFromStage(
              stageId: stage.id!,
              hideMarked: false,
            )
            .get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timeStamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, true);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number2);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timeStamp3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);
      });

      test('Add incorrect finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish = '10:05-23,123';
        var timeStamp = '10:05:23,456';
        var finishDelay = 1000;

        var addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timeStamp: timeStamp.toDateTime()!,
          substituteNumbers: true,
          finishDelay: finishDelay,
        );
        expect(addNumber, null);
      });
    });

    group('Test addFinishTimeManual', () {
      test('New manual finish time', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finishTime = '10:05:23,123';

        var addFinish = await db.addFinishTimeManual(
          stageId: stage.id!,
          finishTime: finishTime,
        );
        expect(addFinish, 1);

        addFinish = await db.addFinishTimeManual(
          stageId: stage.id!,
          finishTime: finishTime,
        );
        expect(addFinish, 2);

        addFinish = await db.addFinishTimeManual(
          stageId: stage.id!,
          finishTime: finishTime,
        );
        expect(addFinish, 3);
      });
    });

    group('Test clearFinishResultsDebug', () {
      test('Clear all finish info', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish1 = '10:05:23,123';
        var finish2 = '10:05:23,129';
        var finish3 = '10:05:25,129';
        var timeStamp1 = '10:05:23,456';
        var timeStamp2 = '10:05:24,459';
        var timeStamp3 = '10:05:25,459';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var number1 = 2;
        var number2 = 7;
        var number3 = 14;

        var addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timeStamp: timeStamp1.toDateTime()!,
          dateTimeNow: dateTimeNow,
          number: number1,
        );
        expect(addNumber1, number1);

        var addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timeStamp: timeStamp2.toDateTime()!,
          dateTimeNow: dateTimeNow,
          number: number2,
        );
        expect(addNumber2, number2);

        var addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timeStamp: timeStamp3.toDateTime()!,
          dateTimeNow: dateTimeNow,
          number: number3,
        );
        expect(addNumber3, number3);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timeStamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number2);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number3);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timeStamp3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);

        var start1 = await db
            .getNumberAtStarts(stageId: stage.id!, number: number1)
            .get();
        var start2 = await db
            .getNumberAtStarts(stageId: stage.id!, number: number2)
            .get();
        var start3 = await db
            .getNumberAtStarts(stageId: stage.id!, number: number3)
            .get();

        expect(start1.length, 1);
        expect(start1.first.finishId, 1);
        expect(start2.length, 1);
        expect(start2.first.finishId, 2);
        expect(start3.length, 1);
        expect(start3.first.finishId, 3);

        await db.clearFinishResultsDebug(stage.id!);
        finishes = await db.getFinishesFromStage(stageId: stage.id!).get();

        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timeStamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timeStamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, null);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timeStamp3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);

        start1 = await db
            .getNumberAtStarts(stageId: stage.id!, number: number1)
            .get();
        start2 = await db
            .getNumberAtStarts(stageId: stage.id!, number: number2)
            .get();
        start3 = await db
            .getNumberAtStarts(stageId: stage.id!, number: number3)
            .get();

        expect(start1.length, 1);
        expect(start1.first.finishId, null);
        expect(start2.length, 1);
        expect(start2.first.finishId, null);
        expect(start3.length, 1);
        expect(start3.first.finishId, null);
      });
    });

    group('Test clearNumberAtFinish', () {
      test('Clear number at finish', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var finish = '10:05:23,123';
        var timeStamp = '10:05:23,456';
        var dateTimeNow = '10:05:28,111'.toDateTime();
        var number = 2;

        var addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timeStamp: timeStamp.toDateTime()!,
          dateTimeNow: dateTimeNow,
          number: number,
        );
        expect(addNumber, number);

        var finishes = await db.getFinishesFromStage(stageId: stage.id!).get();
        expect(finishes.length, 1);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number);
        expect(finishes[0].finishTime, finish);
        expect(finishes[0].timestamp, timeStamp);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);

        var start = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();

        expect(start.length, 1);
        expect(start.first.finishId, 1);

        await db.clearNumberAtFinish(stage: stage, number: number);
        finishes = await db.getFinishesFromStage(stageId: stage.id!).get();

        expect(finishes.length, 1);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish);
        expect(finishes[0].timestamp, timeStamp);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);

        start = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();

        expect(start.length, 1);
        expect(start.first.finishId, null);
      });
    });

    group('Test setStatusesForStage', () {
      test('Set DNS for stage', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var number = 14;

        var start = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 1);

        var rowCount = await db.setDNSForStage(stage: stage, number: number);
        expect(rowCount, 1);

        start = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 2);
      });

      test('Set DNF for stage', () async {
        var stage = (await db.getStages(raceId: 1).get()).first;
        var number = 14;

        var start = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 1);

        var rowCount = await db.setDNFForStage(stage: stage, number: number);
        expect(rowCount, 1);

        start = await db
            .getNumberAtStarts(stageId: stage.id!, number: number)
            .get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 3);
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
