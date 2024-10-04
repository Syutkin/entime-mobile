part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState.initial() = _Initial;

  const factory DatabaseState.initialized({
    Race? race,
    Stage? stage,
    required List<Race> races,
    required List<Stage> stages,
    required List<Rider> riders,
    required List<Status> statuses,
    required List<ParticipantAtStart> participants,
    required List<Start> starts,
    required List<Finish> finishes,
    required List<Trail> trails,
    required List<StartingParticipant> numbersOnTrace,
    Notification? notification,

    // Изменить время финиша для номера
    bool? updateFinishNumber,

    // Автоматически подставленный в финишное время номер
    int? autoFinishNumber,

    // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
    int? awaitingNumber,
  }) = _Initialized;
}
