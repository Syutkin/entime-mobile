import 'dart:io';

import 'package:entime/src/common/database/model/dbstate.dart';
import 'package:entime/src/feature/log/logic/log_provider.dart';
import 'package:entime/src/feature/log/model/log_level.dart';
import 'package:entime/src/feature/log/model/log_source.dart';
import 'package:entime/src/feature/log/model/log_source_direction.dart';
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

  group('LogProvider:', () {
    late Directory directory;
    late String testFileName;
    late ILogProvider logProvider;

    test('Correct initial state', () async {
      logProvider = LogProvider();

      expect(logProvider.state.value, const DBState.notSelected());
    });

    test('openDb', () async {
      logProvider = LogProvider();
      directory = await getApplicationDocumentsDirectory();
      testFileName = path.join(directory.path, 'log_test.sqlite');
      if (File(testFileName).existsSync()) {
        File(testFileName).deleteSync();
      }
      await logProvider.openDb(testFileName);

      expect(logProvider.dbPath, testFileName);
      expect(
        logProvider.state.value,
        const DBState.selected(),
      );
      await logProvider.dispose();
    });

    test('closeDb', () async {
      logProvider = LogProvider();
      directory = await getApplicationDocumentsDirectory();
      testFileName = path.join(directory.path, 'test_db.sqlite');
      if (File(testFileName).existsSync()) {
        File(testFileName).deleteSync();
      }

      await logProvider.openDb(testFileName);
      await logProvider.closeDb();

      expect(logProvider.dbPath, null);
      expect(
        logProvider.state.value,
        const DBState.notSelected(),
      );
    });

    test('openDb for later use', () async {
      await logProvider.openDb(testFileName);
      expect(logProvider.dbPath, testFileName);
      expect(
        logProvider.state.value,
        const DBState.selected(),
      );
    });

    test('add', () async {
      var result = await logProvider.addLog(
        level: LogLevel.information,
        source: LogSource.bluetooth,
        rawData: 'rawData',
        direction: LogSourceDirection.input,
      );
      expect(result, 1);
      result = await logProvider.addLog(
        level: LogLevel.error,
        source: LogSource.other,
        rawData: 'rawData',
      );
      expect(result, 2);
      result = await logProvider.addLog(
        level: LogLevel.debug,
        source: LogSource.unknown,
        rawData: 'rawData',
        direction: LogSourceDirection.undefined,
      );
      expect(result, 3);
      result = await logProvider.addLog(
        level: LogLevel.verbose,
        source: LogSource.bluetooth,
        rawData: 'rawData',
        direction: LogSourceDirection.output,
      );
      expect(result, 4);
    });

    test('getLog', () async {
      var result = await logProvider.getLog();
      expect(result.length, 4);
      result = await logProvider.getLog(
        direction: [LogSourceDirection.input, LogSourceDirection.output],
      );
      expect(result.length, 2);
      result = await logProvider.getLog(source: [LogSource.bluetooth]);
      expect(result.length, 2);
      result = await logProvider.getLog(limit: 3);
      expect(result.length, 3);
      result = await logProvider.getLog(
        level: [
          LogLevel.error,
          LogLevel.warning,
        ],
      );
      expect(result.length, 1);
      result = await logProvider.getLog(
        level: [
          LogLevel.information,
          LogLevel.verbose,
        ],
      );
      expect(result.length, 2);
    });

    test('close', () async {
      await logProvider.dispose();
    });

    test('Remove DB', () {
      expect(File(testFileName).existsSync(), true);
      File(testFileName).deleteSync();
      expect(File(testFileName).existsSync(), false);
    });
  });
}
