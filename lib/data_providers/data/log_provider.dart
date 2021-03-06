import 'dart:async';
import 'dart:io';

import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../models/models.dart';
import '../../utils/logger.dart';

// ToDo:
// надо прикинуть как именно вести лог и что туда писать
// наверно надо делать в sqlite
// сделать фильтры аналогичные финишу
// новый файл каждые сутки
// удалять старые файлы (глубина удаления настраиваемая)

// logdb:
// 1. timeStamp - time
// 2. от кого получена/кому отправлена инфа - source
// 3. Направление отправлено/получено - direction
// 4. сырая информация - rawData

// abstract class LogProvider {
//   void log(String source, String text);
//   String readAll();
// }

class LogProvider {
  LogProvider._();

  static final LogProvider db = LogProvider._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    final String logPath = join(documentsDirectory.path, 'log.sqlite');
    return openDatabase(
      logPath,
      version: 1,
      onOpen: (db) async {
        logger.v(
            'SQLite version: ${(await db.rawQuery('SELECT sqlite_version()')).first.values.first}');
      },
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE "log" (
	        "id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	        "level"	TEXT NOT NULL,
	        "timeStamp"	TEXT NOT NULL,
	        "source"	TEXT NOT NULL,
	        "direction"	TEXT NOT NULL,
	        "rawData"	TEXT
	        );
        ''');
      },
//      onUpgrade: (Database db, int oldVersion, int newVersion) async {
//        logger.('onUpgrade');
//      },
//      onDowngrade: (Database db, int oldVersion, int newVersion) async {
//        logger.('onDowngrade');
//      },
    );
  }

  Future<List<Log>> getLog({
    List<LogLevel>? level,
    List<LogSource>? source,
    List<LogSourceDirection>? direction,
    int limit = -1,
  }) async {
    final db = await database;

    final List<String> whereArgs = [];
    String where;

    if (level != null && level.isNotEmpty) {
      final List<String> args = [];
      for (final type in level) {
        args.add("level LIKE '${type.toStr}'");
      }
      whereArgs.add(args.join(' OR '));
    }

    if (source != null && source.isNotEmpty) {
      final List<String> args = [];
      for (final type in source) {
        args.add("source LIKE '${type.toStr}'");
      }
      whereArgs.add(args.join(' OR '));
    }

    if (direction != null && direction.isNotEmpty) {
      final List<String> args = [];
      for (final type in direction) {
        args.add("direction LIKE '${type.toStr}'");
      }
      whereArgs.add(args.join(' OR '));
    }

    if (limit >= 0) {
      whereArgs.add('ROWID > (SELECT MAX(ROWID) FROM log) - $limit');
    }

    List<Map<String, dynamic>> list;
    if (whereArgs.isNotEmpty) {
      where = '(${whereArgs.join(') AND (')})';
      list = await db.query('log', where: where);
    } else {
      list = await db.query('log');
    }

    final List<Log> log =
        list.isNotEmpty ? list.map((c) => Log.fromMap(c)).toList() : [];
    return log;
  }

  Future<int> add({
    required LogLevel level,
    required LogSource source,
    required String rawData,
    LogSourceDirection? direction,
  }) async {
    final String timeStamp =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    final db = await database;
    final result = await db.insert('log', {
      'level': level.toStr,
      'timeStamp': timeStamp,
      'source': source.toStr,
      'direction': direction.toStr,
      'rawData': rawData,
    });
    return result;
  }

  Future<void> close() async {
    await _database?.close();
  }
}
