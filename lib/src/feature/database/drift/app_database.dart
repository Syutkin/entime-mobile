import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
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

  @override
  int get schemaVersion => 1;

  /// Обновляет или добавляет участника с заданным номером и стартовым временем
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
      }
    }

    final numberExists = await (select(participants)
          ..where(
            (participant) =>
                participant.number.equals(number) &
                participant.raceId.equals(stage.raceId),
          ))
        .get();

    if (numberExists.isEmpty) {
      //Номера не было в списке, создаём запись в riders, participants и в starts
      final int ridersId = await into(riders).insert(
        RidersCompanion(
          name: Value('Номер $number, на СУ ${stage.name}'),
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
      //Номер уже был в списке, обновляем(обнуляем) его стартовые значения
      await (update(starts)
            ..where(
              (start) => start.participantId.equals(numberExists.first.id),
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

    return null;
  }

//ToDo: исправить выставление значения только первому совпадению
///Устанавливает ручное стартовое время для участника
///
///Ищет участника с временем рядом с текущим (плюс-минус 15 секунд)
///и устанавливает ему текущее время старта в ручную отсечку
///
///Возращает 0 если участник не найден и rowid участника в случае успеха
///(возврат rowid не тестировался ни в каком виде)
  Future<int> updateManualStartTime(int stageId, DateTime time) async {
    int result = 0;
    final DateTime timeBefore = time.subtract(const Duration(seconds: 15));
    final DateTime timeAfter = time.add(const Duration(seconds: 15));
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
          'Database -> Update manual start time for participant with id ${participantsAroundTime.first.participantId}',
        );
      } else {
        logger.i(
          'Database -> Error at updating manual start time for participant with id ${participantsAroundTime.first.participantId}',
        );
      }
    } else {
      logger.i(
        'Database -> Cannot find participant with start time around $time',
      );
    }
    return result;
  }
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(path.join(dbFolder.path, 'database.sqlite'));
      return NativeDatabase(file);
    });
