import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/localization/localization.dart';
import '../../../common/logger/logger.dart';
import '../../../common/utils/csv_utils.dart';
import '../../../common/utils/file_utils.dart';
import '../../../constants/date_time_formats.dart';
import '../../../feature/csv/csv.dart';
import '../../settings/logic/settings_provider.dart';
import '../drift/app_database.dart';
import '../model/notification.dart';
import '../model/participant_status.dart';

part 'database_bloc.freezed.dart';
part 'database_event.dart';
part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc({
    required AppDatabase database,
    required ISettingsProvider settingsProvider,
    this.fileProvider = const StartlistProvider(),
  }) : _db = database,
       _settingsProvider = settingsProvider,
       super(
         const DatabaseState(
           races: [],
           stages: [],
           categories: [],
           riders: [],
           participants: [],
           finishes: [],
           numbersOnTrace: [],
         ),
       ) {
    on<DatabaseEvent>(transformer: sequential(), (event, emit) async {
      switch (event) {
        case _Initialize():
          final raceId = _settingsProvider.settings.raceId;
          final stageId = _settingsProvider.settings.stageId;

          if (raceId > 0) {
            _race = await _db.getRace(raceId);
            if (stageId > 0) {
              _stage = await _db.getStage(stageId);
            }
          }

          _racesSubscription ??= _db.getRaces().watch().listen((event) async {
            _races = event;
            logger.t('DatabaseBloc -> getRaces().watch()');
            await _emitState();
          });

          await _stagesSubscription?.cancel();
          _stagesSubscription = _db.getStages(raceId: raceId).watch().listen((event) async {
            _stages = event;
            logger.t('DatabaseBloc -> getStages(raceId: $raceId).watch()');
            await _emitState();
          });

          _ridersSubscription ??= _db.getRiders.watch().listen((event) async {
            _riders = event;
            logger.t('DatabaseBloc -> getRiders().watch()');
            await _emitState();
          });

          await _startsSubscription?.cancel();
          _startsSubscription = _db.getParticipantsAtStart(stageId: stageId).watch().listen((event) async {
            _participants = event;
            _categories = await _db.getCategories(raceId);
            logger.t('DatabaseBloc -> getParticipantsAtStart(stageId: $stageId).watch()');
            await _emitState();
          });

          await _finishesSubscription?.cancel();
          _finishesSubscription = _db.getFinishesFromStage(stageId: stageId).watch().listen((event) async {
            _finishes = event;
            logger.d('DatabaseBloc -> getFinishesFromStage(stageId: $stageId).watch()');
            await _emitState();
          });

          await _numbersOnTraceSubscription?.cancel();
          _numbersOnTraceSubscription = _db
              .getNumbersOnTraceNow(stageId: stageId, dateTimeNow: DateTime(2020))
              .watch()
              .listen((event) async {
                _numbersOnTrace = await _db.getNumbersOnTraceNow(stageId: stageId, dateTimeNow: DateTime.now()).get();
                logger.t('DatabaseBloc -> getNumbersOnTraceNow(stageId: $stageId).watch()');
                await _emitState();
              });

          _appSettingsSubscription ??= _settingsProvider.state.listen((state) async {
            _finishDelay = state.finishDelay;
            _substituteNumbers = state.substituteNumbers;
            _substituteNumbersDelay = state.substituteNumbersDelay;
          });
        case _EmitState():
          emit(
            DatabaseState(
              race: event.race,
              stage: event.stage,
              races: event.races,
              stages: event.stages,
              categories: event.categories,
              riders: event.riders,
              participants: event.participants,
              finishes: event.finishes,
              numbersOnTrace: event.numbersOnTrace,
              notification: event.notification,
              autoFinishNumber: event.autoFinishNumber,
              awaitingNumber: _awaitingNumber,
            ),
          );
        case _AddRace():
          await _db.addRace(
            name: event.name,
            startDate: event.startDate,
            finishDate: event.finishDate,
            location: event.location,
            url: event.url,
            description: event.description,
          );
        case _DeleteRace():
          await _db.deleteRace(event.id);
        case _UpdateRace():
          await _db.updateRace(
            id: event.id,
            name: event.name,
            startDate: event.startDate,
            finishDate: event.finishDate,
            location: event.location,
            url: event.url,
            description: event.description,
          );
        case _UpsertRace():
          await _db.upsertRace(
            id: event.id,
            name: event.name,
            startDate: event.startDate,
            finishDate: event.finishDate,
            location: event.location,
            url: event.url,
            description: event.description,
          );
        case _GetRaces():
          _races = await _db.getRaces().get();
        case _SelectRace():
          _race = event.race;
          final raceId = event.race.id;
          final settings = _settingsProvider.settings.copyWith(raceId: raceId);
          await _settingsProvider.update(settings);
          add(const DatabaseEvent.initialize());
        case _DeselectRace():
          _race = null;
          _stage = null;
          final settings = _settingsProvider.settings.copyWith(raceId: -1, stageId: -1);
          await _settingsProvider.update(settings);
          add(const DatabaseEvent.initialize());
        case _AddStage():
          await _db.addStage(raceId: event.raceId, name: event.name, trailId: event.trailId);
        case _UpsertStage():
          await _db.upsertStage(
            id: event.id,
            name: event.name,
            description: event.description,
            raceId: event.raceId,
            trailId: event.trailId,
            isActive: event.isActive,
            isDeleted: event.isDeleted,
            removeTrailId: event.removeTrailId,
          );
        case _DeleteStage():
          await _db.deleteStage(event.id);
        case _GetStages():
          _stages = await _db.getStages(raceId: event.raceId).get();
          await _emitState();
        case _SelectStage():
          _stage = event.stage;
          final stageId = event.stage.id;
          final settings = _settingsProvider.settings.copyWith(stageId: stageId);
          await _settingsProvider.update(settings);
          add(const DatabaseEvent.initialize());
        case _GetParticipantsAtStart():
          _participants = await _db.getParticipantsAtStart(stageId: event.stageId).get();
          await _emitState();
        case _AddStartNumber():
          final startingParticipants = await _db.addStartNumber(
            stage: event.stage,
            number: event.number,
            startTime: event.startTime,
            forceAdd: event.forceAdd,
          );
          if (startingParticipants != null && !event.forceAdd) {
            final notification = Notification.updateStartNumber(
              existedStartingParticipants: startingParticipants,
              number: event.number,
              startTime: event.startTime,
            );
            await _emitState(notification: notification);
          }
        case _UpdateRider():
          await _db.updateRider(
            id: event.riderId,
            name: event.name,
            nickname: event.nickname,
            birthday: event.birthday,
            team: event.team,
            city: event.city,
            email: event.email,
            phone: event.phone,
            comment: event.comment,
            isDeleted: event.isDeleted,
          );
        case _UpdateRacer():
          if (event.riderId >= 0) {
            await _db.updateRider(
              id: event.riderId,
              name: event.name,
              nickname: event.nickname,
              birthday: event.birthday,
              team: event.team,
              city: event.city,
              email: event.email,
              phone: event.phone,
              comment: event.comment,
            );
            await _db.updateParticipant(id: event.participantId, riderId: event.riderId, category: event.category);
          } else {
            final riderId = await _db.addRider(
              name: event.name,
              nickname: event.nickname,
              birthday: event.birthday,
              team: event.team,
              city: event.city,
              email: event.email,
              phone: event.phone,
              comment: event.comment,
            );
            await _db.updateParticipant(id: event.participantId, riderId: riderId, category: event.category);
          }
        case _UpdateStartingInfo():
          await _db.setStartingInfo(
            startTime: event.startTime,
            automaticStartTime: event.automaticStartTime,
            automaticCorrection: event.automaticCorrection,
            manualStartTime: event.manualStartTime,
            manualCorrection: event.manualCorrection,
            stageId: event.stageId,
            participantId: event.participantId,
          );
        case DatabaseEventUpdateManualStartTime():
          await _db.updateManualStartTime(
            stageId: event.stageId,
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
            deltaInSeconds: event.deltaInSeconds,
          );
        case _SetStatusForStartId():
          await _db.setStatusForStartId(startId: event.startId, status: ParticipantStatus.dns);
        case _UpdateAutomaticCorrection():
          final previousStarts = await _db.updateAutomaticCorrection(
            stageId: event.stageId,
            time: event.startTime,
            correction: event.correction,
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
            deltaInSeconds: event.deltaInSeconds,
            forceUpdate: event.forceUpdate,
            useTimestampForTime: event.useTimestampForTime,
          );
          if (previousStarts != null && !event.forceUpdate) {
            await _emitState(
              notification: Notification.updateAutomaticCorrection(
                previousStarts: previousStarts,
                number: previousStarts.first.number,
                startTime: event.startTime,
                timestamp: event.timestamp,
                correction: event.correction,
              ),
            );
          }
        case _AddFinishTime():
          final autoFinishNumber = await _db.addFinishTime(
            stage: event.stage,
            finish: event.finishTime,
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
            finishDelay: event.finishDelay ?? _finishDelay,
            substituteNumbers: event.substituteNumbers ?? _substituteNumbers,
            substituteNumbersDelay: event.finishDelay ?? _substituteNumbersDelay,
            dateTimeNow: event.dateTimeNow,
            number: _awaitingNumber,
          );
          if (autoFinishNumber != null) {
            // снять выделение с автоматически подставленного номера
            _awaitingNumber = null;
            await _emitState(autoFinishNumber: autoFinishNumber);
          }
        case _AddFinishTimeManual():
          await _db.addFinishTimeManual(
            stageId: event.stageId,
            timestamp: event.timestamp,
            ntpOffset: event.ntpOffset,
            number: event.number,
          );
        case _ClearStartResultsDebug():
          await _db.clearStartResultsDebug(stageId: event.stageId);
        case _ClearFinishResultsDebug():
          await _db.clearFinishResultsDebug(event.stageId);
        case _HideFinish():
          await _db.hideFinish(event.id);
        case _HideAllFinishes():
          await _db.hideAllFinishes(event.stageId);
        case _ClearNumberAtFinish():
          // _autoFinishNumber = null;
          await _db.clearNumberAtFinish(stage: event.stage, number: event.number);
        case _SetDNSForStage():
          await _db.setDNSForStage(stage: event.stage, number: event.number);
        case _SetDNFForStage():
          await _db.setDNFForStage(stage: event.stage, number: event.number);
        case _AddNumberToFinish():
          final success = await _db.addNumberToFinish(
            stage: event.stage,
            finishId: event.finishId,
            number: event.number,
            finishTime: event.finishTime,
          );
          if (success) {
            await _emitState();
          } else {
            await _emitState(
              notification: Notification.changeFinishTimeToNumber(
                stage: event.stage,
                finishId: event.finishId,
                number: event.number,
                finishTime: event.finishTime,
              ),
            );
          }
        case _GetNumbersOnTraceNow():
          _numbersOnTrace =
              await _db.getNumbersOnTraceNow(stageId: event.stageId, dateTimeNow: event.dateTimeNow).get();
          await _emitState();
        case _ShiftStartsTime():
          await _db.shiftStartsTime(stageId: event.stageId, minutes: event.minutes, fromTime: event.fromTime);
        case _SelectAwaitingNumber():
          _awaitingNumber = event.number;
          await _emitState();
        case _DeselectAwaitingNumber():
          _awaitingNumber = null;
          await _emitState();
        case _CreateRaceFromFile():
          final raceCsv = await fileProvider.getRaceFromFile();
          if (raceCsv != null) {
            final id = await _db.createRaceFromRaceCsv(raceCsv);
            final race = await _db.getRace(id);
            if (race != null) {
              _stage = null;
              add(DatabaseEvent.selectRace(race));
            }
          }
        case _CreateStagesFromFile():
          final stageCsv = await fileProvider.getStagesFromFile();
          if (stageCsv != null) {
            await _db.createStagesFromStagesCsv(event.raceId, stageCsv);
          }
        case _ShareStart():
          final race = _race;
          final stage = _stage;
          final stageId = stage?.id;
          if (race != null && stage != null && stageId != null) {
            final startList = await _db.getStartResults(stageId, useTimestamp: event.useTimestamp);
            final startMap = <Map<String, dynamic>>[];
            for (final start in startList) {
              startMap.add(start.row.data);
            }
            final csv = mapListToCsv(startMap);
            if (csv != null) {
              final filename = '${race.name}-${stage.name}-start';
              final file = await saveToFile(csv, filename);
              if (file != null) {
                await SharePlus.instance.share(
                  ShareParams(
                    files: [XFile(file.path)],
                    text: Localization.current.I18nProtocol_shareStartResults(race.name, stage.name),
                  ),
                );
              }
            }
          }
        case _ShareFinish():
          final race = _race;
          final stage = _stage;
          final stageId = stage?.id;
          if (race != null && stage != null && stageId != null) {
            final finishList = await _db.getFinishResults(stageId, useTimestamp: event.useTimestamp);
            final finishMap = <Map<String, dynamic>>[];
            for (final finish in finishList) {
              finishMap.add(finish.row.data);
            }
            final csv = mapListToCsv(finishMap);
            if (csv != null) {
              final filename = '${race.name}-${stage.name}-finish';
              final file = await saveToFile(csv, filename);
              if (file != null) {
                await SharePlus.instance.share(
                  ShareParams(
                    files: [XFile(file.path)],
                    text: Localization.current.I18nProtocol_shareFinishResults(race.name, stage.name),
                  ),
                );
              }
            }
          }
        case _ShareDatabase():
          final timeStamp = DateFormat(longDateFormat).format(DateTime.now());
          final dbDir = await getApplicationDocumentsDirectory();
          final file = File(path.join(dbDir.path, 'database_backup_$timeStamp.sqlite'));
          await _db.exportInto(file);
          await SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));
        case _ShareTrack():
          final fileId = event.trail.fileId;
          if (fileId != null) {
            final track = await _db.getTrack(fileId);
            if (track != null) {
              final dir = await getTemporaryDirectory();
              var fileName = track.name;
              if (track.extension != null) {
                fileName += '.${track.extension}';
              }
              final file = File(path.join(dir.path, fileName));
              // final sink = file.openWrite()
              //   // writeAsBytes(trail.info! as List<int>);
              //   ..write(track.data);
              // await sink.close();
              await file.writeAsBytes(track.data);
              await SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));
            }
          }
      }
    });
    add(const DatabaseEvent.initialize());
  }

  final AppDatabase _db;

  List<Race> _races = [];
  List<Stage> _stages = [];
  List<String?> _categories = [];
  List<Rider> _riders = [];
  List<ParticipantAtStart> _participants = [];
  List<Finish> _finishes = [];
  List<StartingParticipant> _numbersOnTrace = [];

  Race? _race;
  Stage? _stage;

  late int _finishDelay;
  late bool _substituteNumbers;
  late int _substituteNumbersDelay;
  int? _awaitingNumber;

  final ISettingsProvider _settingsProvider;

  StreamSubscription<List<Race>>? _racesSubscription;
  StreamSubscription<List<Stage>>? _stagesSubscription;
  StreamSubscription<List<Rider>>? _ridersSubscription;
  StreamSubscription<List<ParticipantAtStart>>? _startsSubscription;
  StreamSubscription<List<Finish>>? _finishesSubscription;
  StreamSubscription<List<StartingParticipant>>? _numbersOnTraceSubscription;
  StreamSubscription<AppSettings>? _appSettingsSubscription;

  StartlistProvider fileProvider;

  Future<void> _emitState({Notification? notification, int? autoFinishNumber, bool? updateFinishNumber}) async {
    add(
      DatabaseEvent.emitState(
        race: _race,
        stage: _stage,
        races: _races,
        stages: _stages,
        categories: _categories,
        riders: _riders,
        participants: _participants,
        finishes: _finishes,
        numbersOnTrace: _numbersOnTrace,
        notification: notification,
        autoFinishNumber: autoFinishNumber,
        awaitingNumber: _awaitingNumber,
        updateFinishNumber: updateFinishNumber,
      ),
    );
  }

  @override
  Future<void> close() {
    _racesSubscription?.cancel();
    _stagesSubscription?.cancel();
    _ridersSubscription?.cancel();
    _startsSubscription?.cancel();
    _finishesSubscription?.cancel();
    _numbersOnTraceSubscription?.cancel();
    _appSettingsSubscription?.cancel();
    return super.close();
  }
}
