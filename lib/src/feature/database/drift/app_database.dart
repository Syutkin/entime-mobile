import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../common/logger/logger.dart';

part 'app_database.g.dart';

@DriftDatabase(
  include: {'tables.drift'},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ExistedStartingParticipantsResult>?> addStartNumber({
    required Stage stage,
    required int number,
    required String startTime,
    bool forceAdd = false,
  }) async {
    if (!forceAdd) {
      logger.i(
        'Database -> Checking start time $startTime and number $number...',
      );
      final res = await existedStartingParticipants(
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
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(path.join(dbFolder.path, 'database.sqlite'));
      return NativeDatabase(file);
    });
