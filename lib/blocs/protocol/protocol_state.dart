part of 'protocol_bloc.dart';

abstract class ProtocolState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProtocolSelectedState extends ProtocolState {
  final List<StartItem> startProtocol;
  final List<FinishItem> finishProtocol;
  final List<StartItem> numbersOnTraceProtocol;
  final String databasePath;

  // Изменить время финиша для номера
  final bool? updateFinishNumber;

  // Автоматический старт из стартового модуля
  // Служит для проверки, установлено ли уже стартовое время или нет
  final AutomaticStart? automaticStart;

  // Предыдущее стартовое время номера, которому предлагается
  // поставить новое. Запоминаем для передачи его в UI popup.
  // Используется два раза, и при установке автоматического стартового времени
  // и при ручном вводе нового времени старта
  final List<StartItem>? previousStart;

  // Стартовое время и номер, которые хотим установить
  final StartTime? startTime;

  // Автоматически подставленный в финишное время номер
  final int? autoFinishNumber;

  // Номер, который будет автоматически подставлен в следующую автоматическую отсечку
  final int? awaitingNumber;

  ProtocolSelectedState({
    required this.startProtocol,
    required this.finishProtocol,
    required this.numbersOnTraceProtocol,
    required this.databasePath,
    this.updateFinishNumber,
    this.automaticStart,
    this.previousStart,
    this.startTime,
    this.autoFinishNumber,
    required this.awaitingNumber,
  });

  @override
  List<Object?> get props => [
        startProtocol,
        finishProtocol,
        numbersOnTraceProtocol,
        databasePath,
        updateFinishNumber,
        automaticStart,
        previousStart,
        startTime,
        autoFinishNumber,
        awaitingNumber,
      ];

  @override
  String toString() => 'ProtocolSelectedState ('
      'startProtocol: ${startProtocol.length} items, '
      'finishProtocol: ${finishProtocol.length} items, '
      'numbersOnTraceProtocol: ${numbersOnTraceProtocol.length} items, '
      'databasePath: $databasePath, '
      'updateFinishNumber: $updateFinishNumber, '
      'automaticStart: $automaticStart, '
      'previousStart: $previousStart, '
      'startTime: $startTime, '
      'autoFinishNumber: $autoFinishNumber, '
      'awaitingNumber: $awaitingNumber'
      ')';
}

class ProtocolNotSelectedState extends ProtocolState {}
