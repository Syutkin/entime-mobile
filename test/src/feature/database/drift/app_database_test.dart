//ignore_for_file: avoid_redundant_argument_values
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
import 'package:flutter_test/flutter_test.dart';

import 'raw_queries.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late AppDatabase db;
  const deltaInSeconds = 15;

  setUp(() {
    db = AppDatabase.customConnection(
      DatabaseConnection(NativeDatabase.memory()),
    );

    // populate DB
    for (final query in PopDB().queries) {
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

    group('Races tests', () {
      test('Add race', () async {
        const raceName = 'race1';
        final startDate = DateTime(2020, 1, 1);
        final finishDate = DateTime(2020, 1, 2);
        const location = 'location';
        const raceName2 = 'race2';
        const raceName3 = 'race3';

        await db.addRace(
          name: raceName,
          startDate: startDate,
          finishDate: finishDate,
          location: location,
        );

        var racesList = await db.getRaces().get();
        expect(racesList.length, 3);
        expect(racesList[2].name, raceName);
        expect(racesList[2].startDate, startDate.toIso8601String());
        expect(racesList[2].finishDate, finishDate.toIso8601String());
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
        final startDate = DateTime(2020, 1, 1);
        final finishDate = DateTime(2020, 1, 2);
        const location = 'location';

        await db.addRace(
          name: raceName,
          startDate: startDate,
          finishDate: finishDate,
          location: location,
        );

        var result = await db.deleteRace(1);
        expect(result, 1);
        result = await db.deleteRace(2);
        expect(result, 1);

        final racesList = await db.getRaces().get();
        expect(racesList.first.name, raceName);
        expect(racesList.length, 1);
      });

      test('Get race', () async {
        const id = 1;
        final race = await db.getRace(id);
        expect(race!.id, id);
      });

      test('Get only non deleted race', () async {
        const id = 1;
        var race = await db.getRace(id);
        expect(race!.id, id);
        await db.deleteRace(id);
        race = await db.getRace(id);
        expect(race, null);
      });

      test('Update race', () async {
        const raceName = 'race1';
        const newName = 'newName';
        const description = 'description';
        const location = 'location';
        const url = 'url';
        final startDate = DateTime(2020, 1, 1);
        final finishDate = DateTime(2020, 1, 2);

        final id = await db.addRace(
          name: raceName,
        );

        var race = await db.getRace(id);
        expect(race!.name, raceName);
        expect(race.description, null);
        expect(race.url, null);
        expect(race.location, null);
        expect(race.startDate, null);
        expect(race.finishDate, null);

        await db.updateRace(
          id: id,
          description: description,
          name: newName,
          location: location,
          url: url,
          startDate: startDate,
          finishDate: finishDate,
        );

        race = await db.getRace(id);
        expect(race!.name, newName);
        expect(race.description, description);
        expect(race.url, url);
        expect(race.location, location);
        expect(race.startDate, startDate.toIso8601String());
        expect(race.finishDate, finishDate.toIso8601String());
      });
    });

    group('Stages tests', () {
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

        await db.deleteStage(1);
        stagesList = await db.getStages(raceId: 1).get();
        expect(stagesList.length, 4);
        expect(stagesList[3].name, stageName);
      });

      test('Update stage', () async {
        const stageName = 'stage1';
        const description = 'description';
        const newName = 'newName';

        final id = await db.addStage(
          name: stageName,
          raceId: 1,
        );

        var stage = await db.getStage(id);
        expect(stage!.name, stageName);
        expect(stage.description, null);
        expect(stage.raceId, 1);
        expect(stage.isActive, true);

        await db.updateStage(
          id: id,
          description: description,
          name: newName,
          raceId: 2,
          isActive: false,
        );

        stage = await db.getStage(id);
        expect(stage!.name, newName);
        expect(stage.description, description);
        expect(stage.raceId, 2);
        expect(stage.isActive, false);
      });
    });

    group('Trails tests', () {
      test('Add trail', () async {
        const trailName = 'trailName';

        var trails = await db.getTrails().get();
        expect(trails.length, 0);

        await db.addTrail(name: trailName);
        trails = await db.getTrails().get();
        expect(trails.length, 1);

        final trail = trails.first;
        expect(trail.id, 1);
        expect(trail.name, trailName);
        expect(trail.description, null);
        expect(trail.url, null);
        expect(trail.distance, null);
        expect(trail.elevation, null);
      });

      test('Delete trail', () async {
        const trailName = 'trailName';

        final id = await db.addTrail(name: trailName);
        var trails = await db.getTrails().get();
        expect(trails.length, 1);

        await db.deleteTrail(id);
        trails = await db.getTrails().get();
        expect(trails.length, 0);
      });

      test('Update trail', () async {
        const trailName = 'trailName';
        const newName = 'newName';
        const description = 'description';
        const url = 'url';
        const distance = 111;
        const elevation = 222;

        final id = await db.addTrail(name: trailName);
        var trails = await db.getTrails().get();
        expect(trails.length, 1);

        await db.updateTrail(
          id: id,
          description: description,
          name: newName,
          url: url,
          distance: distance,
          elevation: elevation,
        );

        trails = await db.getTrails().get();
        final trail = trails.first;
        expect(trail.id, 1);
        expect(trail.name, newName);
        expect(trail.description, description);
        expect(trail.url, url);
        expect(trail.distance, distance);
        expect(trail.elevation, elevation);
      });
    });

    group('Tracks tests', () {
      test('Add track', () async {
        final timestamp = DateTime.now().toUtc().toIso8601String();
        const content = 'File content';
        final data = content.codeUnits.asUint8List();
        final hashSha1 = sha1.convert(data);
        final track = TrackFile(
          id: -1,
          name: 'fileName',
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
        );
        final id = await db.addTrack(track);
        expect(id, 1);
      });

      test('Check added track', () async {
        final now = DateTime.now();
        final timestamp = now.toUtc().toIso8601String();
        const content = 'File content';
        final data = content.codeUnits.asUint8List();
        final hashSha1 = sha1.convert(data);
        const description = 'description';
        const extension = 'gxp';
        final track = TrackFile(
          id: -1,
          name: 'fileName',
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
          description: description,
          extension: extension,
        );

        await db.addTrack(track);

        final getTrack = await db.getTrack(1);
        expect(getTrack, isNotNull);
        expect(getTrack!.id, 1);
        expect(getTrack.name, track.name);
        expect(getTrack.size, track.size);
        expect(getTrack.hashSha1, track.hashSha1);
        expect(getTrack.data, track.data);
        expect(getTrack.timestamp, track.timestamp);
        expect(getTrack.description, track.description);
        expect(getTrack.description, track.description);

        expect(String.fromCharCodes(getTrack.data), content);
        expect(DateTime.parse(getTrack.timestamp).toLocal(), now);
      });

      test('Add two tracks with different files', () async {
        var name = 'fileName';
        final timestamp = DateTime.now().toUtc().toIso8601String();
        var content = 'File content';
        var data = content.codeUnits.asUint8List();
        var hashSha1 = sha1.convert(data);
        var track = TrackFile(
          id: -1,
          name: name,
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
        );
        var id = await db.addTrack(track);
        expect(id, 1);

        name = 'fileName 2';
        content = 'File content 2';
        data = content.codeUnits.asUint8List();
        hashSha1 = sha1.convert(data);
        track = TrackFile(
          id: -1,
          name: name,
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
        );
        id = await db.addTrack(track);
        expect(id, 2);

        final tracks = await db.select(db.trackFiles).get();
        expect(tracks.length, 2);
      });

      test('Do not add second track with same file', () async {
        var name = 'fileName';
        final timestamp = DateTime.now().toUtc().toIso8601String();
        const content = 'File content';
        final data = content.codeUnits.asUint8List();
        final hashSha1 = sha1.convert(data);
        var track = TrackFile(
          id: -1,
          name: name,
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
        );
        var id = await db.addTrack(track);
        expect(id, 1);

        name = 'fileName 2';
        track = TrackFile(
          id: -1,
          name: name,
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
        );
        id = await db.addTrack(track);
        expect(id, 1);

        final tracks = await db.select(db.trackFiles).get();
        expect(tracks.length, 1);
      });

      test('Delete track', () async {
        final timestamp = DateTime.now().toUtc().toIso8601String();
        const content = 'File content';
        final data = content.codeUnits.asUint8List();
        final hashSha1 = sha1.convert(data);
        final track = TrackFile(
          id: -1,
          name: 'fileName',
          size: data.length,
          hashSha1: hashSha1.toString(),
          data: data,
          timestamp: timestamp,
        );
        final id = await db.addTrack(track);
        expect(id, 1);
        final deletedId = await db.deleteTrack(id);
        expect(deletedId, 1);
        final tracks = await db.select(db.trackFiles).get();
        expect(tracks.length, 0);
      });

      test('Trying to delete unexisted track', () async {
        const unexistedId = 555;
        final id = await db.deleteTrack(unexistedId);
        expect(id, 0);
      });
    });

    group('Test setStartingInfo', () {
      test('All field filled for starting info', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '11:11:11';
        const manualStartTime = '11:11:11';
        const automaticStartTime = '11:11:11';
        const manualCorrection = 1234;
        const automaticCorrection = -4331;
        const number = 2;
        var participant = (await db
                .getNumberAtStarts(stageId: stage.id, number: number)
                .get())
            .first;
        final participantId = participant.participantId;

        final rowsUpdated = await db.setStartingInfo(
          startTime: startTime,
          stageId: stage.id,
          participantId: participantId,
          manualStartTime: manualStartTime,
          manualCorrection: manualCorrection,
          automaticStartTime: automaticStartTime,
          automaticCorrection: automaticCorrection,
        );
        expect(rowsUpdated, 1);

        participant = (await db
                .getNumberAtStarts(stageId: stage.id, number: number)
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '11:11:11';
        const manualStartTime = '11:11:11';
        const automaticStartTime = '11:11:11';
        const manualCorrection = 1234;
        const automaticCorrection = -4331;
        const number = 2;
        var participant = (await db
                .getNumberAtStarts(stageId: stage.id, number: number)
                .get())
            .first;
        final participantId = participant.participantId;

        var rowsUpdated = await db.setStartingInfo(
          startTime: startTime,
          stageId: stage.id,
          participantId: participantId,
          manualStartTime: manualStartTime,
          manualCorrection: manualCorrection,
          automaticStartTime: automaticStartTime,
          automaticCorrection: automaticCorrection,
        );
        expect(rowsUpdated, 1);

        rowsUpdated = await db.setStartingInfo(
          startTime: startTime,
          stageId: stage.id,
          participantId: participantId,
        );
        expect(rowsUpdated, 1);

        participant = (await db
                .getNumberAtStarts(stageId: stage.id, number: number)
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '01:00:00';
        const number = 100;

        final result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );
        expect(result, null);

        final participantsList =
            await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 80);

        final participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '01:00:00';
        const number = 1;

        final result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );
        expect(result, null);

        final participantsList =
            await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 79);

        final participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:00:00';
        const number = 100;

        final result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );

        expect(result?.length, 1);
        final participant = result?.first;

        // Стартовое время '10:00:00' у номера 2 из тестовых данных
        expect(participant?.number, 2);
        expect(participant?.startTime, startTime);

        final participantsList =
            await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 79);

        // номер не добавлен
        final participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(participants.length, 0);
      });

      test(
          'Add new start number. Number exist at participants list, '
          'but not exists at starts', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '01:00:00';
        const number = 1;

        // get participant with number
        final startInfo = (await db
                .getNumberAtStarts(
                  stageId: stage.id,
                  number: number,
                )
                .get())
            .first;

        // delete participant with number at start
        await (db.delete(db.starts)
              ..where(
                (start) => start.participantId.isValue(startInfo.participantId),
              ))
            .go();

        var participantsList =
            await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 78);

        final result = await db.addStartNumber(
          number: number,
          stage: stage,
          startTime: startTime,
        );
        expect(result, null);

        participantsList =
            await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 79);

        // get participant with number
        final startInfoNew = (await db
                .getNumberAtStarts(
                  stageId: stage.id,
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:01,123';
        final timestamp = '10:15:01,001'.toDateTime()!.toUtc();
        const correction = 1234;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp.toIso8601String());
      });

      test('Add correct correction to started participant', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:01,123';
        const automaticStartTimeNew = '10:15:05,678';
        final timestamp = '10:15:01,001'.toDateTime()!.toUtc();
        final timestampNew = '10:15:05,555'.toDateTime()!.toUtc();
        const correction = 1234;
        const correctionNew = 5678;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timestamp: timestampNew,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result?.length, 1);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp.toIso8601String());
      });

      test('Force update correction', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:01,123';
        const automaticStartTimeNew = '10:15:05,678';
        final timestamp = '10:15:01,001'.toDateTime()!.toUtc();
        final timestampNew = '10:15:05,555'.toDateTime()!.toUtc();
        const correction = 1234;
        const correctionNew = 5678;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timestamp: timestampNew,
          forceUpdate: true,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result?.length, null);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTimeNew);
        expect(start.first.automaticCorrection, correctionNew);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestampNew.toIso8601String());
      });

      test('Add incorrect automaticStartTime', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const automaticStartTime = '10:15-01,123';
        final timestamp = '10:15:01,001'.toDateTime()!.toUtc();
        const correction = 1234;

        expect(
          () => db.updateAutomaticCorrection(
            stageId: stage.id,
            time: automaticStartTime,
            correction: correction,
            timestamp: timestamp,
            deltaInSeconds: deltaInSeconds,
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('Check delta at automatic', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:03,123';
        final timestamp = '10:15:03,001'.toDateTime()!.toUtc();
        const correction = 1234;
        const delta = 1;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          deltaInSeconds: delta,
        );
        expect(result, null);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const manualStartTime = '10:15:03,001';
        final timestamp = manualStartTime.toDateTime()!;
        const correction = -3001;

        final result = await db.updateManualStartTime(
          stageId: stage.id,
          time: timestamp,
          timestamp: timestamp.toUtc(),
        );
        expect(result, 1);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp.toUtc().toIso8601String());
        expect(start.first.manualStartTime, manualStartTime);
        expect(start.first.manualCorrection, correction);
      });

      test('Participant around time does not exists', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        final timestamp = '00:15:03,001'.toDateTime()!;

        final result = await db.updateManualStartTime(
          stageId: stage.id,
          time: timestamp,
          timestamp: timestamp.toUtc(),
        );
        expect(result, 0);
      });

      test('Check delta at manual', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const manualStartTime = '10:15:03,001';
        final timestamp = manualStartTime.toDateTime()!;
        const correction = -3001;
        const delta = 1;

        var result = await db.updateManualStartTime(
          stageId: stage.id,
          time: timestamp,
          timestamp: timestamp.toUtc(),
          deltaInSeconds: delta,
        );
        expect(result, 0);

        var start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
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
          stageId: stage.id,
          time: timestamp,
          timestamp: timestamp.toUtc(),
        );
        expect(result, 1);

        start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp.toUtc().toIso8601String());
        expect(start.first.manualStartTime, manualStartTime);
        expect(start.first.manualCorrection, correction);
      });
    });

    group('Test checkParticipantAroundStartTime', () {
      test('Check existing participant around time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:14:53,001';

        final result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id,
        );
        expect(result, 1);
      });

      test('Check not existing participant around time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '19:15:03,001';

        final result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id,
        );
        expect(result, 0);
      });

      test('Submit wrong time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '19-15-03,001';

        final result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id,
        );
        expect(result, 0);
      });
    });

    group('Test getStartingParticipants', () {
      test('Starting participant exists after time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:14:53,001';

        final result = await db.getStartingParticipants(
          time: time,
          stageId: stage.id,
        );
        expect(result.length, 1);
      });

      test('Starting participant not exists after time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '14:14:53,001';

        final result = await db.getStartingParticipants(
          time: time,
          stageId: stage.id,
        );
        expect(result.length, 0);
      });
    });

    group('Test getNextStartingParticipants', () {
      test('Next starting participants exists', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '09:59:53,001';

        final result = await db
            .getNextStartingParticipants(
              stageId: stage.id,
              time: time,
            )
            .get();
        expect(result.length, 79);
        expect(result.first.number, 2);
      });

      test('Next starting participant does not exists', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '23:14:53,001';

        final result = await db
            .getNextStartingParticipants(
              stageId: stage.id,
              time: time,
            )
            .get();
        expect(result.length, 0);
      });
    });

    group('Test setStatusForStartId', () {
      test('Set DNS and start with id exists, DNS set successfully', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 1;
        var participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(participants.length, 1);

        final startId = participants.first.startId;
        final startTime = participants.first.startTime;
        final automaticStartTime = startTime.replaceAll(':00', ':01,123');
        final manualStartTime = startTime.replaceAll(':00', ':01,523');
        final timestampString = startTime.replaceAll(':00', ':01,001');
        final timestamp = timestampString.toDateTime()!.toUtc();
        const automaticCorrection = -1523;

        final correctionResult = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: automaticCorrection,
          timestamp: timestamp,
          deltaInSeconds: deltaInSeconds,
        );
        expect(correctionResult, null);

        final manualResult = await db.updateManualStartTime(
          stageId: stage.id,
          time: manualStartTime.toDateTime()!,
          timestamp: timestamp,
        );
        expect(manualResult, 1);

        final start = await startsByStartTime(
          db: db,
          startTime: startTime,
          stageId: stage.id,
        );

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, automaticCorrection);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp.toIso8601String());
        expect(start.first.manualStartTime, manualStartTime);
        expect(start.first.manualCorrection, automaticCorrection);

        participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        final result = await db.setStatusForStartId(
          startId: startId,
          status: ParticipantStatus.dns,
        );
        expect(result, 1);

        participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();

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
        final result = await db.setStatusForStartId(
          startId: 0,
          status: ParticipantStatus.dns,
        );
        expect(result, 0);
      });
    });

    group('Test addNumberToFinish', () {
      test('Correct adding number', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,123';
        const timestamp = '10:05:23,456';
        const number = 2;

        var startInfo = (await db
                .getNumberAtStarts(stageId: stage.id, number: number)
                .get())
            .first;
        expect(startInfo.finishId, null);

        await db.addFinishTime(
          stage: stage,
          finish: finishTime,
          timestamp: timestamp.toDateTime()!,
        );

        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        final finishId = finishes.first.id;

        final result = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId,
          number: number,
          finishTime: finishTime,
        );
        expect(result, true);

        finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.first.number, number);

        startInfo = (await db
                .getNumberAtStarts(stageId: stage.id, number: number)
                .get())
            .first;
        expect(startInfo.finishId, 1);
      });

      test('Number already exists at finishes', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,123';
        const timestamp = '10:05:23,456';
        const number = 2;

        await db.addFinishTime(
          stage: stage,
          finish: finishTime,
          timestamp: timestamp.toDateTime()!,
        );

        await db.addFinishTime(
          stage: stage,
          finish: finishTime,
          timestamp: timestamp.toDateTime()!,
        );

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        final finishId1 = finishes.first.id;
        final finishId2 = finishes.last.id;

        final result1 = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId1,
          number: number,
          finishTime: finishTime,
        );
        expect(result1, true);

        final result2 = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId2,
          number: number,
          finishTime: finishTime,
        );
        expect(result2, false);
      });

      test('Add not existing number to finish', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,123';
        const timestamp = '10:05:23,456';
        const number = 999;

        final startInfo =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(startInfo.isEmpty, true);

        await db.addFinishTime(
          stage: stage,
          finish: finishTime,
          timestamp: timestamp.toDateTime()!,
        );

        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        final finishId = finishes.first.id;

        final result = await db.addNumberToFinish(
          stage: stage,
          finishId: finishId,
          number: number,
          finishTime: finishTime,
        );
        expect(result, true);

        finishes = await db.getFinishesFromStage(stageId: stage.id).get();
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
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final dateTimeNow = '09:00:00.111'.toDateTime()!;
        final result = await db
            .getNumbersOnTraceNow(
              stageId: stageId,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 0);
      });
      test('One number on trace', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final dateTimeNow = '10:00:01.111'.toDateTime()!;
        final result = await db
            .getNumbersOnTraceNow(
              stageId: stageId,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 1);
        expect(result.first.number, 2);
      });
      test('All numbers on trace', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final dateTimeNow = '23:00:01.111'.toDateTime()!;
        final result = await db
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        final dateTimeNow = '10:02:01.111'.toDateTime()!;
        const finishTime = '10:01:23,123';
        const timestamp = '10:01:23,456';
        const number = 2;
        const number2 = 7;

        var result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 3);
        expect(result.first.number, 2);

        await db.addFinishTime(
          stage: stage,
          finish: finishTime,
          timestamp: timestamp.toDateTime()!,
        );

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        final finishId = finishes.first.id;

        await db.addNumberToFinish(
          stage: stage,
          finishId: finishId,
          number: number,
          finishTime: finishTime,
        );

        result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id,
              dateTimeNow: dateTimeNow,
            )
            .get();
        expect(result.length, 2);
        expect(result.first.number, number2);
      });
      test('One number dns, two on trace', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        final dateTimeNow = '10:02:01.111'.toDateTime()!;
        const number = 2;
        const number2 = 7;

        var result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 3);
        expect(result.first.number, 2);

        final participants =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(participants.length, 1);
        final startId = participants.first.startId;

        final resultStatus = await db.setStatusForStartId(
          startId: startId,
          status: ParticipantStatus.dns,
        );
        expect(resultStatus, 1);

        result = await db
            .getNumbersOnTraceNow(
              stageId: stage.id,
              dateTimeNow: dateTimeNow,
            )
            .get();

        expect(result.length, 2);
        expect(result.first.number, number2);
      });
    });

    group('Test hideFinish', () {
      test('Finish hided successfully', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05:23,123';
        const timestamp = '10:05:23,456';

        await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp.toDateTime()!,
        );

        await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp.toDateTime()!,
        );

        var result = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
            )
            .get();
        expect(result[0].isHidden, false);
        expect(result[1].isHidden, false);

        var count = await db.hideFinish(result[0].id);
        expect(count, 1);

        result = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
            )
            .get();
        expect(result[0].isHidden, true);
        expect(result[1].isHidden, false);

        count = await db.hideFinish(result[1].id);
        result = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
            )
            .get();
        expect(result[0].isHidden, true);
        expect(result[1].isHidden, true);
      });
    });

    group('Test hideAllFinish', () {
      test('Finishes hided successfully', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05:23,123';
        const timestamp = '10:05:23,456';

        await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp.toDateTime()!,
        );

        var result = await db.hideAllFinishes(stage.id);
        expect(result, 1);

        await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp.toDateTime()!,
        );

        result = await db.hideAllFinishes(stage.id);
        expect(result, 2);

        await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp.toDateTime()!,
        );

        result = await db.hideAllFinishes(stage.id);
        expect(result, 3);

        final finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05:23,123';
        final timestamp = '10:05:23,456'.toDateTime()!.toUtc();

        final result = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp,
        );

        expect(result, null);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        expect(finishes.first.stageId, stage.id);
        expect(finishes.first.number, null);
        expect(finishes.first.finishTime, finish);
        expect(finishes.first.timestamp, timestamp.toIso8601String());
        expect(finishes.first.isHidden, false);
        expect(finishes.first.isManual, false);
      });

      test('Second automatic finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final timestamp2 = '10:05:23,459'.toDateTime()!.toUtc();

        await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
        );

        await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
        );

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      test('Automatic add number to first finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number = 2;

        final addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber, number);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        expect(finishes.first.stageId, stage.id);
        expect(finishes.first.number, number);
        expect(finishes.first.finishTime, finish1);
        expect(finishes.first.timestamp, timestamp1.toIso8601String());
        expect(finishes.first.isHidden, false);
        expect(finishes.first.isManual, false);
      });

      test('Automatic add number to second finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final timestamp2 = '10:05:25,459'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number1 = 2;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber1, null);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber2, number1);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number1);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      test('Automatic add number to first and second finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final timestamp2 = '10:05:25,459'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number1 = 2;
        const number2 = 7;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber2, number2);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number2);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      // Пытаемся добавлять номера во все отсечки,
      // Но добавится только в первую и третью, т.к. разница между первой и второй
      // меньше [substituteNumbersDelay]
      test('Automatic add number to all, but substituteNumbersDelay at work',
          () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        const finish3 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final timestamp2 = '10:05:23,459'.toDateTime()!.toUtc();
        final timestamp3 = '10:05:25,459'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const substituteNumbersDelay = 1000;
        const number1 = 2;
        const number2 = 7;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber2, null);

        final addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timestamp: timestamp3,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber3, number2);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number2);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3.toIso8601String());
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);
      });

      // Пытаемся добавлять номера во все отсечки,
      // Но добавится только в первую и третью, т.к. вторую автоматически скроет
      test('Automatic add number to all, but finishDelay at work', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        const finish3 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final timestamp2 = '10:05:23,459'.toDateTime()!.toUtc();
        final timestamp3 = '10:05:25,459'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const finishDelay = 1000;
        const number1 = 2;
        const number2 = 7;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber2, null);

        final addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timestamp: timestamp3,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber3, number2);

        final finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
            )
            .get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, true);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number2);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3.toIso8601String());
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);
      });

      test('Add incorrect finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05-23,123';
        final timestamp = '10:05:23,456'.toDateTime()!.toUtc();
        const finishDelay = 1000;

        final addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp,
          substituteNumbers: true,
          finishDelay: finishDelay,
        );

        expect(addNumber, null);
      });
    });

    group('Test getFinishesFromStage', () {
      test('Test filters', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,56';
        const manualFinishTime = '10:05:23,12';
        const number = 1;

        for (var i = 0; i < 10; i++) {
          await db.addFinishTimeManual(
            stageId: stage.id,
            finishTime: manualFinishTime + i.toString(),
            timestamp: DateTime.timestamp(),
          );
          await db.addFinishTime(
            stage: stage,
            finish: finishTime + i.toString(),
            timestamp: DateTime.timestamp(),
          );
        }
        for (var i = 1; i < 7; i++) {
          await db.addNumberToFinish(
            stage: stage,
            finishId: i,
            number: number + i,
            finishTime: 'finishTime',
          );
        }

        await db.hideFinish(1);
        await db.hideFinish(2);
        await db.hideFinish(14);
        await db.hideFinish(15);

        //      number  isManual isMarked
        //    /-------/---------/--------/
        // 1  /   +   /    +    /    +   /
        // 2  /   +   /         /    +   /
        // 3  /   +   /    +    /        /
        // 4  /   +   /         /        /
        // 5  /   +   /    +    /        /
        // 6  /   +   /         /        /
        // 7  /       /    +    /        /
        // 8  /       /         /        /
        // 9  /       /    +    /        /
        // 10 /       /         /        /
        // 11 /       /    +    /        /
        // 12 /       /         /        /
        // 13 /       /    +    /        /
        // 14 /       /         /    +   /
        // 15 /       /    +    /    +   /
        // 16 /       /         /        /
        // 17 /       /    +    /        /
        // 18 /       /         /        /
        // 19 /       /    +    /        /
        // 20 /       /         /        /

        // all finishes
        var finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
              hideManual: false,
              hideNumbers: false,
            )
            .get();
        expect(finishes.length, 20);

        // hide marked
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: true,
              hideManual: false,
              hideNumbers: false,
            )
            .get();
        expect(finishes.length, 16);

        // hide with numbers
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
              hideManual: false,
              hideNumbers: true,
            )
            .get();
        expect(finishes.length, 14);

        // hide manual
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
              hideManual: true,
              hideNumbers: false,
            )
            .get();
        expect(finishes.length, 10);

        // hide marked and manual
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: true,
              hideManual: true,
              hideNumbers: false,
            )
            .get();
        expect(finishes.length, 8);

        // hide marked and numbers
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: true,
              hideManual: false,
              hideNumbers: true,
            )
            .get();
        expect(finishes.length, 12);

        // hide manual and numbers
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: false,
              hideManual: true,
              hideNumbers: true,
            )
            .get();
        expect(finishes.length, 7);

        // hide all
        finishes = await db
            .getFinishesFromStage(
              stageId: stage.id,
              hideMarked: true,
              hideManual: true,
              hideNumbers: true,
            )
            .get();
        expect(finishes.length, 6);
      });
    });

    group('Test addFinishTimeManual', () {
      test('New manual finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,123';

        var addFinish = await db.addFinishTimeManual(
          stageId: stage.id,
          finishTime: finishTime,
          timestamp: DateTime.timestamp(),
        );
        expect(addFinish, 1);

        addFinish = await db.addFinishTimeManual(
          stageId: stage.id,
          finishTime: finishTime,
          timestamp: DateTime.timestamp(),
        );
        expect(addFinish, 2);

        addFinish = await db.addFinishTimeManual(
          stageId: stage.id,
          finishTime: finishTime,
          timestamp: DateTime.timestamp(),
        );
        expect(addFinish, 3);
      });
    });

    group('Test clearFinishResultsDebug', () {
      test('Clear all finish info', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        const finish3 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!.toUtc();
        final timestamp2 = '10:05:24,459'.toDateTime()!.toUtc();
        final timestamp3 = '10:05:25,459'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number1 = 2;
        const number2 = 7;
        const number3 = 14;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          dateTimeNow: dateTimeNow,
          number: number1,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          dateTimeNow: dateTimeNow,
          number: number2,
        );
        expect(addNumber2, number2);

        final addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timestamp: timestamp3,
          dateTimeNow: dateTimeNow,
          number: number3,
        );
        expect(addNumber3, number3);

        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number2);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number3);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3.toIso8601String());
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);

        var start1 = await db
            .getNumberAtStarts(stageId: stage.id, number: number1)
            .get();
        var start2 = await db
            .getNumberAtStarts(stageId: stage.id, number: number2)
            .get();
        var start3 = await db
            .getNumberAtStarts(stageId: stage.id, number: number3)
            .get();

        expect(start1.length, 1);
        expect(start1.first.finishId, 1);
        expect(start2.length, 1);
        expect(start2.first.finishId, 2);
        expect(start3.length, 1);
        expect(start3.first.finishId, 3);

        await db.clearFinishResultsDebug(stage.id);
        finishes = await db.getFinishesFromStage(stageId: stage.id).get();

        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2.toIso8601String());
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, null);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3.toIso8601String());
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);

        start1 = await db
            .getNumberAtStarts(stageId: stage.id, number: number1)
            .get();
        start2 = await db
            .getNumberAtStarts(stageId: stage.id, number: number2)
            .get();
        start3 = await db
            .getNumberAtStarts(stageId: stage.id, number: number3)
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
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05:23,123';
        final timestamp = '10:05:23,456'.toDateTime()!.toUtc();
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number = 2;

        final addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp,
          dateTimeNow: dateTimeNow,
          number: number,
        );
        expect(addNumber, number);

        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number);
        expect(finishes[0].finishTime, finish);
        expect(finishes[0].timestamp, timestamp.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);

        var start =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        expect(start.length, 1);
        expect(start.first.finishId, 1);

        await db.clearNumberAtFinish(stage: stage, number: number);
        finishes = await db.getFinishesFromStage(stageId: stage.id).get();

        expect(finishes.length, 1);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish);
        expect(finishes[0].timestamp, timestamp.toIso8601String());
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);

        start =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        expect(start.length, 1);
        expect(start.first.finishId, null);
      });
    });

    group('Test setStatusesForStage', () {
      test('Set DNS for stage', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 14;

        var start =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 1);

        final rowCount = await db.setDNSForStage(stage: stage, number: number);
        expect(rowCount, 1);

        start =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 2);
      });

      test('Set DNF for stage', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 14;

        var start =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 1);

        final rowCount = await db.setDNFForStage(stage: stage, number: number);
        expect(rowCount, 1);

        start =
            await db.getNumberAtStarts(stageId: stage.id, number: number).get();
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
        ..where(
          (start) =>
              start.startTime.equals(startTime) & start.stageId.equals(stageId),
        ))
      .get();
}
