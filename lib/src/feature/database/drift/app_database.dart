import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/constants/date_time_formats.dart';
import 'package:entime/src/feature/csv/model/race_csv.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/extension_on_string.dart';
import '../../log/log.dart';

part 'app_database.g.dart';

@DriftDatabase(
  include: {'tables.drift'},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.forTesting(DatabaseConnection super.connection);

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        // Create all tables
        await m.createAll();
        // Populate DB with statuses
        await customInsert('''INSERT INTO statuses (id, type) VALUES
          (1, '${ParticipantStatus.active.name}'),
        (2, '${ParticipantStatus.dns.name}'),
        (3, '${ParticipantStatus.dnf.name}'),
        (4, '${ParticipantStatus.dsq.name}');''');
      },
      beforeOpen: (details) async {
        // Enable foreign_keys
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }

  @override
  int get schemaVersion => 1;

  /// Весь список гонок, кроме "удалённых" (is_deleted = true)
  Selectable<Race> getRaces() {
    return _getRaces();
  }

  Future<Race> getRace(int id) {
    return (select(races)
          ..where((r) => r.id.equals(id))
          ..limit(1))
        .getSingle();
  }

  /// Добавляет новую гонку
  Future<int> addRace(
      {required String name,
      String? startDate,
      String? finishDate,
      String? location}) {
    return _addRace(
        name: name,
        startDate: startDate,
        finishDate: finishDate,
        location: location);
  }

  /// Удаляет гонку с [id]
  Future<int> deleteRace({required int id}) {
    return _deleteRace(id: id);
  }

  /// Весь список спецучастков, кроме "удалённых" (is_deleted = true)
  Selectable<Stage> getStages({required int raceId}) {
    return _getStages(raceId: raceId);
  }

  /// Добавляет спецучасток
  Future<int> addStage(
      {int? trailId, required int raceId, required String name}) {
    return _addStage(raceId: raceId, name: name, trailId: trailId);
  }

  /// Удаляет спецучасток с [id]
  Future<int> deleteStage({required int id}) {
    return _deleteStage(id: id);
  }

  /// Добавляет гонщика
  Future<int> addRider({
    required String name,
    String? nickname,
    String? city,
    String? team,
    String? birthday,
    String? comment,
    String? email,
    String? phone,
  }) {
    return _addRider(
      name: name,
      nickname: nickname,
      city: city,
      team: team,
      birthday: birthday,
      comment: comment,
      email: email,
      phone: phone,
    );
  }

  /// Добавляет участника соревнований
  Future<int> addParticipant({
    required int raceId,
    required int riderId,
    required int number,
    String? category,
    String? rfid,
  }) {
    return _addParticipant(
      raceId: raceId,
      riderId: riderId,
      number: number,
      category: category,
      rfid: rfid,
    );
  }

  /// Список участников на старте
  ///
  /// Список содержит только участников со статусом [ParticipantStatus.active]
  /// Статус учитывается и для старта на спецучастке,
  /// и непосредственно для участника
  Selectable<ParticipantAtStart> getParticipantsAtStart(
      {required int stageId}) {
    return _getParticipantsAtStart(stageId: stageId);
  }

  /// Обновляет или добавляет участника с заданным [number] и [startTime]
  /// Возвращает null при успехе, и список участников если такое же стартовое время
  /// уже установлено для других участников
  Future<List<StartingParticipant>?> addStartNumber({
    required Stage stage,
    required int number,
    required String startTime,
    bool forceAdd = false,
  }) async {
    // Если не принудительно добавлять/обновлять, то
    // проверяем, что такого же времени старта не установлено другому номеру,
    // или что номеру не установлено автоматическое или ручное время старта.
    // Если истина, то добавляем номер, ставим время старта (или обновляем
    // время старта у существующего номера) и возвращаем null.
    // В противном случае возвращаем список конфликтующих участников.
    if (!forceAdd) {
      logger.i(
        'Database -> Checking start time $startTime and number $number...',
      );
      final res = await _getExistedStartingParticipants(
        stageId: stage.id,
        startTime: startTime,
        number: number,
      ).get();
      if (res.isNotEmpty) {
        logger.i(
          'Database -> Start time $startTime '
          'already set or number $number already started',
        );
        return res;
      } else {
        logger.i(
          'Database -> Start time $startTime and number $number not found',
        );
      }
    }

    logger.i(
      'Database -> Checking number $number at participants...',
    );
    final participantAtRace = await (select(participants)
          ..where(
            (participant) =>
                participant.number.equals(number) &
                participant.raceId.equals(stage.raceId),
          ))
        .get();

    if (participantAtRace.isEmpty) {
      //Участника с заданным номером не было в соревновании, создаём запись в riders, participants и в starts
      logger.i(
        'Database -> Creating new participant with number $number and start time $startTime...',
      );
      // Поскольку имя участика обязательно, ставим ему вместо имени название соревнования
      // ToDo: возможность редактировать гонщиков
      final raceName = (await (select(races)
                ..where(
                  (name) => races.id.equals(stage.raceId),
                ))
              .get())
          .first
          .name;
      final int ridersId = await into(riders).insert(
        RidersCompanion(
          name: Value('$number, $raceName'),
        ),
      );
      final int participantsId = await into(participants).insert(
        ParticipantsCompanion(
          number: Value(number),
          raceId: Value(stage.raceId),
          riderId: Value(ridersId),
        ),
      );
      await into(starts).insert(
        StartsCompanion(
          startTime: Value(startTime),
          participantId: Value(participantsId),
          stageId: Value(stage.id),
        ),
      );
    } else {
      logger.i(
        'Database -> Number $number already in participants list. Checking at starts...',
      );
      //Номер уже участвует в соревновании, ищем его на старте
      final start = await (select(starts)
            ..where(
              (start) =>
                  start.stageId.equals(stage.id) &
                  start.participantId.equals(participantAtRace.first.id),
            ))
          .get();
      // Если номера не было в стартовом протоколе на СУ, добавляем
      if (start.isEmpty) {
        logger.i(
          'Database -> Adding number $number to starts...',
        );
        await into(starts).insert(
          StartsCompanion(
            startTime: Value(startTime),
            participantId: Value(participantAtRace.first.id),
            stageId: Value(stage.id),
          ),
        );
      } else {
        //Номер уже был в стартовом протоколе, обновляем
        logger.i(
          'Database -> Number $number already in starts list. Update start time to $startTime...',
        );
        await (update(starts)
              ..where(
                (start) =>
                    start.participantId.equals(participantAtRace.first.id),
              ))
            .write(
          StartsCompanion(
            automaticCorrection: const Value(null),
            automaticStartTime: const Value(null),
            manualCorrection: const Value(null),
            manualStartTime: const Value(null),
            startTime: Value(startTime),
            timestamp: const Value(null),
            statusId: const Value(1),
          ),
        );
      }
    }
    return null;
  }

  /// Устанавливает информацию об участнике на старте
  Future<int> setStartingInfo(
      {required String startTime,
      String? automaticStartTime,
      int? automaticCorrection,
      String? manualStartTime,
      int? manualCorrection,
      required int stageId,
      required int participantId}) {
    return _setStartingInfo(
      startTime: startTime,
      stageId: stageId,
      participantId: participantId,
      automaticCorrection: automaticCorrection,
      automaticStartTime: automaticStartTime,
      manualCorrection: manualCorrection,
      manualStartTime: manualStartTime,
    );
  }

  /// Обновляет automaticStartTime и automaticCorrection
  /// для !первого участника, стартовое время которого лежит в пределах
  /// плюс/минус [deltaInSeconds] от заданного [time].
  ///
  /// Возвращает null при успехе, и список [Start] при неудаче
  Future<List<StartingParticipant>?> updateAutomaticCorrection({
    required int stageId,
    required String time,
    required int correction,
    required DateTime timestamp,
    bool forceUpdate = false,
    required int deltaInSeconds,
  }) async {
    final DateTime? dateGoTime = time.toDateTime();
    if (dateGoTime == null) {
      throw FormatException('Invalid time format: $time');
      // assert(dateGoTime != null, 'dateGoTime must not be null');
      //   return null;
    }
    final String before = DateFormat(shortTimeFormat)
        .format(dateGoTime.subtract(Duration(seconds: deltaInSeconds)));
    final String after = DateFormat(shortTimeFormat)
        .format(dateGoTime.add(Duration(seconds: deltaInSeconds)));
    // final String phoneTime = DateFormat(longTimeFormat).format(timestamp);

    // Если не обновлять принудительно, то
    // проверяем что автоматическое время старта не установлено,
    // в этом случае устанавливаем время старта и вовращаем null.
    // В противном случае возвращаем StartItem.
    logger.i('Database -> Checking existing start time around $time...');
    final participantsAroundTime = await _getParticipantAroundTime(
      stageId: stageId,
      before: before,
      after: after,
    ).get();

    if (participantsAroundTime.isNotEmpty) {
      logger.i('Database -> Found participant with starting time '
          '${participantsAroundTime.first.startTime}...');
      if (!forceUpdate &&
          participantsAroundTime.first.automaticStartTime != null) {
        logger.i('Database -> Start time already exists');
        return participantsAroundTime;
      }

      final result = await (update(starts)
            ..where(
              (start) =>
                  start.stageId.equals(stageId) &
                  start.startTime.isBetweenValues(before, after),
            ))
          .write(
        StartsCompanion(
          automaticCorrection: Value(correction),
          automaticStartTime: Value(time),
          // startTime: Value(phoneTime),
          // ToDO: use drift DATETIME format
          timestamp: Value(timestamp.toIso8601String()),
          // statusId: const Value(1),
        ),
      );
      logger.i('Database -> updated: $result lines');
    } else {
      logger.i(
          'Database -> Can not find participant with start time around $time '
          'with $deltaInSeconds seconds delta');
    }
    return null;
  }

  //ToDo: исправить выставление значения только первому совпадению
  ///Устанавливает ручное стартовое время для участника
  ///
  ///Ищет участника с временем рядом с текущим (плюс-минус [deltaInSeconds] секунд)
  ///и устанавливает ему текущее время старта в ручную отсечку
  ///
  ///Возращает 0 если участник не найден и количество обновлённых участников в случае успеха
  Future<int> updateManualStartTime({
    required int stageId,
    required DateTime time,
    required DateTime timestamp,
    int deltaInSeconds = 15,
  }) async {
    int result = 0;
    final DateTime timeBefore =
        time.subtract(Duration(seconds: deltaInSeconds));
    final DateTime timeAfter = time.add(Duration(seconds: deltaInSeconds));
    final String before = DateFormat(shortTimeFormat).format(timeBefore);
    final String after = DateFormat(shortTimeFormat).format(timeAfter);
    final String manualStartTime = DateFormat(longTimeFormat).format(time);

    final participantsAroundTime = await _getParticipantAroundTime(
      stageId: stageId,
      before: before,
      after: after,
    ).get();

    if (participantsAroundTime.isNotEmpty) {
      final DateTime? startTime =
          participantsAroundTime.first.startTime.toDateTime();
      if (startTime == null) {
        logger.e('Wrong time format: $startTime, can not convert to DateTime');
        return result;
      }
      final Duration correction = startTime.difference(time);
      result = await _setManualStartTime(
        participantId: participantsAroundTime.first.participantId,
        stageId: stageId,
        manualCorrection: correction.inMilliseconds,
        manualStartTime: manualStartTime,
        timestamp: timestamp.toIso8601String(),
      );
      if (result > 0) {
        logger.i(
          'Database -> Update manual start time for participant with id '
          '${participantsAroundTime.first.participantId}',
        );
      } else {
        logger.i(
          'Database -> Error at updating manual start time for participant with id '
          '${participantsAroundTime.first.participantId}',
        );
      }
    } else {
      logger.i(
          'Database -> Can not find participant with start time around $manualStartTime '
          'with $deltaInSeconds seconds delta');
    }
    return result;
  }

  ///Проверяем есть ли стартующий около времени [time]
  ///
  ///[deltaInSeconds] в каком секундном диапазоне от [time] искать участников
  ///
  ///Возвращает количество стартущих и 0 если последние не найдены
  Future<int> checkParticipantAroundStartTime({
    required String time,
    required int stageId,
    int deltaInSeconds = 10,
  }) async {
    final DateTime? beepDateTime = time.toDateTime();
    if (beepDateTime == null) {
      logger.e('Wrong time format: $time, can not convert to DateTime');
      return 0;
    }
    final DateTime timeAfter =
        beepDateTime.add(Duration(seconds: deltaInSeconds));
    final String after = DateFormat(shortTimeFormat).format(timeAfter);
    final startingCount = await _getForBeep(
      stageId: stageId,
      beepTime: time,
      afterTime: after,
    ).get();
    return startingCount.first;
  }

//Используется для голосового сообщения
  Future<List<GetStartingParticipantBetweenTimesResult>>
      getStartingParticipants({
    required String time,
    required int stageId,
  }) async {
    final DateTime? dateTime = time.toDateTime();
    if (dateTime == null) {
      logger.e('Wrong time format: $time, can not convert to DateTime');
      return <GetStartingParticipantBetweenTimesResult>[];
    }
    final String after = DateFormat(shortTimeFormat)
        .format(dateTime.add(const Duration(minutes: 1)));
    return _getStartingParticipantBetweenTimes(
      time: time,
      after: after,
      stageId: stageId,
    ).get();
  }

  Selectable<NextStartingParticipant> getNextStartingParticipants(
      {required int stageId, required String time}) {
    return _getNextStartingParticipants(stageId: stageId, time: time);
  }

  Future<int> setStatusForStartId({
    required int startId,
    required ParticipantStatus status,
  }) async {
    var status = ParticipantStatus.dns;
    final result = await _setDNSForStartId(id: startId, statusId: status.index);

    if (result > 0) {
      logger.i(
          'Database -> Set ${status.name.toUpperCase()} to startId: $startId');
    } else {
      logger.i(
          'Database -> Can not find startId: $startId, ${status.name.toUpperCase()} not set');
    }
    return result;
  }

  Selectable<StartingParticipant> getNumbersOnTraceNow({
    required int stageId,
    required DateTime dateTimeNow,
  }) {
    var timeNow = DateFormat(sqlTimeFormat).format(dateTimeNow);
    return _getNumbersOnTraceNow(stageId: stageId, timeNow: timeNow);
  }

  // ----------------финиш----------------

  Selectable<Finish> getFinishesFromStage(
      {required int stageId,
      bool hideMarked = true,
      bool hideManual = false,
      bool hideNumbers = false}) {
    final List<Expression<bool>> predicates = [];
    return _getFinishesFromStage(predicate: (finishes) {
      predicates.add(finishes.stageId.equals(stageId));
      if (hideMarked) {
        predicates.add(finishes.isHidden.equals(!hideMarked));
      }
      if (hideManual) {
        predicates.add(finishes.isManual.equals(!hideManual));
      }
      if (hideNumbers) {
        predicates.add(finishes.number.isNull());
      }
      return predicates.reduce((a, b) => a & b);
    });
  }

  /// Записывает финишное время
  ///
  /// Возвращает автоматически присвоенный номер или null
  ///
  /// Если новое финишное время отличается менее чем на [finishDelay]
  /// от предыдущего нескрытого, неручного финишного времени без присвоенного номера,
  /// то записываемое время будет автоматически скрыто
  Future<int?> addFinishTime({
    required Stage stage,
    required String finish,
    // ToDO: use drift DATETIME format
    required DateTime timestamp,
    int finishDelay = 0,
    bool substituteNumbers = false,
    int substituteNumbersDelay = 0,

    /// Произвольное текущее время
    DateTime? dateTimeNow,
    int? number,
  }) async {
    final finishTime = finish.toDateTime();
    if (finishTime == null) {
      logger.e('Wrong time format: $finishTime, can not convert to DateTime');
      return null;
    }
    bool isHidden = false;
    int? workingNumber = number;
    // узнаём предыдущее нескрытое автоматическое время
    final prevFinishTime =
        await _getLastFinishTime(stageId: stage.id).getSingleOrNull();
    // проверяем разницу между предыдущей и поступившей отсечкой
    if (prevFinishTime != null) {
      final prevFinishDateTime = prevFinishTime.toDateTime();
      if (prevFinishDateTime != null) {
        final difference = finishTime.difference(prevFinishDateTime);
        // скрываем отсечку, если разница меньше настройки
        if (difference.inMilliseconds < finishDelay) {
          isHidden = true;
        }
      }
    }

    // если номер не был передан, пробуем автоматически поставить номер
    // если автоматически ставим номер, то ставим номер только в нескрытую отсечку,
    // если разница между предыдущим временем с финишем больше настройки
    // или нет предыдущей нескрытой отсечки
    if (substituteNumbers && workingNumber == null && isHidden == false) {
      // если нет нескрытого предыдущего времени - ставим номер
      if (prevFinishTime == null) {
        workingNumber = await _getAwaitingNumber(
          stageId: stage.id,
          dateTimeNow: dateTimeNow,
        );
      } else {
        // ищем предыдущее время финиша с номером
        final lastFinishTime = await _lastFinishTime(stageId: stage.id);
        // если есть, проверяем разницу между финишами
        // если больше разницы в настройках - ставим номер
        if (lastFinishTime != null) {
          final difference = finishTime.difference(lastFinishTime);
          if (difference.inMilliseconds > substituteNumbersDelay) {
            workingNumber = await _getAwaitingNumber(
              stageId: stage.id,
              dateTimeNow: dateTimeNow,
            );
          }
          // если предыдущего времени с номером нет - ставим номер
        } else {
          workingNumber = await _getAwaitingNumber(
            stageId: stage.id,
            dateTimeNow: dateTimeNow,
          );
        }
      }
    }

    // final String phoneTime = DateFormat(longTimeFormat).format(timestamp);
    final finishId = await _addFinishTime(
      stageId: stage.id,
      finishTime: finish,
      // ToDO: use drift DATETIME format
      timestamp: timestamp.toIso8601String(),
      number: workingNumber,
      isHidden: isHidden,
    );
    logger.i('Database -> Automatic finish time added: $finish');
    if (workingNumber != null) {
      await _setFinishInfoToStart(
        raceId: stage.raceId,
        stageId: stage.id,
        number: workingNumber,
        finishId: finishId,
      );
      logger.i(
        'Database -> Automatically add number $workingNumber to finish time: $finish',
      );
    }
    return workingNumber;
  }

  Future<int> addFinishTimeManual({
    required int stageId,
    required String finishTime,
    required DateTime timestamp,
    int? number,
  }) async {
    // final String phoneTime = DateFormat(longTimeFormat).format(timestamp);
    final finishId = await _addFinishTimeManual(
      stageId: stageId,
      finishTime: finishTime,
      timestamp: timestamp.toIso8601String(),
      number: number,
    );
    logger.i('Database -> Manual finish time added: $finishTime');
    return finishId;
  }

  Future<int> hideFinish(int id) async {
    final rowCount = await _hideFinish(id: id);
    logger.i('Database -> Finish times hided for id: $id');
    return rowCount;
  }

  Future<int> hideAllFinishes(int stageId) async {
    final rowCount = await _hideAllFinishes(stageId: stageId);
    logger.i('Database -> All finish times hided');
    return rowCount;
  }

  Future<void> clearFinishResultsDebug(int stageId) async {
    int rowCount = await customUpdate(
      'UPDATE starts SET finish_id = NULL WHERE stage_id = ?',
      variables: [Variable.withInt(stageId)],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
    logger.d(
        'Database -> Finish info for $rowCount starting participants cleared');
    rowCount = await customUpdate(
      'UPDATE finishes '
      'SET number = NULL, is_hidden = false '
      'WHERE stage_id = ?',
      variables: [Variable.withInt(stageId)],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
    logger.d('Database -> $rowCount finish results cleared');
    logger.i('Database -> Results cleared');
  }

  Future<bool> addNumberToFinish({
    required Stage stage,
    required int finishId,
    required int number,
    required String finishTime,
  }) async {
    final existingNumber = await _getNumberAtFinishes(
      stageId: stage.id,
      number: number,
    ).get();
    if (existingNumber.isNotEmpty) {
      logger.i(
        'Database -> Number $number already exists and therefore has not been added',
      );
      return false;
    } else {
      var rowCount = await _setNumberToFinish(id: finishId, number: number);
      if (rowCount > 0) {
        logger.i(
          'Database -> Number $number added at rowid $finishId with finishtime: $finishTime',
        );
      } else {
        logger.w(
          'Database -> Number $number NOT added at rowid $finishId with finishtime: $finishTime',
        );
      }
      rowCount = await _setFinishInfoToStart(
        raceId: stage.raceId,
        stageId: stage.id,
        number: number,
        finishId: finishId,
      );
      if (rowCount > 0) {
        logger.i(
          'Database -> Added finish id $finishId for number $number',
        );
      } else {
        logger.i(
          'Database -> Number $number not found at start list and therefore finish rowid $finishId not added',
        );
      }
      return true;
    }
  }

  Future<void> clearNumberAtFinish({
    required Stage stage,
    required int number,
  }) async {
    await customUpdate(
      'UPDATE finishes '
      'SET number = NULL '
      'WHERE number = ? AND stage_id = ?',
      variables: [
        Variable.withInt(number),
        Variable.withInt(stage.id),
      ],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
    await _setFinishInfoToStart(
      raceId: stage.raceId,
      stageId: stage.id,
      number: number,
    );
    logger.i('Database -> Finish info for number $number removed');
  }

  Future<int> setDNSForStage({
    required Stage stage,
    required int number,
  }) async {
    final rowCount = await _setStatusForNumberAtStage(
      raceId: stage.raceId,
      stageId: stage.id,
      number: number,
      statusId: ParticipantStatus.dns.index,
    );
    logger.i('Database -> Set DNS to number: $number at stageId: ${stage.id}');
    return rowCount;
  }

  Future<int> setDNFForStage({
    required Stage stage,
    required int number,
  }) async {
    final rowCount = await _setStatusForNumberAtStage(
      raceId: stage.raceId,
      stageId: stage.id,
      number: number,
      statusId: ParticipantStatus.dnf.index,
    );
    logger.i('Database -> Set DNF to number: $number at stageId: ${stage.id}');
    return rowCount;
  }

  Future<int> createRaceFromRaceCsv(RaceCsv race) async {
    var raceId =
        await addRace(name: path.basenameWithoutExtension(race.fileName));
    Map<String, int> stages = {};
    await transaction(() async {
      for (var stageName in race.stageNames) {
        stages[stageName] = await addStage(raceId: raceId, name: stageName);
      }
      for (var item in race.startItems) {
        final riderId = await addRider(
          name: item.name,
          nickname: item.nickname,
          city: item.city,
          team: item.team,
          birthday: item.age,
        );
        final participantId = await addParticipant(
          raceId: raceId,
          riderId: riderId,
          number: item.number,
          category: item.category,
        );
        for (var stageName in stages.keys) {
          await _addStartInfo(
            stageId: stages[stageName]!,
            participantId: participantId,
            startTime: item.startTimes![stageName]!,
          );
        }
      }
    });
    return raceId;
  }

  Future<List<StartForCsv>> getStartResults(int stageId) async {
    return await _getStartsForCsv(stageId: stageId).get();
  }

  Future<List<FinishForCsv>> getFinishResults(int stageId) async {
    return await _getFinishesForCsv(stageId: stageId).get();
  }

// -------------------------
// логгер

  Future<List<Log>> getLog({
    List<LogLevel>? level,
    List<LogSource>? source,
    List<LogSourceDirection>? direction,
    int limit = -1,
  }) async {
    final selectLog = 'SELECT * FROM logs';
    final List<String> whereArgs = [];
    String where;

    if (level != null && level.isNotEmpty) {
      final List<String> args = [];
      for (final type in level) {
        args.add("level LIKE '${type.name}'");
      }
      whereArgs.add(args.join(' OR '));
    }

    if (source != null && source.isNotEmpty) {
      final List<String> args = [];
      for (final type in source) {
        args.add("source LIKE '${type.name}'");
      }
      whereArgs.add(args.join(' OR '));
    }

    if (direction != null && direction.isNotEmpty) {
      final List<String> args = [];
      for (final type in direction) {
        args.add("direction LIKE '${type.name}'");
      }
      whereArgs.add(args.join(' OR '));
    }

    if (limit >= 0) {
      whereArgs.add('ROWID > (SELECT MAX(ROWID) FROM log) - $limit');
    }

    final List<Log> log;
    if (whereArgs.isNotEmpty) {
      where = '(${whereArgs.join(') AND (')})';
      log = (await customSelect('$selectLog $where;', readsFrom: {logs}).get())
          .cast<Log>();
    } else {
      log = await select(logs).get();
    }
    return log;
  }

  Future<int> addLog({
    required LogLevel level,
    required LogSource source,
    required String rawData,
    LogSourceDirection? direction,
  }) async {
    final String timeStamp = DateFormat(longDateFormat).format(DateTime.now());
    final int logId = await into(logs).insert(
      LogsCompanion(
        level: Value(level),
        // ToDO: use drift DATETIME format
        timestamp: Value(timeStamp),
        source: Value(source),
        direction: Value(direction ?? LogSourceDirection.undefined),
        rawData: Value(rawData),
      ),
    );
    return logId;
  }

// -------------------------
// вспомогательные функции

  Future<int?> _getAwaitingNumber({
    required int stageId,
    DateTime? dateTimeNow,
  }) async {
    dateTimeNow ??= DateTime.now();
    int? number;
    final numbersOnTraceNow =
        await getNumbersOnTraceNow(stageId: stageId, dateTimeNow: dateTimeNow)
            .get();
    if (numbersOnTraceNow.isNotEmpty) {
      number = numbersOnTraceNow.first.number;
      logger.i('Database -> Awaiting number: $number');
    }
    return number;
  }

  Future<DateTime?> _lastFinishTime({required int stageId}) async {
    DateTime? result;
    final res =
        await _getLastFinishTimeWithNumber(stageId: stageId).getSingleOrNull();

    if (res != null) {
      result = res.toDateTime();
    }
    return result;
  }

  // Share and backup
  Future<void> exportInto(File file) async {
    // Make sure the directory of the target file exists
    await file.parent.create(recursive: true);

    // Override an existing backup, sqlite expects the target file to be empty
    if (file.existsSync()) {
      file.deleteSync();
    }

    await customStatement('VACUUM INTO ?', [file.path]);
  }

// -------------------------
// для тестирования

  Selectable<NumberAtStart> getNumberAtStarts(
      {required int stageId, required int number}) {
    return _getNumberAtStarts(stageId: stageId, number: number);
  }
}

// LazyDatabase _openConnection() => LazyDatabase(() async {
//       final dbFolder = await getApplicationDocumentsDirectory();
//       final file = File(path.join(dbFolder.path, 'database.sqlite'));
//       return NativeDatabase(file);
//     });

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called database.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();

    /// You can replace [database.sqlite] with anything you want
    /// Ex: cat.sqlite, darthVader.sqlite, todoDB.sqlite
    final file = File(path.join(dbFolder.path, 'database.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cacheBase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cacheBase;

    return NativeDatabase.createInBackground(file);
  });
}
