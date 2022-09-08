part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.initialize() = _Initialize;
  const factory DatabaseEvent.emitState({
    List<Race>? races,
    List<Stage>? stages,
    List<Rider>? riders,
    List<Status>? statuses,
    List<GetParticipantsAtStartResult>? participants,
    List<Start>? starts,
    List<Finish>? finishes,
    List<Trail>? trails,
    Notification? notification,
  }) = _EmitState;
  const factory DatabaseEvent.addRace(Race race) = _AddRace;
  const factory DatabaseEvent.deleteRace(int id) = _DeleteRace;
  const factory DatabaseEvent.addStage(Stage stage) = _AddStage;
  const factory DatabaseEvent.selectStages(int raceId) = _SelectStages;
  const factory DatabaseEvent.deleteStage(int id) = _DeleteStage;
  const factory DatabaseEvent.getParticipantsAtStart(int stageId) =
      _GetParticipantsAtStart;

  const factory DatabaseEvent.addStartNumber({
    required Stage stage,
    required int number,
    required String startTime,
    @Default(false) bool forceAdd,
  }) = _AddStartNumber;

  const factory DatabaseEvent.updateStartingInfo({
    required String startTime,
    String? automaticStartTime,
    int? automaticCorrection,
    String? manualStartTime,
    int? manualCorrection,
    required int stageId,
    required int participantId,
  }) = _UpdateStartingInfo;
}
