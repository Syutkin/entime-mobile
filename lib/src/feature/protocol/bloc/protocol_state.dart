part of 'protocol_bloc.dart';

@freezed
class ProtocolState with _$ProtocolState {
  const factory ProtocolState.notSelected() = ProtocolNotSelectedState;
  const factory ProtocolState.selected({
    required List<StartItem> startProtocol,
    required List<FinishItem> finishProtocol,
    required List<StartItem> numbersOnTraceProtocol,
    required String databasePath,

    // Изменить время финиша для номера
    bool? updateFinishNumber,

    // Автоматический старт из стартового модуля
    // Служит для проверки, установлено ли уже стартовое время или нет
    final AutomaticStart? automaticStart,

    // Предыдущее стартовое время номера, которому предлагается
    // поставить новое. Запоминаем для передачи его в UI popup.
    // Используется два раза, и при установке автоматического стартового времени
    // и при ручном вводе нового времени старта
    List<StartItem>? previousStart,

    // Стартовое время и номер, которые хотим установить
    StartTime? startTime,

    // Автоматически подставленный в финишное время номер
    int? autoFinishNumber,

    // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
    required int? awaitingNumber,
  }) = ProtocolSelectedState;
}
