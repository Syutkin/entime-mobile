part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.initialize() = _Initialize;

  const factory DatabaseEvent.emitState({
    required Race? race,
    required Stage? stage,
    required List<Race> races,
    required List<Stage> stages,
    required List<String?> categories,
    required List<Rider> riders,
    required List<ParticipantAtStart> participants,
    // required List<Start> starts,
    required List<Finish> finishes,
    required List<StartingParticipant> numbersOnTrace,
    required Notification? notification,
    required int? autoFinishNumber,
    required int? awaitingNumber,
    required bool? updateFinishNumber,
  }) = _EmitState;

  const factory DatabaseEvent.addRace({
    required String name,
    DateTime? startDate,
    DateTime? finishDate,
    String? location,
    String? url,
    String? description,
  }) = _AddRace;

  const factory DatabaseEvent.updateRace({
    required int id,
    String? name,
    DateTime? startDate,
    DateTime? finishDate,
    String? location,
    String? url,
    String? description,
  }) = _UpdateRace;

  const factory DatabaseEvent.upsertRace({
    int? id,
    String? name,
    DateTime? startDate,
    DateTime? finishDate,
    String? location,
    String? url,
    String? description,
  }) = _UpsertRace;

  const factory DatabaseEvent.deleteRace(int id) = _DeleteRace;

  const factory DatabaseEvent.getRaces() = _GetRaces;

  const factory DatabaseEvent.selectRace(Race race) = _SelectRace;

  const factory DatabaseEvent.deselectRace() = _DeselectRace;

  const factory DatabaseEvent.addStage({required String name, required int raceId, int? trailId}) = _AddStage;

  const factory DatabaseEvent.upsertStage({
    int? id,
    String? name,
    String? description,
    int? raceId,
    int? trailId,
    bool? isActive,
    bool? isDeleted,
    @Default(false) bool removeTrailId,
  }) = _UpsertStage;

  const factory DatabaseEvent.deleteStage(int id) = _DeleteStage;

  const factory DatabaseEvent.getStages(int raceId) = _GetStages;

  const factory DatabaseEvent.selectStage(Stage stage) = _SelectStage;

  const factory DatabaseEvent.getParticipantsAtStart(int stageId) = _GetParticipantsAtStart;

  const factory DatabaseEvent.addStartNumber({
    required Stage stage,
    required int number,
    required String startTime,
    @Default(false) bool forceAdd,
  }) = _AddStartNumber;

  const factory DatabaseEvent.updateRider({
    required int riderId,
    required String name,
    String? nickname,
    String? birthday,
    String? team,
    String? city,
    String? email,
    String? phone,
    String? comment,
    bool? isDeleted,
  }) = _UpdateRider;

  const factory DatabaseEvent.updateRacer({
    required int riderId,
    required int participantId,
    required String name,
    String? category,
    String? nickname,
    String? birthday,
    String? team,
    String? city,
    String? email,
    String? phone,
    String? comment,
  }) = _UpdateRacer;

  const factory DatabaseEvent.updateStartingInfo({
    required int stageId,
    required int participantId,
    required String startTime,
    String? automaticStartTime,
    int? automaticCorrection,
    String? manualStartTime,
    int? manualCorrection,
  }) = _UpdateStartingInfo;

  const factory DatabaseEvent.updateAutomaticCorrection({
    required int stageId,
    required String startTime,
    required int correction,
    required DateTime timestamp,
    required int ntpOffset,
    required int deltaInSeconds,
    @Default(false) bool forceUpdate,
  }) = _UpdateAutomaticCorrection;

  const factory DatabaseEvent.updateManualStartTime({
    required int stageId,
    required DateTime timestamp,
    required int ntpOffset,
    required int deltaInSeconds,
  }) = _UpdateManualStartTime;

  const factory DatabaseEvent.setStatusForStartId({required int startId, required ParticipantStatus status}) =
      _SetStatusForStartId;

  // const factory DatabaseEvent.getFinishesFromStage({
  //   required int stageId,
  // }) = _GetFinishesFromStage;

  const factory DatabaseEvent.addFinishTime({
    required Stage stage,
    required String finishTime,
    required DateTime timestamp,
    required int ntpOffset,
    int? finishDelay,
    bool? substituteNumbers,
    int? substituteNumbersDelay,
    DateTime? dateTimeNow,
    int? number,
  }) = _AddFinishTime;

  const factory DatabaseEvent.addFinishTimeManual({
    required int stageId,
    required DateTime timestamp,
    required int ntpOffset,
    int? number,
  }) = _AddFinishTimeManual;

  const factory DatabaseEvent.clearStartResultsDebug(int stageId) = _ClearStartResultsDebug;

  const factory DatabaseEvent.clearFinishResultsDebug(int stageId) = _ClearFinishResultsDebug;

  const factory DatabaseEvent.hideAllFinishes(int stageId) = _HideAllFinishes;

  const factory DatabaseEvent.clearNumberAtFinish({required Stage stage, required int number}) = _ClearNumberAtFinish;

  const factory DatabaseEvent.setDNSForStage({required Stage stage, required int number}) = _SetDNSForStage;

  const factory DatabaseEvent.setDNFForStage({required Stage stage, required int number}) = _SetDNFForStage;

  const factory DatabaseEvent.hideFinish({required int id}) = _HideFinish;

  const factory DatabaseEvent.addNumberToFinish({
    required Stage stage,
    required int finishId,
    required int number,
    required String finishTime,
  }) = _AddNumberToFinish;

  const factory DatabaseEvent.getNumbersOnTraceNow({required int stageId, required DateTime dateTimeNow}) =
      _GetNumbersOnTraceNow;

  const factory DatabaseEvent.shiftStartsTime({required int stageId, required int minutes, String? fromTime}) =
      _ShiftStartsTime;

  const factory DatabaseEvent.selectAwaitingNumber({required int number}) = _SelectAwaitingNumber;

  const factory DatabaseEvent.deselectAwaitingNumber() = _DeselectAwaitingNumber;

  const factory DatabaseEvent.createRaceFromFile() = _CreateRaceFromFile;

  const factory DatabaseEvent.createStagesFromFile({required int raceId}) = _CreateStagesFromFile;

  const factory DatabaseEvent.shareStart() = _ShareStart;

  const factory DatabaseEvent.shareFinish() = _ShareFinish;

  const factory DatabaseEvent.shareDatabase() = _ShareDatabase;

  const factory DatabaseEvent.shareTrack({required TrailInfo trail}) = _ShareTrack;
}
