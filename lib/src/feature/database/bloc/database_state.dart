part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    Race? race,
    Stage? stage,
    required List<Race> races,
    required List<Stage> stages,
    required List<Rider> riders,
    required List<Status> statuses,
    required List<ParticipantAtStart> participants,
    required List<Start> starts,
    required List<Finish> finishes,
    required List<StartingParticipant> numbersOnTrace,
    Notification? notification,

    // Стартовое время и номер, которые хотим установить
    // StartTime? startTime,

    // Автоматический старт из стартового модуля
    // Служит для проверки, установлено ли уже стартовое время или нет
    // AutomaticStart? automaticStart,

    // Предыдущее стартовое время номера, которому предлагается
    // поставить новое. Запоминаем для передачи его в UI popup.
    // Используется два раза, и при установке автоматического стартового времени
    // и при ручном вводе нового времени старта
    // List<StartingParticipant>? previousStart,

    // Изменить время финиша для номера
    bool? updateFinishNumber,

    // Автоматически подставленный в финишное время номер
    int? autoFinishNumber,

    // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
    int? awaitingNumber,
  }) = _DatabaseState;
}
