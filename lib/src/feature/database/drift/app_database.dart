import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:entime/src/feature/database/model/participant_status.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../common/logger/logger.dart';
import '../../../common/utils/helper.dart';

part 'app_database.g.dart';

@DriftDatabase(
  include: {'tables.drift'},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.forTesting(DatabaseConnection super.connection);

  @override
  int get schemaVersion => 1;

  /// Обновляет или добавляет участника с заданным [number] и [startTime]
  /// Возвращает null при успехе, и список участников если такое же стартовое время
  /// уже установлено для других участников
  Future<List<GetExistedStartingParticipantsResult>?> addStartNumber({
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
      final res = await getExistedStartingParticipants(
        stageId: stage.id!,
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
      final raceName = await (select(races)
            ..where(
              (name) => races.id.equals(stage.raceId),
            ))
          .get();
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
          stageId: Value(stage.id!),
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
                  start.stageId.equals(stage.id!) &
                  start.participantId.equals(participantAtRace.first.id!),
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
            participantId: Value(participantAtRace.first.id!),
            stageId: Value(stage.id!),
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
                    start.participantId.equals(participantAtRace.first.id!),
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

  /// Обновляет automaticStartTime и automaticCorrection
  /// для !первого участника, стартовое время которого лежит в пределах
  /// плюс/минус [deltaInSeconds] от заданного [time].
  ///
  /// Возвращает null при успехе, и список [Start] при неудаче
  Future<List<Start>?> updateAutomaticCorrection({
    required int stageId,
    required String time,
    required int correction,
    required DateTime timeStamp,
    bool forceUpdate = false,
    int deltaInSeconds = 15,
  }) async {
    final DateTime? dateGoTime = strTimeToDateTime(time);
    if (dateGoTime == null) {
      throw FormatException('Invalid time format: $time');
      // assert(dateGoTime != null, 'dateGoTime must not be null');
      //   return null;
    }
    final String before = DateFormat('HH:mm:ss')
        .format(dateGoTime.subtract(Duration(seconds: deltaInSeconds)));
    final String after = DateFormat('HH:mm:ss')
        .format(dateGoTime.add(Duration(seconds: deltaInSeconds)));
    final String phoneTime = DateFormat('HH:mm:ss,S').format(timeStamp);

    // Если не обновлять принудительно, то
    // проверяем что автоматическое время старта не установлено,
    // в этом случае устанавливаем время старта и вовращаем null.
    // В противном случае возвращаем StartItem.
    logger.i('Database -> Checking existing start time around $time...');
    final participantsAroundTime = await getParticipantAroundTime(
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
          timestamp: Value(phoneTime),
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
    int deltaInSeconds = 15,
  }) async {
    int result = 0;
    final DateTime timeBefore =
        time.subtract(Duration(seconds: deltaInSeconds));
    final DateTime timeAfter = time.add(Duration(seconds: deltaInSeconds));
    final String before = DateFormat('HH:mm:ss').format(timeBefore);
    final String after = DateFormat('HH:mm:ss').format(timeAfter);
    final String manualStartTime = DateFormat('HH:mm:ss,S').format(time);

    final participantsAroundTime = await getParticipantAroundTime(
      stageId: stageId,
      before: before,
      after: after,
    ).get();

    if (participantsAroundTime.isNotEmpty) {
      final DateTime? startTime =
          strTimeToDateTime(participantsAroundTime.first.startTime);
      if (startTime == null) {
        assert(startTime != null, 'startTime must not be null');
        return result;
      }
      final Duration correction = startTime.difference(time);
      result = await setManualStartTime(
        participantId: participantsAroundTime.first.participantId,
        stageId: stageId,
        manualCorrection: correction.inMilliseconds,
        manualStartTime: manualStartTime,
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
    final DateTime? beepDateTime = strTimeToDateTime(time);
    if (beepDateTime == null) {
      logger.e('Wrong time format: $time, can not convert to DateTime');
      return 0;
    }
    final DateTime timeAfter =
        beepDateTime.add(Duration(seconds: deltaInSeconds));
    final String after = DateFormat('HH:mm:ss').format(timeAfter);
    final x =
        await getForBeep(stageId: stageId, beepTime: time, afterTime: after)
            .get();
    return x.first;
  }

//Используется для голосового сообщения
  Future<List<GetStartingParticipantBetweenTimesResult>>
      getStartingParticipants({
    required String time,
    required int stageId,
  }) async {
    final DateTime? dateTime = strTimeToDateTime(time);
    if (dateTime == null) {
      logger.e('Wrong time format: $time, can not convert to DateTime');
      return <GetStartingParticipantBetweenTimesResult>[];
    }
    final String after =
        DateFormat('HH:mm:ss').format(dateTime.add(const Duration(minutes: 1)));
    return getStartingParticipantBetweenTimes(
      time: time,
      after: after,
      stageId: stageId,
    ).get();
  }

  Future<int> setStatusForStartId({
    required int id,
    required ParticipantStatus status,
  }) async {
    var status = ParticipantStatus.dns;
    final result = await _setDNSForStartId(id: id, statusId: status.index);

    if (result > 0) {
      logger.i('Database -> Set ${status.name.toUpperCase()} to startId: $id');
    } else {
      logger.i('Database -> Can not find startId: $id, ${status.name.toUpperCase()} not set');
    }
    return result;
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
    required DateTime timeStamp,
    int finishDelay = 0,
    bool substituteNumbers = false,
    int substituteNumbersDelay = 0,
    String? debugTimeNow,
    int? number,
  }) async {
    bool isHidden = false;
    int? workingNumber = number;
    // узнаём предыдущее нескрытое автоматическое время
    final prevFinishTime =
        await getLastFinishTime(stageId: stage.id!).getSingleOrNull();
    // проверяем разницу между предыдущей и поступившей отсечкой
    if (prevFinishTime != null) {
      final prevFinishDateTime = strTimeToDateTime(prevFinishTime);
      if (prevFinishDateTime != null) {
        final finishTime = strTimeToDateTime(finish);
        if (finishTime == null) {
          assert(finishTime != null, 'finishTime must not be null');
          return null;
        }
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
          stageId: stage.id!,
          debugTimeNow: debugTimeNow,
        );
      } else {
        // ищем предыдущее время финиша с номером
        final lastFinishTime = await _lastFinishTime(stageId: stage.id!);
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
            workingNumber = await _getAwaitingNumber(
              stageId: stage.id!,
              debugTimeNow: debugTimeNow,
            );
          }
          // если предыдущего времени с номером нет - ставим номер
        } else {
          workingNumber = await _getAwaitingNumber(
            stageId: stage.id!,
            debugTimeNow: debugTimeNow,
          );
        }
      }
    }

    final String phoneTime = DateFormat('HH:mm:ss,S').format(timeStamp);
    final finishId = await _addFinishTime(
      stageId: stage.id!,
      finishTime: finish,
      timestamp: phoneTime,
      number: workingNumber,
      isHidden: isHidden,
    );
    logger.i('Database -> Automatic finish time added: $finish');
    if (workingNumber != null) {
      await _setFinishInfoToStart(
        raceId: stage.raceId,
        stageId: stage.id!,
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
    int? number,
  }) async {
    final result = await _addFinishTimeManual(
      stageId: stageId,
      finishTime: finishTime,
      number: number,
    );
    logger.i('Database -> Manual finish time added: $finishTime');
    return result;
  }

  Future<int> hideFinish(int id) async {
    final result = await _hideFinish(id: id);
    logger.i('Database -> Finish times hided for id: $id');
    return result;
  }

  Future<int> hideAllFinish() async {
    final result = await _hideAllFinishes();
    logger.i('Database -> All finish times hided');
    return result;
  }

  Future<int> clearFinishResultsDebug(int stageId) async {
    int result = await customUpdate(
      'UPDATE starts SET finish_id = NULL WHERE stage_id = ?',
      variables: [Variable.withInt(stageId)],
      updates: {starts},
      updateKind: UpdateKind.update,
    );
    result = await customUpdate(
      'UPDATE finishes '
      'SET number = NULL, is_hidden = false, '
      'WHERE stage_id = ?',
      variables: [Variable.withInt(stageId)],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
    logger.i('Database -> Results cleared');
    return result;
  }

  Future<bool> addNumber(
    Stage stage,
    int finishId,
    int number,
    String finishTime,
  ) async {
    final existingNumber = await _getNumberAtFinishes(
      stageId: stage.id!,
      number: number,
    ).getSingleOrNull();
    if (existingNumber == null) {
      logger.i(
        'Database -> Number $number already exists and therefore has not been added',
      );
      return false;
    } else {
      await _setNumberToFinish(id: finishId, number: number);
      await _setFinishInfoToStart(
        raceId: stage.raceId,
        stageId: stage.id!,
        number: number,
        finishId: finishId,
      );
      logger.i(
        'Database -> Number $number added at rowid $finishId with finishtime: $finishTime',
      );
      return true;
    }
  }

  Future<void> clearNumberAtFinish(
    Stage stage,
    int number,
  ) async {
    await customUpdate(
      'UPDATE finishes '
      'SET number = NULL, '
      'WHERE number = ? AND stage_id = ?',
      variables: [
        Variable.withInt(number),
        Variable.withInt(stage.id!),
      ],
      updates: {finishes},
      updateKind: UpdateKind.update,
    );
    await _setFinishInfoToStart(
      raceId: stage.raceId,
      stageId: stage.id!,
      number: number,
    );
    logger.i('Database -> Finish info for number $number removed');
  }

  Future<int> _setStatus({
    required Stage stage,
    required int number,
    required int statusId,
  }) async {
    final result = await _setStatusForNumberAtStage(
      raceId: stage.raceId,
      stageId: stage.id!,
      number: number,
      statusId: statusId,
    );
    return result;
  }

  Future<int> setDNSForStage({
    required Stage stage,
    required int number,
  }) async {
    final result = await _setStatus(
      stage: stage,
      number: number,
      statusId: 2,
    );
    logger.i('Database -> Set DNS to number: $number at stageId: ${stage.id}');
    return result;
  }

  Future<int> setDNFForStage({
    required Stage stage,
    required int number,
  }) async {
    final result = await _setStatus(
      stage: stage,
      number: number,
      statusId: 3,
    );
    logger.i('Database -> Set DNF to number: $number at stageId: ${stage.id}');
    return result;
  }

// -------------------------
// вспомогательные функции

  Future<int?> _getAwaitingNumber({
    required int stageId,
    String? debugTimeNow,
  }) async {
    int? number;
    debugTimeNow ??= "'now', 'localtime'";
    final numbersOnTraceProtocol =
        await getNumbersOnTraceNow(stageId: stageId, timeNow: debugTimeNow)
            .get();
    if (numbersOnTraceProtocol.isNotEmpty) {
      number = numbersOnTraceProtocol.first.number;
      logger.i('Awaiting number: $number');
    }
    return number;
  }

  Future<DateTime?> _lastFinishTime({required int stageId}) async {
    DateTime? result;
    final res =
        await getLastFinishTimeWithNumber(stageId: stageId).getSingleOrNull();

    if (res != null) {
      result = strTimeToDateTime(res);
    }
    return result;
  }
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(path.join(dbFolder.path, 'database.sqlite'));
      return NativeDatabase(file);
    });
