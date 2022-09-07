part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.initialize() = _Initialize;
  const factory DatabaseEvent.emitState() = _EmitState;
  const factory DatabaseEvent.addRace(Race race) = _AddRace;
  const factory DatabaseEvent.deleteRace(int id) = _DeleteRace;
  const factory DatabaseEvent.addStage(Stage stage) = _AddStage;
  const factory DatabaseEvent.selectStages(int raceId) = _SelectStages;
  const factory DatabaseEvent.deleteStage(int id) = _DeleteStage;
}
