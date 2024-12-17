part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required List<Race> races,
    required List<Stage> stages,
    required List<Rider> riders,
    required List<Status> statuses,
    required List<ParticipantAtStart> participants,
    required List<Start> starts,
    required List<Finish> finishes,
    required List<StartingParticipant> numbersOnTrace,

    /// Выбранная гонка
    Race? race,

    ///Выбранный этап
    Stage? stage,

    /// Информация для различных всплывающих уведомлений
    Notification? notification,

    /// Автоматически подставленный в финишное время номер
    int? autoFinishNumber,

    /// Номер, который будет автоматически подставлен в следующую автоматическую отсечку
    int? awaitingNumber,
  }) = _DatabaseState;
}
