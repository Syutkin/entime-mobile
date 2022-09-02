import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sqflite/sqflite.dart';

import '../../../common/database/logic/database_provider.dart';
import '../../../common/database/model/dbstate.dart';
import '../log.dart';

abstract class ILogProvider extends IDatabaseProvider {
// ToDo:
// надо прикинуть как именно вести лог и что туда писать
// сделать фильтры аналогичные финишу
// новый файл каждые сутки
// удалять старые файлы (глубина удаления настраиваемая)

// logdb:
// 1. timeStamp - time
// 2. от кого получена/кому отправлена инфа - source
// 3. Направление отправлено/получено - direction
// 4. сырая информация - rawData

// ----------------лог----------------
  Future<List<Log>> getLog({
    List<LogLevel>? level,
    List<LogSource>? source,
    List<LogSourceDirection>? direction,
    int limit = -1,
  });

  Future<int> addLog({
    required LogLevel level,
    required LogSource source,
    required String rawData,
    LogSourceDirection? direction,
  });
}

class LogProvider implements ILogProvider {
  Database? _database;

  String? _dbPath;

  @override
  String? get dbPath => _dbPath;

  @override
  Future<void> openDb(String path) async {
    if (_dbPath != path) {
      await _database?.close();
      _dbPath = path;
      _database = await _initDB(path);
      _dbStateController.add(const DBState.selected());
    }
  }

  @override
  Future<void> closeDb() async {
    _dbPath = null;
    _dbStateController.add(const DBState.notSelected());
    await _database?.close();
  }

  final _dbStateController =
      BehaviorSubject<DBState>.seeded(const DBState.notSelected());

  @override
  BehaviorSubject<DBState> get state => _dbStateController;

  // @override
  Future<Database> get _db async {
    if (_database != null) {
      return _database!;
    }
    //ToDo: potential errors lives here
    _database = await _initDB(_dbPath!);
    return _database!;
  }

  Future<Database> _initDB(String path) async => openDatabase(
        path,
        version: 1,
        // onOpen: (db) async {},
        onCreate: (db, version) async {
          await db.execute(
            '''
          CREATE TABLE "log" (
	        "id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	        "level"	TEXT NOT NULL,
	        "timeStamp"	TEXT NOT NULL,
	        "source"	TEXT NOT NULL,
	        "direction"	TEXT NOT NULL,
	        "rawData"	TEXT
	        );
        ''',
          );
        },
//      onUpgrade: (Database db, int oldVersion, int newVersion) async {
//        logger.('onUpgrade');
//      },
//      onDowngrade: (Database db, int oldVersion, int newVersion) async {
//        logger.('onDowngrade');
//      },
      );

  // ----------------лог----------------
  @override
  Future<List<Log>> getLog({
    List<LogLevel>? level,
    List<LogSource>? source,
    List<LogSourceDirection>? direction,
    int limit = -1,
  }) async {
    final db = await _db;

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
        list.isNotEmpty ? list.map((c) => Log.fromJson(c)).toList() : [];
    return log;
  }

  @override
  Future<int> addLog({
    required LogLevel level,
    required LogSource source,
    required String rawData,
    LogSourceDirection? direction,
  }) async {
    final String timeStamp =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    final db = await _db;
    final result = await db.insert('log', {
      'level': level.toStr,
      'timeStamp': timeStamp,
      'source': source.toStr,
      'direction': direction.toStr,
      'rawData': rawData,
    });
    _dbStateController.add(const DBState.selected(updated: true));
    return result;
  }

  @override
  Future<void> dispose() async {
    await _database?.close();
    await _dbStateController.close();
  }
}
