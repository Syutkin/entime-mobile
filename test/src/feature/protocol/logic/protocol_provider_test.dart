import 'dart:io';

import 'package:entime/src/common/database/model/dbstate.dart';
import 'package:entime/src/common/utils/csv_utils.dart';
import 'package:entime/src/feature/protocol/logic/protocol_provider.dart';
import 'package:entime/src/feature/protocol/model/protocol_items.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  if (Platform.isWindows || Platform.isLinux) {
    // Setup sqflite_common_ffi for flutter test
    setUpAll(() {
      // Initialize FFI
      sqfliteFfiInit();
      // Change the default factory
      databaseFactory = databaseFactoryFfi;
    });
  }

  group('protocolProvider:', () {
    late Directory directory;
    late String testFileName;
    late IProtocolProvider protocolProvider;

    test('Correct initial state', () async {
      protocolProvider = ProtocolProvider();

      expect(protocolProvider.state.value, const DBState.notSelected());
    });

    test('openDb', () async {
      protocolProvider = ProtocolProvider();
      directory = await getApplicationDocumentsDirectory();
      testFileName = path.join(directory.path, 'test_db.sqlite');
      if (File(testFileName).existsSync()) {
        File(testFileName).deleteSync();
      }
      await protocolProvider.openDb(testFileName);

      expect(protocolProvider.dbPath, testFileName);
      expect(
        protocolProvider.state.value,
        const DBState.selected(),
      );
      await protocolProvider.dispose();
    });

    test('closeDb', () async {
      protocolProvider = ProtocolProvider();
      directory = await getApplicationDocumentsDirectory();
      testFileName = path.join(directory.path, 'protocol_test.sqlite');
      if (File(testFileName).existsSync()) {
        File(testFileName).deleteSync();
      }

      await protocolProvider.openDb(testFileName);
      await protocolProvider.closeDb();

      expect(protocolProvider.dbPath, null);
      expect(
        protocolProvider.state.value,
        const DBState.notSelected(),
      );
    });

    test('openDb for later use', () async {
      await protocolProvider.openDb(testFileName);
      expect(protocolProvider.dbPath, testFileName);
      expect(
        protocolProvider.state.value,
        const DBState.selected(),
      );
    });

    test('addStartNumber', () async {
      expect(
        await protocolProvider.addStartNumber(number: 1, time: '10:00:00'),
        null,
      );

      final List<StartItem>? secondAdd = await protocolProvider.addStartNumber(
        number: 1,
        time: '10:00:00',
      );
      expect(secondAdd?.first.number == 1, true);
      expect(secondAdd?.first.starttime == '10:00:00', true);

      expect(
        await protocolProvider.addStartNumber(
          number: 1,
          time: '10:01:00',
          forceAdd: true,
        ),
        null,
      );

      expect(
        await protocolProvider.addStartNumber(number: 2, time: '10:02:00'),
        null,
      );
      expect(
        await protocolProvider.addStartNumber(number: 3, time: '10:03:00'),
        null,
      );
      expect(
        await protocolProvider.addStartNumber(number: 4, time: '10:04:00'),
        null,
      );
      expect(
        await protocolProvider.addStartNumber(number: 5, time: '10:05:00'),
        null,
      );
    });

    test('getAllParticipantsAtStart', () async {
      final result = await protocolProvider.getAllParticipantsAtStart();
      expect(result.length, 5);
    });

    test('getStartingParticipants', () async {
      var result = await protocolProvider
          .getStartingParticipants('some wrong time')
          .onError((error, stackTrace) => []);
      expect(result, <StartItem>[]);
      result = await protocolProvider.getStartingParticipants('09:59:15');
      expect(result, <StartItem>[]);
      result = await protocolProvider.getStartingParticipants('10:00:15');
      expect(result.length, 1);
      expect(result.first.number, 1);
    });

    test('getStart', () async {
      expect(
        await protocolProvider
            .getStart('some wrong time')
            .onError((error, stackTrace) => 0),
        0,
      );
      expect(await protocolProvider.getStart('10:00:01'), 0);
      expect(await protocolProvider.getStart('10:00:51'), 1);
      expect(await protocolProvider.getStart('10:01:01,123'), 0);
      expect(await protocolProvider.getStart('10:01:56,345'), 1);
      expect(await protocolProvider.getStart('10:03:03'), 0);
      expect(await protocolProvider.getStart('10:04:00'), 1);
      expect(await protocolProvider.getStart('10:04:00,001'), 0);
      expect(await protocolProvider.getStart('10:05:11'), 0);
      expect(await protocolProvider.getStart('10:06:01'), 0);
    });

    test('updateAutomaticCorrection', () async {
      expect(
        await protocolProvider
            .updateAutomaticCorrection(
              time: 'some wrong time',
              correction: 1111,
              timeStamp: DateTime.now(),
            )
            .onError((error, stackTrace) => null),
        null,
      );
      expect(
        await protocolProvider.updateAutomaticCorrection(
          time: '10:01:01,111',
          correction: 1111,
          timeStamp: DateTime.now(),
        ),
        null,
      );
      final result = await protocolProvider.updateAutomaticCorrection(
        time: '10:01:02,222',
        correction: 2222,
        timeStamp: DateTime.now(),
      );
      expect(result?.length, 1);
      expect(result?.first.automaticstarttime, '10:01:01,111');
      expect(result?.first.automaticcorrection, 1111);
      expect(
        await protocolProvider.updateAutomaticCorrection(
          time: '10:01:02,222',
          correction: 2222,
          timeStamp: DateTime.now(),
          forceUpdate: true,
        ),
        null,
      );
      expect(
        await protocolProvider.updateAutomaticCorrection(
          time: '10:02:02,222',
          correction: 2222,
          timeStamp: DateTime.now(),
          forceUpdate: true,
        ),
        null,
      );
      expect(
        await protocolProvider.updateAutomaticCorrection(
          time: '10:03:03,3',
          correction: 3333,
          timeStamp: DateTime.now(),
          forceUpdate: true,
        ),
        null,
      );
      expect(
        await protocolProvider.updateAutomaticCorrection(
          time: '10:04:04,4444',
          correction: 4444,
          timeStamp: DateTime.now(),
          forceUpdate: true,
        ),
        null,
      );
    });

    test('updateManualStartTime', () async {
      expect(
        await protocolProvider.updateManualStartTime(DateTime(2020, 1, 1, 10)),
        0,
      );
      expect(
        await protocolProvider
            .updateManualStartTime(DateTime(2020, 1, 1, 10, 1, 1, 111)),
        1,
      );
      expect(
        await protocolProvider
            .updateManualStartTime(DateTime(2020, 1, 1, 10, 1, 59, 222)),
        1,
      );
      expect(
        await protocolProvider
            .updateManualStartTime(DateTime(2020, 1, 1, 10, 3, 1, 555)),
        1,
      );
      expect(
        await protocolProvider
            .updateManualStartTime(DateTime(2020, 1, 1, 10, 3, 30, 222)),
        0,
      );
      expect(
        await protocolProvider
            .updateManualStartTime(DateTime(2020, 1, 1, 10, 3, 50, 777)),
        1,
      );
    });

    test('UpdateItemInfoAtStart', () async {
      var item = const StartItem(
        id: 100,
        number: 1,
        automaticstarttime: '10:01:01,123',
        automaticcorrection: 1123,
        manualstarttime: '10:01:01,234',
        manualcorrection: 1234,
      );
      expect(await protocolProvider.updateItemInfoAtStart(item), 1);
      item = const StartItem(
        id: 100,
        number: 2,
        automaticstarttime: '10:02:02,234',
        automaticcorrection: 2234,
        manualstarttime: '10:02:02,345',
        manualcorrection: 2345,
      );
      expect(await protocolProvider.updateItemInfoAtStart(item), 1);
      item = const StartItem(
        id: 100,
        number: 6,
        automaticstarttime: '10:06:00',
        automaticcorrection: 6666,
        manualstarttime: '10:06:06,666',
        manualcorrection: 6666,
      );
      expect(await protocolProvider.updateItemInfoAtStart(item), 0);
    });

    test('setDNS', () async {
      expect(await protocolProvider.setDNS(1), 1);
      expect(await protocolProvider.setDNS(6), 0);
    });

    // Second test after automaticcorrection set
    test('getStartingParticipants', () async {
      var result = await protocolProvider.getStartingParticipants('09:59:15');
      expect(result, <StartItem>[]);
      result = await protocolProvider.getStartingParticipants('10:00:15');
      expect(result.length, 0);
    });

    test('getNextParticipants', () async {
      var result = await protocolProvider.getNextParticipants('09:00:00');
      expect(result.isNotEmpty, true);
      // Number 2 'cause number 1 is DNS
      expect(result.first.number, 2);
      result = await protocolProvider.getNextParticipants('10:03:00');
      expect(result.isNotEmpty, true);
      expect(result.first.number, 4);
      result = await protocolProvider.getNextParticipants('11:00:00');
      expect(result.isEmpty, true);
    });

    test('getNumbersOnTrace', () async {
      // Just check SQL query
      var result = await protocolProvider.getNumbersOnTrace();
      result = await protocolProvider.getNumbersOnTrace('10:00:00');
      expect(result.isEmpty, true);
      result = await protocolProvider.getNumbersOnTrace('10:01:30');
      // 'cause number 1 is DNS
      expect(result.isEmpty, true);
      result = await protocolProvider.getNumbersOnTrace('10:03:30');
      expect(result.length, 2);
      result = await protocolProvider.getNumbersOnTrace('10:05:30');
      expect(result.length, 4);
      result = await protocolProvider.getNumbersOnTrace('11:02:30');
      expect(result.length, 4);
    });

    test('getStartToCsv', () async {
      final result = await protocolProvider.getStartToCsv();
      // 4 'cause number 1 is DNS and counts, but number 5 not started````````````````````````````````````````````````````````````````````````````````````````````````````
      expect(result.length, 4);

      String? csv = mapListToCsv(null);
      expect(csv, null);
      csv = mapListToCsv(result);
      const String pattern =
          'number;starttime;automaticcorrection\r\n1;10:01:00;DNS\r\n2;10:02:00;2234\r\n3;10:03:00;3333\r\n4;10:04:00;4444';
      expect(csv, pattern);
    });

    test('addFinishTime', () async {
      var result = await protocolProvider.addFinishTime(
        finish: '10:03:01,123',
        timeStamp: DateTime.now(),
      );
      expect(result, null);
      result = await protocolProvider.addFinishTime(
        finish: '10:03:01,124',
        timeStamp: DateTime.now(),
        substituteNumbers: true,
        debugTimeNow: '11:00:00',
      );
      expect(result, 2);
      result = await protocolProvider.addFinishTime(
        finish: '10:03:01,125',
        timeStamp: DateTime.now(),
        finishDelay: 10,
      );
      expect(result, null);
      result = await protocolProvider.addFinishTime(
        finish: '10:04:04,456',
        timeStamp: DateTime.now(),
      );
      expect(result, null);
      result = await protocolProvider.addFinishTime(
        finish: '10:05:05,567',
        timeStamp: DateTime.now(),
        substituteNumbers: true,
        debugTimeNow: '11:00:00',
      );
      expect(result, 3);
      result = await protocolProvider.addFinishTime(
        finish: '10:05:05,678',
        timeStamp: DateTime.now(),
        substituteNumbers: true,
        substituteNumbersDelay: 200,
        debugTimeNow: '11:00:00',
      );
      expect(result, null);
      result = await protocolProvider.addFinishTime(
        finish: '10:07:05,899',
        timeStamp: DateTime.now(),
        substituteNumbers: true,
        substituteNumbersDelay: 200,
        debugTimeNow: '11:00:00',
      );
      expect(result, 4);
    });
    test('addFinishTimeManual', () async {
      var result = await protocolProvider.addFinishTimeManual('10:10:10,123');
      // Return rowId
      expect(result, 8);
      result = await protocolProvider.addFinishTimeManual('10:11:11,111');
      // Return rowId
      expect(result, 9);
    });

    test('hideFinish', () async {
      final result = await protocolProvider.hideFinish(8);
      expect(result, 1);
    });

    test('getFinishTime', () async {
      // 2 row hidden
      var result = await protocolProvider.getFinishTime();
      expect(result.length, 7);
      // Show all
      result = await protocolProvider.getFinishTime(
        hideMarked: false,
      );
      expect(result.length, 9);
      // Show only automatic
      result = await protocolProvider.getFinishTime(
        hideManual: true,
        hideMarked: false,
      );
      expect(result.length, 7);
      // Show only times without numbers
      result = await protocolProvider.getFinishTime(
        hideMarked: false,
        hideNumbers: true,
      );
      expect(result.length, 6);
    });

    test('addNumber', () async {
      var result = await protocolProvider.addNumber(9, 5, '10:11:11,111');
      expect(result, true);
      // Number 5 already exists at rowId 9
      result = await protocolProvider.addNumber(8, 5, '10:11:11,111');
      expect(result, false);
    });

    test('clearNumberAtFinish', () async {
      await protocolProvider.clearNumberAtFinish(5);
      final result = await protocolProvider.addNumber(9, 5, '10:11:11,111');
      expect(result, true);
    });

    test('setDNF', () async {
      final result = await protocolProvider.setDNF(4);
      // return rowId at finish table
      expect(result, 10);
    });

    test('hideAllFinish', () async {
      final result = await protocolProvider.hideAllFinish();
      // 9 lines changed (all finish lines)
      expect(result, 9);
    });

    test('getFinishToCsv', () async {
      final result = await protocolProvider.getFinishToCsv();
      expect(result.length, 4);

      final String? csv = mapListToCsv(result);
      const String pattern =
          'number;finishtime\r\n2;10:03:01,124\r\n3;10:05:05,567\r\n5;10:11:11,111\r\n4;DNF';
      expect(csv, pattern);
    });

    test('clearFinishResultsDebug', () async {
      final result = await protocolProvider.clearFinishResultsDebug();
      expect(result, 9);
    });

    test('clearStartResultsDebug', () async {
      final result = await protocolProvider.clearStartResultsDebug();
      expect(result, 5);
    });

    test('close', () async {
      await protocolProvider.dispose();
    });

    test('Remove DB', () {
      expect(File(testFileName).existsSync(), true);
      File(testFileName).deleteSync();
      expect(File(testFileName).existsSync(), false);
    });
  });
}
