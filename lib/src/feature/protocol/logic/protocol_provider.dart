import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sqflite/sqflite.dart';

import '../../../common/database/logic/database_provider.dart';
import '../../../common/database/model/dbstate.dart';
import '../../../common/logger/logger.dart';
import '../../../common/utils/helper.dart';
import '../protocol.dart';

abstract class IProtocolProvider extends IDatabaseProvider {
  // ----------------старт----------------
  Future<List<StartItem>> getAllParticipantsAtStart();

  Future<List<Map<String, Object?>>> getStartToCsv();

  /// Проверяем есть ли стартующий около времени [beepTime]
  /// Возвращает 0 если стартующего нет
  Future<int> getStart(String beepTime);

  /// Обновляет [StartItem].automaticstarttime и [StartItem].automaticcorrection
  /// Возвращает null при успехе, и [StartItem] при неудаче
  Future<List<StartItem>?> updateAutomaticCorrection({
    required String time,
    required int correction,
    required DateTime timeStamp,
    bool forceUpdate = false,
  });

  Future<int> updateManualStartTime(DateTime time);

  Future<int> updateItemInfoAtStart(StartItem item);

  Future<int> setDNS(int number);

  /// Обновляет или добавляет [StartItem].number и [StartItem].starttime
  /// Возвращает null при успехе, и [StartItem] если такое же стартовое время
  /// уже установлено для другого участника
  Future<List<StartItem>?> addStartNumber({
    required int number,
    required String time,
    bool forceAdd = false,
  });

  Future<int> clearStartResultsDebug();

  Future<List<StartItem>> getStartingParticipants(String time);

  Future<List<StartItem>> getNextParticipants(String time);

  // Загружает в протокол участников и их стартовое время (одно) из csv файла
  Future<void> loadStartItem(List<StartItemCsv> items);

  // ----------------номера на трассе----------------
  Future<List<StartItem>> getNumbersOnTrace([String? timeNow]);

// ----------------финиш----------------
  Future<List<FinishItem>> getFinishTime({
    bool hideMarked = true,
    bool hideNumbers = false,
    bool hideManual = false,
  });

  Future<List<Map<String, Object?>>> getFinishToCsv();

  /// Записывает финишное время
  ///
  /// Возвращает автоматически присвоенный номер или null
  ///
  /// Если новое финишное время отличается менее чем на [finishDelay]
  /// от предыдущего нескрытого, неручного финишного времени без присвоенного номера,
  /// то записываемое время будет автоматически скрыто
  Future<int?> addFinishTime({
    required String finish,
    required DateTime timeStamp,
    int finishDelay = 0,
    bool substituteNumbers = false,
    int substituteNumbersDelay = 0,
    String? debugTimeNow,
    int? number,
  });

  Future<int> addFinishTimeManual(String time);

  Future<int> hideFinish(int id);

  Future<int> hideAllFinish();

  Future<int> clearFinishResultsDebug();

  Future<bool> addNumber(int id, int number, String finishtime);

  Future<void> clearNumberAtFinish(int number);

  Future<int> setDNF(int number);
}

class ProtocolProvider implements IProtocolProvider {
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
        onOpen: (db) async {
          logger.v(
            'SQLite version: ${(await db.rawQuery('SELECT sqlite_version()')).first.values.first}',
          );
        },
        onCreate: (db, version) async {
          await db.execute(
            '''
        CREATE TABLE IF NOT EXISTS 'start' (
        	'id'	                INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
        	'number'	            INTEGER NOT NULL UNIQUE,
        	'starttime'	          TEXT,
        	'automaticstarttime'	TEXT,
        	'automaticcorrection'	INTEGER,
        	'automaticphonetime'	TEXT,
        	'manualstarttime'	    TEXT,
        	'manualcorrection'	  INTEGER,
        	'finishtime'	        TEXT
        );''',
          );
          await db.execute(
            '''
        CREATE TABLE IF NOT EXISTS 'finish' (
        	'id'	        INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
        	'number'	    INTEGER UNIQUE,
        	'finishtime'  TEXT,
        	'phonetime'	  TEXT,
        	'set'	        INTEGER,
        	'manual'	    INTEGER
        );''',
          );
          await db.execute(
            '''
        CREATE TABLE IF NOT EXISTS 'main' (
          'id'      INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	        'category'	TEXT,
	        'number'	INTEGER NOT NULL UNIQUE,
	        'name'	TEXT,
	        'nickname'	TEXT,
	        'age'	TEXT,
	        'team'	TEXT,
	        'city'	TEXT
	       );''',
          );
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

  // ----------------старт----------------
  @override
  Future<List<StartItem>> getAllParticipantsAtStart() async {
    final db = await _db;
    final res = await db.rawQuery(
      '''
        SELECT
          start.id as id,
          start.number as number,
          start.starttime as starttime,
          start.automaticstarttime as automaticstarttime,
          start.automaticcorrection as automaticcorrection,
          start.automaticphonetime as automaticphonetime,
          start.manualstarttime as manualstarttime,
          start.manualcorrection as manualcorrection,
          start.finishtime as finishtime,
          main.category as category,
          main.name as name,
          main.nickname as nickname,
          main.age as age,
          main.team as team,
          main.city as city
        FROM start, main
        WHERE starttime NOTNULL
          AND main.number = start.number
          AND (automaticstarttime NOT LIKE 'DNS' OR automaticstarttime ISNULL)
        ORDER BY starttime ASC
        ''',
    );
    final List<StartItem> protocol =
        res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
    return protocol;
  }

  //ToDo: посмотреть как сделано
  @override
  Future<List<Map<String, Object?>>> getStartToCsv() async {
    final db = await _db;
    final result = await db.rawQuery(
      '''
        SELECT number, starttime,
        IFNULL (automaticcorrection, IFNULL (manualcorrection, 'DNS')) automaticcorrection
        FROM start
        WHERE starttime NOTNULL AND
            (automaticcorrection NOT NULL
             OR manualcorrection NOT NULL
             OR automaticstarttime IS 'DNS')
        ORDER BY starttime ASC
        ''',
    );
    return result;
  }

  //Проверяем есть ли стартующий около времени [beepTime]
  //Возвращает 0 если стартующего нет
  @override
  Future<int> getStart(String beepTime) async {
    final DateTime? beepDateTime = strTimeToDateTime(beepTime);
    if (beepDateTime == null) {
      assert(beepDateTime != null, 'beepDateTime must not be null');
      return 0;
    }
    final DateTime timeAfter = beepDateTime.add(const Duration(seconds: 10));
    final String after = DateFormat('HH:mm:ss').format(timeAfter);
    final db = await _db;
    final x = await db.rawQuery(
      '''
        SELECT COUNT(*) FROM start
        WHERE starttime BETWEEN '$beepTime' AND '$after'
          AND (automaticstarttime NOT LIKE 'DNS' OR automaticstarttime ISNULL);
        ''',
    );
    final int? count = Sqflite.firstIntValue(x);
    if (count == null) {
      return 0;
    }
    return count;
  }

  /// Обновляет [StartItem].automaticstarttime и [StartItem].automaticcorrection
  /// Возвращает null при успехе, и [StartItem] при неудаче
  @override
  Future<List<StartItem>?> updateAutomaticCorrection({
    required String time,
    required int correction,
    required DateTime timeStamp,
    bool forceUpdate = false,
  }) async {
    final db = await _db;
    final DateTime? dateGoTime = strTimeToDateTime(time);
    if (dateGoTime == null) {
      assert(dateGoTime != null, 'dateGoTime must not be null');
      return null;
    }
    final DateTime timeBefore =
        dateGoTime.subtract(const Duration(seconds: 15));
    final DateTime timeAfter = dateGoTime.add(const Duration(seconds: 15));
    final String before = DateFormat('HH:mm:ss').format(timeBefore);
    final String after = DateFormat('HH:mm:ss').format(timeAfter);
    final String phoneTime = DateFormat('HH:mm:ss,S').format(timeStamp);

    // Если не обновлять принудительно, то
    // проверяем что автоматическое время старта не установлено,
    // в этом случае устанавливаем время старта и вовращаем null.
    // В противном случае возвращаем StartItem.
    if (!forceUpdate) {
      logger.i('Database -> Checking existing start time...');
      final res = await db.rawQuery(
        '''
        SELECT *
        FROM start
        WHERE starttime BETWEEN ? AND ?
        ''',
        [before, after],
      );
      final List<StartItem> startProtocol =
          res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
      if (startProtocol.isNotEmpty &&
          startProtocol.first.automaticstarttime != null) {
        logger.i('Database -> Start time exists');
        return startProtocol;
      }
    }

    final int result = await db.rawUpdate(
      '''
        UPDATE start
        SET
          automaticstarttime = ?,
          automaticcorrection = ?,
          automaticphonetime = ?
        WHERE
          starttime BETWEEN ? AND ?
        ''',
      [time, correction, phoneTime, before, after],
    );
    logger.i('Database -> updated: $result lines');
    return null;
  }

//ToDo: исправить выставление значения только первому совпадению
  @override
  Future<int> updateManualStartTime(DateTime time) async {
    int result = 0;
    final db = await _db;
    final DateTime timeBefore = time.subtract(const Duration(seconds: 15));
    final DateTime timeAfter = time.add(const Duration(seconds: 15));
    final String before = DateFormat('HH:mm:ss').format(timeBefore);
    final String after = DateFormat('HH:mm:ss').format(timeAfter);
    final String manualStartTime = DateFormat('HH:mm:ss,S').format(time);

    final res = await db.rawQuery(
      '''
        SELECT id, number, starttime
        FROM start
        WHERE starttime BETWEEN ? AND ?
        ''',
      [before, after],
    );
    final List<StartItem> startProtocol =
        res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
    if (startProtocol.isNotEmpty && startProtocol.first.starttime != null) {
      final DateTime? startTime =
          strTimeToDateTime(startProtocol.first.starttime!);
      if (startTime == null) {
        assert(startTime != null, 'startTime must not be null');
        return result;
      }
      final Duration correction = startTime.difference(time);
      result = await db.rawUpdate('''
        UPDATE start
        SET manualstarttime = ?, manualcorrection = ?
        WHERE number = ?
        ''', [
        manualStartTime,
        correction.inMilliseconds,
        startProtocol.first.number
      ]);
      if (result > 0) {
        logger.i(
          'Database -> Update manual start time for number ${startProtocol.first.number}',
        );
      } else {
        logger.i(
          'Database -> Error at updating manual start time for number ${startProtocol.first.number}',
        );
      }
    } else {
      logger.i(
        'Database -> Cannot find participant with start time around $time',
      );
    }
    return result;
  }

  @override
  Future<int> updateItemInfoAtStart(StartItem item) async {
    final db = await _db;
    final result = await db.rawUpdate(
      '''
        UPDATE start
        SET automaticstarttime = ?,
            automaticcorrection = ?,
            manualstarttime = ?,
            manualcorrection = ?
        WHERE number = ?
        ''',
      [
        item.automaticstarttime,
        item.automaticcorrection,
        item.manualstarttime,
        item.manualcorrection,
        item.number
      ],
    );
    if (result > 0) {
      logger.i(
        'UpdateItemInfoAtStart -> Start info for number ${item.number} updated',
      );
    } else {
      logger.i(
        'UpdateItemInfoAtStart -> Start info for number ${item.number} not updated',
      );
    }
    return result;
  }

//  setStart(int number, String time, int correction) async {
//    final db = await _db;
//    var result = await db.rawUpdate('''
//        UPDATE start
//        SET starttime = ?, automaticcorrection = ?
//        WHERE number = ?
//        ''', [time, correction, number]);
//    logger.('Database -> updated: ' + result.toString() + ' lines');
//    return result;
//  }

  @override
  Future<int> setDNS(int number) async {
    final db = await _db;
    final result = await db.rawUpdate(
      '''
        UPDATE start
        SET automaticstarttime = 'DNS', automaticcorrection = NULL,
            manualstarttime = NULL, manualcorrection = NULL
        WHERE number = ?
        ''',
      [number],
    );
    if (result > 0) {
      logger.i('Database -> Set DNS to number: $number');
    } else {
      logger.i('Database -> Can not find number: $number, DNS not set');
    }
    return result;
  }

  /// Обновляет или добавляет [StartItem].number и [StartItem].starttime
  /// Возвращает null при успехе, и [StartItem] если такое же стартовое время
  /// уже установлено для другого участника
  @override
  Future<List<StartItem>?> addStartNumber({
    required int number,
    required String time,
    bool forceAdd = false,
  }) async {
    final db = await _db;

    // Если не принудительно добавлять/обновлять, то
    // проверяем, что такого же времени старта не установлено другому номеру,
    // или что номеру не установлено автоматическое или ручное время старта.
    // Если истина, то добавляем номер, ставим время старта (или обновляем
    // время старта у существующего номера) и возвращаем null.
    // В противном случае возвращаем StartItem.
    if (!forceAdd) {
      logger.i('Database -> Checking start time $time and number $number...');
      final res = await db.rawQuery(
        '''
        SELECT *
        FROM start
        WHERE starttime IS ?
          OR (number IS ?
          AND (automaticstarttime NOTNULL OR manualstarttime NOTNULL))
        ''',
        [time, number],
      );
      final List<StartItem> startProtocol =
          res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
      if (startProtocol.isNotEmpty) {
        logger.i(
          'Database -> Start time $time '
          'already set or number $number already started',
        );
        return startProtocol;
      }
    }

    await db.insert(
      'start',
      {'number': number, 'starttime': time},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await db.insert(
      'main',
      {'number': number},
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
    return null;
  }

  @override
  Future<int> clearStartResultsDebug() async {
    final db = await _db;
    final result = await db.rawUpdate(
      '''
        UPDATE start
        SET automaticstarttime = NULL, automaticcorrection = NULL,
            manualstarttime = NULL, manualcorrection = NULL
        ''',
    );
    logger.i('Database -> Results cleared');
    return result;
  }

//ToDo: посмотреть как сделано
  @override
  Future<List<StartItem>> getStartingParticipants(String time) async {
    final DateTime? dateTime = strTimeToDateTime(time);
    if (dateTime == null) {
      assert(dateTime != null, 'dateTime must not be null');
      return [];
    }
    final DateTime timeAfter = dateTime.add(const Duration(minutes: 1));
    final String after = DateFormat('HH:mm:ss').format(timeAfter);
    final db = await _db;
    final res = await db.rawQuery(
      '''
        SELECT start.id as id, start.number as number,
          start.starttime as starttime, start.automaticstarttime as automaticstarttime,
          start.automaticcorrection as automaticcorrection, main.name as name
        FROM start, main
        WHERE (starttime BETWEEN '$time' AND '$after') AND main.number = start.number
          AND (automaticstarttime NOT LIKE 'DNS' OR automaticstarttime ISNULL);
        ''',
    );
    final List<StartItem> startProtocol =
        res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
    return startProtocol;
  }

  @override
  Future<List<StartItem>> getNextParticipants(String time) async {
    final db = await _db;
    final res = await db.rawQuery(
      '''
        SELECT start.id as id, start.number as number,
          start.starttime as starttime, start.automaticstarttime as automaticstarttime,
          start.automaticcorrection as automaticcorrection, main.name as name
        FROM start, main
        WHERE starttime > '$time' AND main.number = start.number
          AND (automaticstarttime NOT LIKE 'DNS' OR automaticstarttime ISNULL)
        ORDER BY starttime ASC;
        ''',
    );
    final List<StartItem> startProtocol =
        res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
    return startProtocol;
  }

  /// Загружает в протокол участников и их стартовое время (одно) из csv файла
  @override
  Future<void> loadStartItem(List<StartItemCsv> items) async {
    final db = await _db;
    final batch = db.batch();

    for (final item in items) {
      batch
        ..insert(
          'start',
          {
            'number': item.number,
            'starttime': item.starttime,
          },
          conflictAlgorithm: ConflictAlgorithm.replace,
        )
        ..insert(
          'main',
          {
            'number': item.number,
            'category': item.category,
            'name': item.name,
            'nickname': item.nickname,
            'age': item.age,
            'team': item.team,
            'city': item.city,
          },
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    }
    await batch.commit(noResult: true, continueOnError: true);
    logger.i('Database -> Loaded data from csv to start protocol');
  }

// ----------------номера на трассе----------------
//ToDo: посмотреть как сделано
  @override
  Future<List<StartItem>> getNumbersOnTrace([String? timeNow]) async {
    timeNow ??= "now', 'localtime";
    final db = await _db;
    final res = await db.rawQuery(
      '''
        SELECT id, number
        FROM start
        WHERE julianday(time('$timeNow')) > julianday(time(starttime))
        AND finishtime IS NULL
        AND (automaticstarttime NOT LIKE 'DNS' OR automaticstarttime ISNULL)
        ORDER BY starttime ASC
        ''',
    );
    final List<StartItem> startProtocol =
        res.isNotEmpty ? res.map((c) => StartItem.fromJson(c)).toList() : [];
    return startProtocol;
  }

// ----------------финиш----------------
  @override
  Future<List<FinishItem>> getFinishTime({
    bool hideMarked = true,
    bool hideNumbers = false,
    bool hideManual = false,
  }) async {
    final db = await _db;
    String sqliteQuery =
        'SELECT id, number, finishtime, "set", manual FROM finish';
    if (hideMarked || hideNumbers || hideManual) {
      sqliteQuery += ' WHERE ';
    }
    final sqliteTail = <String>[];
    if (hideMarked) {
      sqliteTail.add('"set" ISNULL');
    }
    if (hideNumbers) {
      sqliteTail.add('number ISNULL');
    }
    if (hideManual) {
      sqliteTail.add('manual ISNULL');
    }
    sqliteQuery += sqliteTail.join(' AND ');
    final res = await db.rawQuery(sqliteQuery);
    final List<FinishItem> finishProtocol =
        res.isNotEmpty ? res.map((c) => FinishItem.fromJson(c)).toList() : [];
    return finishProtocol;
  }

//ToDo: посмотреть как сделано
  @override
  Future<List<Map<String, Object?>>> getFinishToCsv() async {
    final db = await _db;
    final result = await db.rawQuery(
      '''
        SELECT number, finishtime
        FROM finish
        WHERE number NOTNULL
        ORDER BY finishtime ASC
        ''',
    );
    return result;
  }

  /// Записывает финишное время
  ///
  /// Возвращает автоматически присвоенный номер или null
  ///
  /// Если новое финишное время отличается менее чем на [finishDelay]
  /// от предыдущего нескрытого, неручного финишного времени без присвоенного номера,
  /// то записываемое время будет автоматически скрыто
  @override
  Future<int?> addFinishTime({
    required String finish,
    required DateTime timeStamp,
    int finishDelay = 0,
    bool substituteNumbers = false,
    int substituteNumbersDelay = 0,
    String? debugTimeNow,
    int? number,
  }) async {
    int? hide;
    int? workingNumber = number;
    // узнаём предыдущее нескрытое автоматическое время
    final prevFinishTime = await _prevFinishTime();
    // проверяем разницу между предыдущей и поступившей отсечкой
    if (prevFinishTime != null) {
      final finishTime = strTimeToDateTime(finish);
      if (finishTime == null) {
        assert(finishTime != null, 'finishTime must not be null');
        return null;
      }
      final difference = finishTime.difference(prevFinishTime);
      // скрываем отсечку, если разница меньше настройки
      if (difference.inMilliseconds < finishDelay) {
        hide = 1;
      }
    }

    // если номер не был передан, пробуем автоматически поставить номер
    // если автоматически ставим номер, то ставим номер только в нескрытую отсечку,
    // если разница между предыдущим временем с финишем больше настройки
    // или нет предыдущей нескрытой отсечки
    if (workingNumber == null && substituteNumbers && hide == null) {
      // если нет нескрытого предыдущего времени - ставим номер
      if (prevFinishTime == null) {
        workingNumber = await _getAwaitingNumber(debugTimeNow);
      } else {
        // ищем предыдущее время финиша с номером
        final lastFinishTime = await _lastFinishTime();
        // если есть, проверяем разницу между финишами
        // если больше разницы в настройках - ставим номер
        if (lastFinishTime != null) {
          final finishTime = strTimeToDateTime(finish);
          if (finishTime == null) {
            assert(finishTime != null, 'finishTime must not be null');
            return null;
          }
          final difference = finishTime.difference(lastFinishTime);
          if (difference.inMilliseconds > substituteNumbersDelay) {
            workingNumber = await _getAwaitingNumber(debugTimeNow);
          }
          // если предыдущего времени с номером нет - ставим номер
        } else {
          workingNumber = await _getAwaitingNumber(debugTimeNow);
        }
      }
    }

    final String phoneTime = DateFormat('HH:mm:ss,S').format(timeStamp);
    final db = await _db;
    await db.insert('finish', {
      'finishtime': finish,
      'phonetime': phoneTime,
      '"set"': hide,
      'number': workingNumber,
    });
    logger.i('Database -> Automatic finish time added: $finish');
    if (workingNumber != null) {
      await db.update(
        'start',
        {'finishtime': finish},
        where: 'number = $workingNumber',
      );
      logger.i(
        'Database -> Automatically add number $workingNumber to finish time: $finish',
      );
    }
    return workingNumber;
  }

  @override
  Future<int> addFinishTimeManual(String time) async {
    final db = await _db;
    final result = await db.insert('finish', {
      'finishtime': time,
      'manual': 1,
    });
    logger.i('Database -> Manual finish time added: $time');
    return result;
  }

  @override
  Future<int> hideFinish(int id) async {
    final db = await _db;
    final result = await db.rawUpdate(
      '''
        UPDATE finish
        SET "set" = 1
        WHERE id = $id
        ''',
    );
    logger.i('Database -> Finish times hided');
    return result;
  }

  @override
  Future<int> hideAllFinish() async {
    final db = await _db;
    final result = await db.rawUpdate(
      '''
        UPDATE finish
        SET "set" = 1
        ''',
    );
    logger.i('Database -> All finish times hided');
    return result;
  }

  @override
  Future<int> clearFinishResultsDebug() async {
    final db = await _db;
    var result = await db.rawUpdate(
      '''
        UPDATE start
        SET finishtime = NULL
        ''',
    );
    result = await db.rawUpdate(
      '''
        UPDATE finish
        SET number = NULL, "set" = NULL
        ''',
    );
    logger.i('Database -> Results cleared');
    return result;
  }

  @override
  Future<bool> addNumber(int id, int number, String finishtime) async {
    final db = await _db;
    try {
      await db.update('finish', {'number': number}, where: 'id = $id');
    } on DatabaseException {
      logger.i(
        'Database -> Number $number already exists and therefore has not been added',
      );
      return false;
    }
    await db.update(
      'start',
      {'finishtime': finishtime},
      where: 'number = $number',
    );
    logger.i(
      'Database -> Number $number added at rowid $id with finishtime: $finishtime',
    );
    return true;
  }

  @override
  Future<void> clearNumberAtFinish(int number) async {
    final db = await _db;
    await db.update('finish', {'number': null}, where: 'number = $number');
    await db.update('start', {'finishtime': null}, where: 'number = $number');
    logger.i('Database -> Finishtime for number $number cleared');
  }

  @override
  Future<int> setDNF(int number) async {
    final db = await _db;
    var result = await db.rawUpdate(
      '''
        UPDATE start
        SET finishtime = 'DNF'
        WHERE number = ?
        ''',
      [number],
    );

    result = await db.insert(
      'finish',
      {
        'finishtime': 'DNF',
        'number': number,
        'set': 1,
        'manual': 1,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    logger.i('Database -> Set DNF to number: $number');
    return result;
  }

  @override
  Future<void> dispose() async {
    await _database?.close();
    await _dbStateController.close();
  }

// -------------------------
// вспомогательные функции

  Future<DateTime?> _prevFinishTime() async {
    DateTime? prevFinishTime;
    final db = await _db;
    final res = await db.rawQuery(
      '''
        SELECT id, finishtime
        FROM finish
        WHERE "set" ISNULL and manual ISNULL
        ORDER BY finishtime DESC LIMIT 1;
    ''',
    );

    final List<FinishItem> prevFinishProtocol =
        res.isNotEmpty ? res.map((c) => FinishItem.fromJson(c)).toList() : [];
    if (prevFinishProtocol.isNotEmpty &&
        prevFinishProtocol.first.finishtime.isNotEmpty) {
      prevFinishTime = strTimeToDateTime(prevFinishProtocol.first.finishtime);
    }
    return prevFinishTime;
  }

  Future<DateTime?> _lastFinishTime() async {
    DateTime? result;
    final db = await _db;
    final res = await db.rawQuery(
      '''
        SELECT id, finishtime
        FROM finish
        WHERE number NOTNULL AND finishtime NOT like "DNF" AND finishtime NOT like "DNS"
        ORDER BY finishtime DESC LIMIT 1;
    ''',
    );

    final List<FinishItem> item =
        res.isNotEmpty ? res.map((c) => FinishItem.fromJson(c)).toList() : [];
    if (item.isNotEmpty && item.first.finishtime.isNotEmpty) {
      result = strTimeToDateTime(item.first.finishtime);
    }
    return result;
  }

  Future<int?> _getAwaitingNumber([String? debugTimeNow]) async {
    int? number;
    final numbersOnTraceProtocol = await getNumbersOnTrace(debugTimeNow);
    if (numbersOnTraceProtocol.isNotEmpty) {
      number = numbersOnTraceProtocol.first.number;
      logger.i('Awaiting number: $number');
    }
    return number;
  }
}
