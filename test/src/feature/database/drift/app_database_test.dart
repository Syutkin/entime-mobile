//ignore_for_file: avoid_redundant_argument_values
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/constants/date_time_formats.dart';
import 'package:entime/src/feature/csv/csv.dart';
import 'package:entime/src/feature/csv/model/stages_csv.dart';
import 'package:entime/src/feature/csv/model/start_number_and_times_csv.dart';
import 'package:entime/src/feature/database/drift/app_database.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

part 'helpers/raw_queries.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late AppDatabase db;
  const deltaInSeconds = 15;

  setUp(() {
    db = AppDatabase.customConnection(DatabaseConnection(NativeDatabase.memory(), closeStreamsSynchronously: true));

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

      final participantsList = await db.getParticipantsAtStart(stageId: 1).get();
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

        await db.addRace(name: raceName, startDate: startDate, finishDate: finishDate, location: location);

        var racesList = await db.getRaces().get();
        expect(racesList.length, 3);
        expect(racesList[2].name, raceName);
        expect(racesList[2].startDate, startDate.toIso8601String());
        expect(racesList[2].finishDate, finishDate.toIso8601String());
        expect(racesList[2].location, location);

        await db.addRace(name: raceName2);

        racesList = await db.getRaces().get();

        expect(racesList.length, 4);
        expect(racesList[3].name, raceName2);
        expect(racesList[3].startDate, null);
        expect(racesList[3].finishDate, null);
        expect(racesList[3].location, null);

        await db.addRace(name: raceName3);

        racesList = await db.getRaces().get();
        expect(racesList.length, 5);
        expect(racesList[4].name, raceName3);
      });

      test('Delete race', () async {
        const raceName = 'race1';
        final startDate = DateTime(2020, 1, 1);
        final finishDate = DateTime(2020, 1, 2);
        const location = 'location';

        await db.addRace(name: raceName, startDate: startDate, finishDate: finishDate, location: location);

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

        final id = await db.addRace(name: raceName);

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

        await db.addStage(name: stageName, raceId: 1);

        final stagesList = await db.getStages(raceId: 1).get();
        expect(stagesList[4].name, stageName);
        expect(stagesList.length, 5);
      });

      test('Delete stage', () async {
        const stageName = 'stage1';

        await db.addStage(name: stageName, raceId: 1);

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

        final id = await db.addStage(name: stageName, raceId: 1);

        var stage = await db.getStage(id);
        expect(stage!.name, stageName);
        expect(stage.description, null);
        expect(stage.raceId, 1);
        expect(stage.isActive, true);

        await db.updateStage(id: id, description: description, name: newName, raceId: 2, isActive: false);

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

      test('Get trail', () async {
        const trailName = 'trailName';

        final id = await db.addTrail(name: trailName);
        final trail = await db.getTrail(id);
        expect(trail, isNotNull);
        expect(trail?.name, trailName);
      });
    });

    group('Tracks tests', () {
      test('Add track', () async {
        final timestamp = DateTime.now();
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
        final timestamp = DateTime.now();
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
        expect(getTrack.timestamp, timestamp);
      });

      test('Add two tracks with different files', () async {
        var name = 'fileName';
        final timestamp = DateTime.now();
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
        final timestamp = DateTime.now();
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
        final timestamp = DateTime.now();
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

    group('Riders tests', () {
      test('Get riders', () async {
        final riders = await db.getRiders.get();
        expect(riders.length, 79);
      });

      test('Add and get rider', () async {
        const name = 'name';
        const nickname = 'nickname';
        const birthday = '10-10-2000';
        const city = 'city';
        const comment = 'comment';
        const email = 'email@mail.mail';
        const phone = '+79990009999';
        const team = 'team';

        final id = await db.addRider(
          name: name,
          nickname: nickname,
          birthday: birthday,
          city: city,
          comment: comment,
          email: email,
          phone: phone,
          team: team,
        );

        final riders = await db.getRiders.get();
        expect(id, 80);
        expect(riders.length, 80);
        expect(riders.first.name, name);
        expect(riders.first.nickname, nickname);
        expect(riders.first.birthday, birthday);
        expect(riders.first.city, city);
        expect(riders.first.comment, comment);
        expect(riders.first.email, email);
        expect(riders.first.phone, phone);
        expect(riders.first.team, team);
      });

      test('Update rider', () async {
        const id = 50;
        const name = 'name';
        const nickname = 'nickname';
        const birthday = '10-10-2000';
        const city = 'city';
        const comment = 'comment';
        const email = 'email@mail.mail';
        const phone = '+79990009999';
        const team = 'team';

        final count = await db.updateRider(
          id: id,
          name: name,
          nickname: nickname,
          birthday: birthday,
          city: city,
          comment: comment,
          email: email,
          phone: phone,
          team: team,
        );

        final riders = await db.getRiders.get();
        // Гонщик будет первым из-за сортировки по именам
        expect(count, 1);
        expect(riders.first.id, id);
        expect(riders.first.name, name);
        expect(riders.first.nickname, nickname);
        expect(riders.first.birthday, birthday);
        expect(riders.first.city, city);
        expect(riders.first.comment, comment);
        expect(riders.first.email, email);
        expect(riders.first.phone, phone);
        expect(riders.first.team, team);
      });

      test('Trying to update non existed rider', () async {
        const id = 99;
        const name = 'name';

        final count = await db.updateRider(id: id, name: name);

        final riders = await db.getRiders.get();
        // Гонщик будет первым из-за сортировки по именам
        expect(count, 0);
        expect(riders.length, 79);
      });

      test('"Delete" rider', () async {
        const id = 5;

        final count = await db.updateRider(id: id, isDeleted: true);

        final riders = await db.getRiders.get();
        expect(count, 1);
        expect(riders.length, 78);
      });
    });

    group('Participants tests', () {
      test('Update participant', () async {
        const raceId = 2;
        const riderId = 5;
        const stageId = 1;
        const number = 55;
        const newNumber = 100;
        const statusId = 1;
        const category = 'category';
        const rfid = 'rfid';
        // const isDeleted = false;

        final existed = await db.getNumberAtStarts(stageId: stageId, number: number).getSingle();

        final id = existed.participantId;
        expect(id, 21);
        expect(existed.raceId, 1);
        expect(existed.riderId, 21);

        final count = await db.updateParticipant(
          id: id,
          raceId: raceId,
          riderId: riderId,
          number: newNumber,
          statusId: statusId,
          category: category,
          rfid: rfid,
        );

        expect(count, 1);

        final updated = await db.getNumberAtStarts(stageId: stageId, number: newNumber).getSingle();

        expect(updated.participantId, id);
        expect(updated.raceId, raceId);
        expect(updated.riderId, riderId);
        expect(updated.category, category);
        expect(updated.rfid, rfid);
      });
    });

    group('Categories tests', () {
      test('Get categories', () async {
        const id = 1;
        const raceId = 1;
        const category = 'category';

        var categories = await db.getCategories(raceId);
        expect(categories.length, 5);

        await db.updateParticipant(id: id, category: category);
        categories = await db.getCategories(raceId);

        expect(categories.length, 6);
        expect(categories.contains(category), true);
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
        var participant = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
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

        participant = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
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
        var participant = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
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

        rowsUpdated = await db.setStartingInfo(startTime: startTime, stageId: stage.id, participantId: participantId);
        expect(rowsUpdated, 1);

        participant = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
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

        final result = await db.addStartNumber(number: number, stage: stage, startTime: startTime);
        expect(result, null);

        final participantsList = await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 80);

        final participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
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

        final result = await db.addStartNumber(number: number, stage: stage, startTime: startTime);
        expect(result, null);

        final participantsList = await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 79);

        final participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
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

        final result = await db.addStartNumber(number: number, stage: stage, startTime: startTime);

        expect(result?.length, 1);
        final participant = result?.first;

        // Стартовое время '10:00:00' у номера 2 из тестовых данных
        expect(participant?.number, 2);
        expect(participant?.startTime, startTime);

        final participantsList = await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 79);

        // номер не добавлен
        final participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(participants.length, 0);
      });

      test('Add new start number. Number exist at participants list, '
          'but not exists at starts', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '01:00:00';
        const number = 1;

        // get participant with number
        final startInfo = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;

        // delete participant with number at start
        await (db.delete(db.starts)..where((start) => start.participantId.isValue(startInfo.participantId))).go();

        var participantsList = await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 78);

        final result = await db.addStartNumber(number: number, stage: stage, startTime: startTime);
        expect(result, null);

        participantsList = await db.getParticipantsAtStart(stageId: stage.id).get();
        expect(participantsList.length, 79);

        // get participant with number
        final startInfoNew = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
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
        final timestamp = '10:15:01,001'.toDateTime()!;
        const correction = 1234;
        const offset = 3456;

        // startTime - (timestamp + offset)
        const timestampCorrection = -4457;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp);
        expect(start.first.timestampCorrection, timestampCorrection);
        expect(start.first.ntpOffset, offset);
      });

      test('Do not update correction to started participant (with existing starttime)', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:01,123';
        const automaticStartTimeNew = '10:15:05,678';
        final timestamp = '10:15:01,001'.toDateTime()!;
        final timestampNew = '10:15:05,555'.toDateTime()!;
        const correction = 1234;
        const correctionNew = 5678;
        const offset = 3456;
        const offsetNew = 9876;

        // startTime - (timestamp + offset)
        const timestampCorrection = -4457;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timestamp: timestampNew,
          ntpOffset: offsetNew,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result?.length, 1);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp);
        expect(start.first.timestampCorrection, timestampCorrection);
        expect(start.first.ntpOffset, offset);
      });

      test('Force update correction', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:01,123';
        const automaticStartTimeNew = '10:15:05,678';
        final timestamp = '10:15:01,001'.toDateTime()!;
        final timestampNew = '10:15:05,555'.toDateTime()!;
        const correction = 1234;
        const correctionNew = 5678;
        const offset = 3456;
        const offsetNew = 9876;

        // startTime - (timestampNew + offsetNew)
        const timestampCorrection = -15431;

        var result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, null);

        result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTimeNew,
          correction: correctionNew,
          timestamp: timestampNew,
          ntpOffset: offsetNew,
          forceUpdate: true,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result?.length, null);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTimeNew);
        expect(start.first.automaticCorrection, correctionNew);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestampNew);
        expect(start.first.timestampCorrection, timestampCorrection);
        expect(start.first.ntpOffset, offsetNew);
      });

      test('Add incorrect automaticStartTime', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const automaticStartTime = '10:15-01,123';
        final timestamp = '10:15:01,001'.toDateTime()!;
        const correction = 1234;
        const offset = 3456;

        expect(
          () => db.updateAutomaticCorrection(
            stageId: stage.id,
            time: automaticStartTime,
            correction: correction,
            timestamp: timestamp,
            ntpOffset: offset,
            deltaInSeconds: deltaInSeconds,
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('Check delta at automatic', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const automaticStartTime = '10:15:03,123';
        final timestamp = '10:15:03,001'.toDateTime()!;
        const offset = 3456;
        const correction = 1234;
        const delta = 1;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: delta,
        );
        expect(result, null);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, null);
        expect(start.first.timestampCorrection, null);
        expect(start.first.ntpOffset, null);
      });

      test('Use timestamp instead of automatic time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '11:15:00';
        const automaticStartTime = '10:15:01,123';
        const timestampStr = '11:15:01,001';
        final timestamp = timestampStr.toDateTime()!;
        const correction = 1234;
        const offset = 3456;

        // startTime - (timestamp + offset)
        const timestampCorrection = -4457;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
          useTimestampForTime: true,
        );
        expect(result, null);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, correction);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp);
        expect(start.first.timestampCorrection, timestampCorrection);
        expect(start.first.ntpOffset, offset);
      });
    });

    group('Test updateManualStartTime', () {
      test('Add correct manual start time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const diff = 3001;
        final timestamp = startTime.toDateTime()!.add(const Duration(milliseconds: diff));
        const offset = 3456;
        final manualStartTime = timestamp.add(const Duration(milliseconds: offset)).format(longTimeFormat);
        const correction = -(diff + offset);

        final result = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, 1);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp);
        expect(start.first.ntpOffset, offset);
        expect(start.first.manualStartTime, manualStartTime);
        expect(start.first.manualCorrection, correction);
      });

      test('Participant around time does not exists', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        final timestamp = '00:15:03,001'.toDateTime()!;
        const offset = 3456;

        final result = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, 0);
      });

      test('Check delta at manual', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const startTime = '10:15:00';
        const diff = 3001;
        final timestamp = startTime.toDateTime()!.add(const Duration(milliseconds: diff));
        const offset = 3456;
        final manualStartTime = timestamp.add(const Duration(milliseconds: offset)).format(longTimeFormat);
        const correction = -(diff + offset);
        const delta = 1;

        var result = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: delta,
        );
        expect(result, 0);

        var start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, null);
        expect(start.first.ntpOffset, null);
        expect(start.first.manualStartTime, null);
        expect(start.first.manualCorrection, null);

        result = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, 1);

        start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, null);
        expect(start.first.automaticCorrection, null);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp);
        expect(start.first.ntpOffset, offset);
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
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, 1);
      });

      test('Check not existing participant around time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '19:15:03,001';

        final result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, 0);
      });

      test('Submit wrong time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '19-15-03,001';

        final result = await db.checkParticipantAroundStartTime(
          time: time,
          stageId: stage.id,
          deltaInSeconds: deltaInSeconds,
        );
        expect(result, 0);
      });
    });

    group('Test getStartingParticipants', () {
      test('Starting participant exists after time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:14:53,001';

        final result = await db.getStartingParticipants(time: time, stageId: stage.id);
        expect(result.length, 1);
      });

      test('Starting participant not exists after time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '14:14:53,001';

        final result = await db.getStartingParticipants(time: time, stageId: stage.id);
        expect(result.length, 0);
      });
    });

    group('Test getNextStartingParticipants', () {
      test('Next starting participants exists', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '09:59:53,001';

        final result = await db.getNextStartingParticipants(stageId: stage.id, time: time).get();
        expect(result.length, 79);
        expect(result.first.number, 2);
      });

      test('Next starting participant does not exists', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '23:14:53,001';

        final result = await db.getNextStartingParticipants(stageId: stage.id, time: time).get();
        expect(result.length, 0);
      });
    });

    group('Test setStatusForStartId', () {
      test('Set DNS and start with id exists, DNS set successfully', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 1;
        var participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(participants.length, 1);

        const diff = 1001;
        const offset = 522;
        const automaticCorrection = -1523;
        final startId = participants.first.startId;
        final startTime = participants.first.startTime;
        final automaticStartTime = startTime.replaceAll(':00', ':01,123');
        final timestamp = startTime.toDateTime()!.add(const Duration(milliseconds: diff));
        final manualStartTime = timestamp.add(const Duration(milliseconds: offset)).format(longTimeFormat);

        final correctionResult = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: automaticStartTime,
          correction: automaticCorrection,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(correctionResult, null);

        final manualResult = await db.updateManualStartTime(
          stageId: stage.id,
          // time: manualStartTime.toDateTime()!,
          timestamp: timestamp,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        );
        expect(manualResult, 1);

        final start = await startsByStartTime(db: db, startTime: startTime, stageId: stage.id);

        expect(start.length, 1);
        expect(start.first.automaticStartTime, automaticStartTime);
        expect(start.first.automaticCorrection, automaticCorrection);
        expect(start.first.startTime, startTime);
        expect(start.first.statusId, 1);
        expect(start.first.timestamp, timestamp);
        expect(start.first.ntpOffset, offset);
        expect(start.first.manualStartTime, manualStartTime);
        expect(start.first.manualCorrection, automaticCorrection);

        participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        final result = await db.setStatusForStartId(startId: startId, status: ParticipantStatus.dns);
        expect(result, 1);

        participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        expect(participants.length, 1);
        expect(participants.first.startStatusId, ParticipantStatus.dns.index);
        expect(participants.first.automaticStartTime, null);
        expect(participants.first.automaticCorrection, null);
        expect(participants.first.startTime, startTime);
        expect(participants.first.timestamp, null);
        expect(participants.first.ntpOffset, null);
        expect(participants.first.manualStartTime, null);
        expect(participants.first.manualCorrection, null);
      });

      test('Set DNS but start with id does not exists', () async {
        final result = await db.setStatusForStartId(startId: 0, status: ParticipantStatus.dns);
        expect(result, 0);
      });
    });

    group('Test hideFinish', () {
      test('Hide finishes', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        final firstId = await db.addFinishTimeManual(stageId: stage.id, timestamp: DateTime.now(), ntpOffset: 0);
        final secondId = await db.addFinishTimeManual(stageId: stage.id, timestamp: DateTime.now(), ntpOffset: 0);
        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes.first.isHidden, false);
        expect(finishes.last.isHidden, false);

        await db.hideFinish(firstId);
        finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes.first.id, firstId);
        expect(finishes.first.isHidden, true);
        expect(finishes.last.isHidden, false);

        await db.hideFinish(secondId);
        finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes.first.id, firstId);
        expect(finishes.first.isHidden, true);
        expect(finishes.last.isHidden, true);
      });
    });

    group('Test hideAllFinishes', () {
      test('Hide all finishes', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        // const finish = '10:00:00,000';
        for (var i = 0; i < 9; i++) {
          await db.addFinishTimeManual(stageId: stage.id, timestamp: DateTime.now(), ntpOffset: 0);
        }
        await db.hideAllFinishes(stage.id);
        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        for (var i = 0; i < 9; i++) {
          expect(finishes[i].isHidden, true);
        }
      });
    });

    group('Test addNumberToFinish', () {
      test('Correct adding number', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,123';
        const timestamp = '10:05:23,456';
        const offset = 3456;
        const number = 2;

        var startInfo = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
        expect(startInfo.finishId, null);

        await db.addFinishTime(stage: stage, finish: finishTime, timestamp: timestamp.toDateTime()!, ntpOffset: offset);

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

        startInfo = (await db.getNumberAtStarts(stageId: stage.id, number: number).get()).first;
        expect(startInfo.finishId, 1);
      });

      test('Number already exists at finishes', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finishTime = '10:05:23,123';
        const timestamp = '10:05:23,456';
        const offset = 3456;
        const number = 2;

        await db.addFinishTime(stage: stage, finish: finishTime, timestamp: timestamp.toDateTime()!, ntpOffset: offset);

        await db.addFinishTime(stage: stage, finish: finishTime, timestamp: timestamp.toDateTime()!, ntpOffset: offset);

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
        const offset = 3456;
        const number = 999;

        final startInfo = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(startInfo.isEmpty, true);

        await db.addFinishTime(stage: stage, finish: finishTime, timestamp: timestamp.toDateTime()!, ntpOffset: offset);

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
      });
    });

    group('Test getNumbersOnTraceNow', () {
      test('No numbers on trace', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final dateTimeNow = '09:00:00.111'.toDateTime()!;
        final result = await db.getNumbersOnTraceNow(stageId: stageId, dateTimeNow: dateTimeNow).get();

        expect(result.length, 0);
      });
      test('One number on trace', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final dateTimeNow = '10:00:01.111'.toDateTime()!;
        final result = await db.getNumbersOnTraceNow(stageId: stageId, dateTimeNow: dateTimeNow).get();

        expect(result.length, 1);
        expect(result.first.number, 2);
      });
      test('All numbers on trace', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final dateTimeNow = '23:00:01.111'.toDateTime()!;
        final result = await db.getNumbersOnTraceNow(stageId: stageId, dateTimeNow: dateTimeNow).get();

        expect(result.length, 79);
        expect(result.first.number, 2);
        expect(result.last.number, 73);
      });
      test('One number finished, two on trace', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        final dateTimeNow = '10:02:01.111'.toDateTime()!;
        const finishTime = '10:01:23,123';
        const timestamp = '10:01:23,456';
        const offset = 3456;
        const number = 2;
        const number2 = 7;

        var result = await db.getNumbersOnTraceNow(stageId: stage.id, dateTimeNow: dateTimeNow).get();

        expect(result.length, 3);
        expect(result.first.number, 2);

        await db.addFinishTime(stage: stage, finish: finishTime, timestamp: timestamp.toDateTime()!, ntpOffset: offset);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        final finishId = finishes.first.id;

        await db.addNumberToFinish(stage: stage, finishId: finishId, number: number, finishTime: finishTime);

        result = await db.getNumbersOnTraceNow(stageId: stage.id, dateTimeNow: dateTimeNow).get();
        expect(result.length, 2);
        expect(result.first.number, number2);
      });
      test('One number dns, two on trace', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        final dateTimeNow = '10:02:01.111'.toDateTime()!;
        const number = 2;
        const number2 = 7;

        var result = await db.getNumbersOnTraceNow(stageId: stage.id, dateTimeNow: dateTimeNow).get();

        expect(result.length, 3);
        expect(result.first.number, 2);

        final participants = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(participants.length, 1);
        final startId = participants.first.startId;

        final resultStatus = await db.setStatusForStartId(startId: startId, status: ParticipantStatus.dns);
        expect(resultStatus, 1);

        result = await db.getNumbersOnTraceNow(stageId: stage.id, dateTimeNow: dateTimeNow).get();

        expect(result.length, 2);
        expect(result.first.number, number2);
      });
    });

    group('Test shiftStartsTime', () {
      Future<void> testShift(int stageId, int number, int minutes) async {
        final duration = Duration(minutes: minutes);
        var participants = await db.getNumberAtStarts(stageId: stageId, number: number).get();

        final addedDuration = DateFormat(
          shortTimeFormat,
        ).format(participants.first.startTime.toDateTime()!.add(duration));
        final count = await db.shiftStartsTime(stageId: stageId, minutes: minutes);
        expect(count, 79);

        participants = await db.getNumberAtStarts(stageId: stageId, number: number).get();
        final updatedStartTime = participants.first.startTime;
        expect(addedDuration, updatedStartTime);
      }

      test('Shift forward all times', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final rng = Random();

        for (var i = 0; i < 10; i++) {
          final minutes = rng.nextInt(600);
          final number = rng.nextInt(79) + 1;
          await testShift(stageId, number, minutes);
        }
      });

      test('Shift behind all times', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        final rng = Random();

        for (var i = 0; i < 10; i++) {
          final minutes = -rng.nextInt(121);
          final number = rng.nextInt(79) + 1;
          await testShift(stageId, number, minutes);
        }
      });

      test('Shift forward from time', () async {
        final stageId = (await db.getStages(raceId: 1).get()).first.id;
        const minutes = 90;
        var number = 50;
        var startTime = (await db.getNumberAtStarts(stageId: stageId, number: number).get()).first.startTime;
        var count = await db.shiftStartsTime(stageId: stageId, minutes: minutes, fromTime: startTime);
        expect(count, 6);
        number = 61;
        startTime = (await db.getNumberAtStarts(stageId: stageId, number: number).get()).first.startTime;
        count = await db.shiftStartsTime(stageId: stageId, minutes: minutes, fromTime: startTime);
        expect(count, 70);
      });
    });

    group('Test addFinishTime', () {
      test('New automatic finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05:23,123';
        final timestamp = '10:05:23,456'.toDateTime()!;
        const offset = 3456;

        final result = await db.addFinishTime(stage: stage, finish: finish, timestamp: timestamp, ntpOffset: offset);

        expect(result, null);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        expect(finishes.first.stageId, stage.id);
        expect(finishes.first.number, null);
        expect(finishes.first.finishTime, finish);
        expect(finishes.first.timestamp, timestamp);
        expect(finishes.first.ntpOffset, offset);
        expect(finishes.first.isHidden, false);
        expect(finishes.first.isManual, false);
      });

      test('Second automatic finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        final timestamp2 = '10:05:23,459'.toDateTime()!;
        const offset1 = 3456;
        const offset2 = 4567;

        await db.addFinishTime(stage: stage, finish: finish1, timestamp: timestamp1, ntpOffset: offset1);

        await db.addFinishTime(stage: stage, finish: finish2, timestamp: timestamp2, ntpOffset: offset2);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].ntpOffset, offset2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      test('Automatic add number to first finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        const offset1 = 3456;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number = 2;

        final addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          ntpOffset: offset1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber, number);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        expect(finishes.first.stageId, stage.id);
        expect(finishes.first.number, number);
        expect(finishes.first.finishTime, finish1);
        expect(finishes.first.timestamp, timestamp1);
        expect(finishes.first.ntpOffset, offset1);
        expect(finishes.first.isHidden, false);
        expect(finishes.first.isManual, false);
      });

      test('Automatic add number to second finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        final timestamp2 = '10:05:25,459'.toDateTime()!;
        const offset1 = 3456;
        const offset2 = 4567;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number1 = 2;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          ntpOffset: offset1,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber1, null);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          ntpOffset: offset2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber2, number1);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1);
        expect(finishes[0].ntpOffset, offset1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number1);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].ntpOffset, offset2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      test('Automatic add number to first and second finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        final timestamp2 = '10:05:25,459'.toDateTime()!;
        const offset1 = 3456;
        const offset2 = 4567;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number1 = 2;
        const number2 = 7;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          ntpOffset: offset1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          ntpOffset: offset2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
        );
        expect(addNumber2, number2);

        final finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 2);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1);
        expect(finishes[0].ntpOffset, offset1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number2);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].ntpOffset, offset2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
      });

      // Пытаемся добавлять номера во все отсечки,
      // Но добавится только в первую и третью, т.к. разница между первой и второй
      // меньше [substituteNumbersDelay]
      test('Automatic add number to all, but substituteNumbersDelay at work', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        const finish3 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        final timestamp2 = '10:05:23,459'.toDateTime()!;
        final timestamp3 = '10:05:25,459'.toDateTime()!;
        const offset1 = 3456;
        const offset2 = 4567;
        const offset3 = 5678;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const substituteNumbersDelay = 1000;
        const number1 = 2;
        const number2 = 7;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          ntpOffset: offset1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          ntpOffset: offset2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          substituteNumbersDelay: substituteNumbersDelay,
        );
        expect(addNumber2, null);

        final addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timestamp: timestamp3,
          ntpOffset: offset3,
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
        expect(finishes[0].timestamp, timestamp1);
        expect(finishes[0].ntpOffset, offset1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].ntpOffset, offset2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number2);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3);
        expect(finishes[2].ntpOffset, offset3);
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
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        final timestamp2 = '10:05:23,459'.toDateTime()!;
        final timestamp3 = '10:05:25,459'.toDateTime()!;
        const offset1 = 3456;
        const offset2 = 4567;
        const offset3 = 5678;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const finishDelay = 1000;
        const number1 = 2;
        const number2 = 7;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          ntpOffset: offset1,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          ntpOffset: offset2,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber2, null);

        final addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timestamp: timestamp3,
          ntpOffset: offset3,
          substituteNumbers: true,
          dateTimeNow: dateTimeNow,
          finishDelay: finishDelay,
        );
        expect(addNumber3, number2);

        final finishes =
            await db
                .getFinishesFromStage(
                  stageId: stage.id,
                  // hideMarked: false,
                )
                .get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1);
        expect(finishes[0].ntpOffset, offset1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].ntpOffset, offset2);
        expect(finishes[1].isHidden, true);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number2);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3);
        expect(finishes[2].ntpOffset, offset3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);
      });

      test('Add incorrect finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish = '10:05-23,123';
        final timestamp = '10:05:23,456'.toDateTime()!;
        const offset = 3456;
        const finishDelay = 1000;

        final addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp,
          ntpOffset: offset,
          substituteNumbers: true,
          finishDelay: finishDelay,
        );

        expect(addNumber, null);
      });
    });

    // group('Test getFinishesFromStage', () {
    //   test('Test filters', () async {
    //     final stage = (await db.getStages(raceId: 1).get()).first;
    //     const finishTime = '10:05:23,56';
    //     const manualFinishTime = '10:05:23,12';
    //     const number = 1;
    //
    //     for (var i = 0; i < 10; i++) {
    //       await db.addFinishTimeManual(
    //         stageId: stage.id,
    //         finishTime: manualFinishTime + i.toString(),
    //         timestamp: DateTime.timestamp(),
    //       );
    //       await db.addFinishTime(
    //         stage: stage,
    //         finish: finishTime + i.toString(),
    //         timestamp: DateTime.timestamp(),
    //       );
    //     }
    //     for (var i = 1; i < 7; i++) {
    //       await db.addNumberToFinish(
    //         stage: stage,
    //         finishId: i,
    //         number: number + i,
    //         finishTime: 'finishTime',
    //       );
    //     }
    //
    //     await db.hideFinish(1);
    //     await db.hideFinish(2);
    //     await db.hideFinish(14);
    //     await db.hideFinish(15);
    //
    //     //      number  isManual isMarked
    //     //    /-------/---------/--------/
    //     // 1  /   +   /    +    /    +   /
    //     // 2  /   +   /         /    +   /
    //     // 3  /   +   /    +    /        /
    //     // 4  /   +   /         /        /
    //     // 5  /   +   /    +    /        /
    //     // 6  /   +   /         /        /
    //     // 7  /       /    +    /        /
    //     // 8  /       /         /        /
    //     // 9  /       /    +    /        /
    //     // 10 /       /         /        /
    //     // 11 /       /    +    /        /
    //     // 12 /       /         /        /
    //     // 13 /       /    +    /        /
    //     // 14 /       /         /    +   /
    //     // 15 /       /    +    /    +   /
    //     // 16 /       /         /        /
    //     // 17 /       /    +    /        /
    //     // 18 /       /         /        /
    //     // 19 /       /    +    /        /
    //     // 20 /       /         /        /
    //
    //     // all finishes
    //     var finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: false,
    //           hideManual: false,
    //           hideNumbers: false,
    //         )
    //         .get();
    //     expect(finishes.length, 20);
    //
    //     // hide marked
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: true,
    //           hideManual: false,
    //           hideNumbers: false,
    //         )
    //         .get();
    //     expect(finishes.length, 16);
    //
    //     // hide with numbers
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: false,
    //           hideManual: false,
    //           hideNumbers: true,
    //         )
    //         .get();
    //     expect(finishes.length, 14);
    //
    //     // hide manual
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: false,
    //           hideManual: true,
    //           hideNumbers: false,
    //         )
    //         .get();
    //     expect(finishes.length, 10);
    //
    //     // hide marked and manual
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: true,
    //           hideManual: true,
    //           hideNumbers: false,
    //         )
    //         .get();
    //     expect(finishes.length, 8);
    //
    //     // hide marked and numbers
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: true,
    //           hideManual: false,
    //           hideNumbers: true,
    //         )
    //         .get();
    //     expect(finishes.length, 12);
    //
    //     // hide manual and numbers
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: false,
    //           hideManual: true,
    //           hideNumbers: true,
    //         )
    //         .get();
    //     expect(finishes.length, 7);
    //
    //     // hide all
    //     finishes = await db
    //         .getFinishesFromStage(
    //           stageId: stage.id,
    //           hideMarked: true,
    //           hideManual: true,
    //           hideNumbers: true,
    //         )
    //         .get();
    //     expect(finishes.length, 6);
    //   });
    // });

    group('Test addFinishTimeManual', () {
      test('New manual finish time', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const offset = 3456;

        var addFinish = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: DateTime.timestamp(),
          ntpOffset: offset,
        );
        expect(addFinish, 1);

        addFinish = await db.addFinishTimeManual(stageId: stage.id, timestamp: DateTime.timestamp(), ntpOffset: offset);
        expect(addFinish, 2);

        addFinish = await db.addFinishTimeManual(stageId: stage.id, timestamp: DateTime.timestamp(), ntpOffset: offset);
        expect(addFinish, 3);
      });
    });

    group('Test clearFinishResultsDebug', () {
      test('Clear all finish info', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const finish1 = '10:05:23,123';
        const finish2 = '10:05:23,129';
        const finish3 = '10:05:25,129';
        final timestamp1 = '10:05:23,456'.toDateTime()!;
        final timestamp2 = '10:05:24,459'.toDateTime()!;
        final timestamp3 = '10:05:25,459'.toDateTime()!;
        const offset1 = 3456;
        const offset2 = 4567;
        const offset3 = 5678;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number1 = 2;
        const number2 = 7;
        const number3 = 14;

        final addNumber1 = await db.addFinishTime(
          stage: stage,
          finish: finish1,
          timestamp: timestamp1,
          ntpOffset: offset1,
          dateTimeNow: dateTimeNow,
          number: number1,
        );
        expect(addNumber1, number1);

        final addNumber2 = await db.addFinishTime(
          stage: stage,
          finish: finish2,
          timestamp: timestamp2,
          ntpOffset: offset2,
          dateTimeNow: dateTimeNow,
          number: number2,
        );
        expect(addNumber2, number2);

        final addNumber3 = await db.addFinishTime(
          stage: stage,
          finish: finish3,
          timestamp: timestamp3,
          ntpOffset: offset3,
          dateTimeNow: dateTimeNow,
          number: number3,
        );
        expect(addNumber3, number3);

        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 3);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number1);
        expect(finishes[0].finishTime, finish1);
        expect(finishes[0].timestamp, timestamp1);
        expect(finishes[0].ntpOffset, offset1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, number2);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].ntpOffset, offset2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, number3);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3);
        expect(finishes[2].ntpOffset, offset3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);

        var start1 = await db.getNumberAtStarts(stageId: stage.id, number: number1).get();
        var start2 = await db.getNumberAtStarts(stageId: stage.id, number: number2).get();
        var start3 = await db.getNumberAtStarts(stageId: stage.id, number: number3).get();

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
        expect(finishes[0].timestamp, timestamp1);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);
        expect(finishes[1].stageId, stage.id);
        expect(finishes[1].number, null);
        expect(finishes[1].finishTime, finish2);
        expect(finishes[1].timestamp, timestamp2);
        expect(finishes[1].isHidden, false);
        expect(finishes[1].isManual, false);
        expect(finishes[2].stageId, stage.id);
        expect(finishes[2].number, null);
        expect(finishes[2].finishTime, finish3);
        expect(finishes[2].timestamp, timestamp3);
        expect(finishes[2].isHidden, false);
        expect(finishes[2].isManual, false);

        start1 = await db.getNumberAtStarts(stageId: stage.id, number: number1).get();
        start2 = await db.getNumberAtStarts(stageId: stage.id, number: number2).get();
        start3 = await db.getNumberAtStarts(stageId: stage.id, number: number3).get();

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
        final timestamp = '10:05:23,456'.toDateTime()!;
        const offset = 3456;
        final dateTimeNow = '10:05:28,111'.toDateTime();
        const number = 2;

        final addNumber = await db.addFinishTime(
          stage: stage,
          finish: finish,
          timestamp: timestamp,
          ntpOffset: offset,
          dateTimeNow: dateTimeNow,
          number: number,
        );
        expect(addNumber, number);

        var finishes = await db.getFinishesFromStage(stageId: stage.id).get();
        expect(finishes.length, 1);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, number);
        expect(finishes[0].finishTime, finish);
        expect(finishes[0].timestamp, timestamp);
        expect(finishes[0].ntpOffset, offset);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);

        var start = await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        expect(start.length, 1);
        expect(start.first.finishId, 1);

        await db.clearNumberAtFinish(stage: stage, number: number);
        finishes = await db.getFinishesFromStage(stageId: stage.id).get();

        expect(finishes.length, 1);
        expect(finishes[0].stageId, stage.id);
        expect(finishes[0].number, null);
        expect(finishes[0].finishTime, finish);
        expect(finishes[0].timestamp, timestamp);
        expect(finishes[0].isHidden, false);
        expect(finishes[0].isManual, false);

        start = await db.getNumberAtStarts(stageId: stage.id, number: number).get();

        expect(start.length, 1);
        expect(start.first.finishId, null);
      });
    });

    group('Test setStatusesForStage', () {
      test('Set DNS for stage', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 14;

        var start = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 1);

        final rowCount = await db.setDNSForStage(stage: stage, number: number);
        expect(rowCount, 1);

        start = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 2);
      });

      test('Set DNF for stage', () async {
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 14;

        var start = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 1);

        final rowCount = await db.setDNFForStage(stage: stage, number: number);
        expect(rowCount, 1);

        start = await db.getNumberAtStarts(stageId: stage.id, number: number).get();
        expect(start.length, 1);
        expect(start.first.startStatusId, 3);
      });
    });

    group('Test createRaceFromRaceCsv', () {
      test('Add race from RaceCsv', () async {
        const fileName = 'new race.file';
        const stage1 = 'stage1';
        const stage2 = 'stage2';
        const stage3 = 'stage3';
        const stage4 = 'stage4';
        const stage5 = 'stage5';
        final stageNames = [stage1, stage2, stage3, stage4, stage5];

        final startItems = <StartItemCsv>[];

        for (var i = 1; i < 100; i++) {
          startItems
            // Добавляем 99 участников без стартового времени, их должно откинуть
            // И 99 участников со временем только на СУ1 и СУ2
            ..add(StartItemCsv(number: i, name: 'name'))
            ..add(StartItemCsv(number: i + 100, name: 'name', startTimes: {stage1: '10:10:00', stage2: '12:10:00'}));
        }

        final raceCsv = RaceCsv(fileName: fileName, stageNames: stageNames, startItems: startItems);

        final raceId = await db.createRaceFromRaceCsv(raceCsv);
        final race = await db.getRace(raceId);
        expect(race?.name, fileName.split('.')[0]);

        final stages = await db.getStages(raceId: raceId).get();
        expect(stages.length, 5);
        expect(stages[0].name, stage1);
        expect(stages[1].name, stage2);
        expect(stages[2].name, stage3);
        expect(stages[3].name, stage4);
        expect(stages[4].name, stage5);

        // Участники добавились в СУ2
        var stageId = stages[1].id;
        var participants = await db.getParticipantsAtStart(stageId: stageId).get();
        expect(participants.length, 99);

        // Участники не добавились в СУ3, т.к. были без стартового времени
        stageId = stages[2].id;
        participants = await db.getParticipantsAtStart(stageId: stageId).get();
        expect(participants.length, 0);
      });
    });

    group('Test createStagesFromStagesCsv', () {
      test('Add stages to existing race', () async {
        final race = (await db.getRaces().get()).first;
        var stages = await db.getStages(raceId: race.id).get();
        final initialStagesCount = stages.length;

        const stage1 = 'stage1';
        const stage2 = 'stage2';
        const stage3 = 'stage3';
        const stage4 = 'stage4';
        const stage5 = 'stage5';
        final stageNames = [stage1, stage2, stage3, stage4, stage5];

        final startItems = <StartNumberAndTimesCsv>[];

        for (var i = 1; i < 100; i++) {
          startItems.add(
            StartNumberAndTimesCsv(
              number: i,
              // Добавляем 5 СУ, но время у номеров только на первых двух СУ
              startTimes: {stage1: '10:10:00', stage2: '12:10:00'},
            ),
          );
        }
        final stagesCsv = StagesCsv(stageNames: stageNames, startItems: startItems);
        await db.createStagesFromStagesCsv(race.id, stagesCsv);

        stages = await db.getStages(raceId: race.id).get();
        expect(stages.length, initialStagesCount + 5);

        var participants = await db.getParticipantsAtStart(stageId: stages[stages.length - 1].id).get();
        expect(participants.length, 0);
        participants = await db.getParticipantsAtStart(stageId: stages[stages.length - 4].id).get();
        expect(participants.length, 99);
      });
    });

    group('Test getStartResults', () {
      test('Get automatic correction for start result', () async {
        const useTimestamp = false;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:00:01,222';
        final timestamp = time.toDateTime()!;
        const correction = 555;
        const ntpOffset = 1111;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: time,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(result, null);

        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, '$correction');
        expect(results.first.startTime, '10:00:00');
      });

      test('Get manual correction for start result if automatic is not set', () async {
        const useTimestamp = false;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:00:01,222';
        final timestamp = time.toDateTime()!;
        const ntpOffset = 1111;
        const correction = -(1222 + ntpOffset);

        final result = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(result, 1);

        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, '$correction');
        expect(results.first.startTime, '10:00:00');
      });

      test('If all correction sets, get automatic', () async {
        const useTimestamp = false;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:00:01,222';
        final timestamp = time.toDateTime()!;
        const ntpOffset = 1111;
        const automaticCorrection = 555;
        const manualCorrection = -(1222 + ntpOffset);

        final automaticResult = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: time,
          correction: automaticCorrection,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(automaticResult, null);

        final manualResult = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(manualResult, 1);

        final participant = await db.getParticipantsAtStart(stageId: stage.id).get();

        expect(participant.first.automaticCorrection, automaticCorrection);
        expect(participant.first.manualCorrection, manualCorrection);

        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, '$automaticCorrection');
        expect(results.first.startTime, '10:00:00');
      });

      test('Participants with DNS status gets to the list', () async {
        const useTimestamp = false;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 1;

        await db.setDNSForStage(stage: stage, number: number);
        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, 'DNS');
        expect(results.first.number, number);
      });

      test('Get timestamp correction for start result', () async {
        const useTimestamp = true;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:00:01,222';
        final timestamp = time.toDateTime()!;
        const correction = 555;
        const ntpOffset = 1111;

        // timestampCorrection = 10:00:00 - (time + ntpOffset)
        const timestampCorrection = -2333;

        final result = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: time,
          correction: correction,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(result, null);

        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, '$timestampCorrection');
        expect(results.first.startTime, '10:00:00');
      });

      test('Get manual correction for start result if timestamp correction is not set', () async {
        const useTimestamp = true;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:00:01,222';
        final timestamp = time.toDateTime()!;
        const ntpOffset = 1111;
        const correction = -(1222 + ntpOffset);

        final result = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(result, 1);

        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, '$correction');
        expect(results.first.startTime, '10:00:00');
      });

      test('If all correction sets, get timestamp correction', () async {
        const useTimestamp = true;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const time = '10:00:01,222';
        final timestamp = time.toDateTime()!;
        const ntpOffset = 1111;
        const automaticCorrection = 555;
        const manualCorrection = -(1222 + ntpOffset);

        // timestampCorrection = 10:00:00 - (time + ntpOffset)
        const timestampCorrection = -2333;

        final automaticResult = await db.updateAutomaticCorrection(
          stageId: stage.id,
          time: time,
          correction: automaticCorrection,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(automaticResult, null);

        final manualResult = await db.updateManualStartTime(
          stageId: stage.id,
          timestamp: timestamp,
          ntpOffset: ntpOffset,
          deltaInSeconds: deltaInSeconds,
        );

        expect(manualResult, 1);

        final participant = await db.getParticipantsAtStart(stageId: stage.id).get();

        expect(participant.first.automaticCorrection, automaticCorrection);
        expect(participant.first.manualCorrection, manualCorrection);

        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, '$timestampCorrection');
        expect(results.first.startTime, '10:00:00');
      });

      test('Participants with DNS status gets to the list when timestamp correction used', () async {
        const useTimestamp = true;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const number = 1;

        await db.setDNSForStage(stage: stage, number: number);
        final results = await db.getStartResults(stage.id, useTimestamp: useTimestamp);
        expect(results.length, 1);
        expect(results.first.correction, 'DNS');
        expect(results.first.number, number);
      });
    });

    group('Test getFinishResults', () {
      test('Get results from finish', () async {
        const useTimestamp = false;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const ntpOffset = 555;
        await db.addFinishTime(
          stage: stage,
          finish: '10:10:11,123',
          timestamp: DateTime.now(),
          ntpOffset: ntpOffset,
          number: 1,
        );
        await db.addFinishTime(
          stage: stage,
          finish: '10:10:12,123',
          timestamp: DateTime.now(),
          ntpOffset: ntpOffset,
          number: 2,
        );
        await db.addFinishTime(stage: stage, finish: '10:10:13,123', timestamp: DateTime.now(), ntpOffset: ntpOffset);
        var id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:14,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );
        id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:15,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );
        await db.addNumberToFinish(stage: stage, finishId: id, number: 3, finishTime: 'finishTime');
        final finishTimeManual = '10:10:16,123'
            .toDateTime()!
            .add(const Duration(milliseconds: ntpOffset))
            .format(longTimeFormat);
        id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:16,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );
        await db.addNumberToFinish(stage: stage, finishId: id, number: 4, finishTime: 'finishTime');
        id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:17,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );

        final finishes = await db.getFinishResults(stage.id, useTimestamp: useTimestamp);
        expect(finishes.length, 4);
        expect(finishes[0].number, 1);
        expect(finishes[0].finishTime, '10:10:11,123');
        expect(finishes[3].number, 4);
        expect(finishes[3].finishTime, finishTimeManual);
      });

      test('Get results from finish when using timestamps for automatic stamps', () async {
        const useTimestamp = true;
        final stage = (await db.getStages(raceId: 1).get()).first;
        const ntpOffset = 555;
        final timestamp1 = '09:11:11,123'.toDateTime()!;
        final timestamp2 = '09:11:12,223'.toDateTime()!;

        await db.addFinishTime(
          stage: stage,
          finish: '10:10:11,123',
          timestamp: timestamp1,
          ntpOffset: ntpOffset,
          number: 1,
        );
        await db.addFinishTime(
          stage: stage,
          finish: '10:10:12,123',
          timestamp: timestamp2,
          ntpOffset: ntpOffset,
          number: 2,
        );
        await db.addFinishTime(stage: stage, finish: '10:10:13,123', timestamp: DateTime.now(), ntpOffset: ntpOffset);
        var id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:14,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );
        id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:15,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );
        await db.addNumberToFinish(stage: stage, finishId: id, number: 3, finishTime: 'finishTime');
        final finishTimeManual = '10:10:16,123'
            .toDateTime()!
            .add(const Duration(milliseconds: ntpOffset))
            .format(longTimeFormat);
        id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:16,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );
        await db.addNumberToFinish(stage: stage, finishId: id, number: 4, finishTime: 'finishTime');
        id = await db.addFinishTimeManual(
          stageId: stage.id,
          timestamp: '10:10:17,123'.toDateTime()!,
          ntpOffset: ntpOffset,
        );

        final finishes = await db.getFinishResults(stage.id, useTimestamp: useTimestamp);
        expect(finishes.length, 4);
        expect(finishes[0].number, 1);
        expect(finishes[0].finishTime, timestamp1.add(const Duration(milliseconds: ntpOffset)).format(longTimeFormat));
        expect(finishes[1].number, 2);
        expect(finishes[1].finishTime, timestamp2.add(const Duration(milliseconds: ntpOffset)).format(longTimeFormat));
        expect(finishes[3].number, 4);
        expect(finishes[3].finishTime, finishTimeManual);
      });
    });
  });
}

Future<List<Start>> startsByStartTime({required AppDatabase db, required String startTime, required int stageId}) {
  return (db.select(db.starts)
    ..where((start) => start.startTime.equals(startTime) & start.stageId.equals(stageId))).get();
}
