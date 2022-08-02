part of 'protocol_bloc.dart';

abstract class ProtocolEvent extends Equatable {
  const ProtocolEvent();

  @override
  List<Object?> get props => [];
}

class SelectProtocol extends ProtocolEvent {
  final String? file;
  final PlatformFile? csv;

  const SelectProtocol(this.file, [this.csv]);

  @override
  List<Object?> get props => [file, csv];

// @override
// String toString() => 'ProtocolLoadStartFromCsv { PlatformFile: path: ${csv?.path}, size: ${csv?.size}b }';
}

class DeselectProtocol extends ProtocolEvent {}

class ProtocolAddStartNumber extends ProtocolEvent {
  final StartTime startTime;
  final bool forceAdd;

  const ProtocolAddStartNumber(this.startTime, {this.forceAdd = false});

  @override
  List<Object> get props => [startTime, forceAdd];
}

class ProtocolUpdateAutomaticCorrection extends ProtocolEvent {
  final AutomaticStart automaticStart;
  final bool forceUpdate;

  const ProtocolUpdateAutomaticCorrection(this.automaticStart,
      {this.forceUpdate = false});

  @override
  List<Object> get props => [automaticStart, forceUpdate];
}

class ProtocolUpdateManualStartTime extends ProtocolEvent {
  final DateTime time;

  const ProtocolUpdateManualStartTime({required this.time});

  @override
  List<Object> get props => [time];
}

class ProtocolAddFinishTime extends ProtocolEvent {
  final String time;
  final DateTime timeStamp;

  const ProtocolAddFinishTime({
    required this.time,
    required this.timeStamp,
  });

  @override
  List<Object> get props => [time, timeStamp];
}

class ProtocolAddFinishTimeManual extends ProtocolEvent {
  final String time;

  const ProtocolAddFinishTimeManual({required this.time});

  @override
  List<Object> get props => [time];
}

class ProtocolUpdateItemInfoAtStart extends ProtocolEvent {
  final StartItem item;

  const ProtocolUpdateItemInfoAtStart({required this.item});

  @override
  List<Object> get props => [item];
}

class ProtocolClearStartResultsDebug extends ProtocolEvent {}

class ProtocolClearFinishResultsDebug extends ProtocolEvent {}

class ProtocolHideAllFinishResults extends ProtocolEvent {}

class ProtocolClearNumberAtFinish extends ProtocolEvent {
  final int number;

  const ProtocolClearNumberAtFinish({required this.number});

  @override
  List<Object> get props => [number];
}

class ProtocolSetDNS extends ProtocolEvent {
  final int number;

  const ProtocolSetDNS({required this.number});

  @override
  List<Object> get props => [number];
}

class ProtocolSetDNF extends ProtocolEvent {
  final int number;

  const ProtocolSetDNF({required this.number});

  @override
  List<Object> get props => [number];
}

class ProtocolHideFinishTime extends ProtocolEvent {
  final int id;

  const ProtocolHideFinishTime({required this.id});

  @override
  List<Object> get props => [id];
}

class ProtocolSetNumberToFinishTime extends ProtocolEvent {
  final int id;
  final int number;
  final String finishTime;

  const ProtocolSetNumberToFinishTime({
    required this.id,
    required this.number,
    required this.finishTime,
  });

  @override
  List<Object> get props => [id, number, finishTime];
}

class ProtocolGetNumbersOnTrace extends ProtocolEvent {}

class ProtocolLoadStartFromCsv extends ProtocolEvent {
  final PlatformFile? csv;

  const ProtocolLoadStartFromCsv({
    this.csv,
  });

  @override
  List<Object?> get props => [csv];

  @override
  String toString() =>
      'ProtocolLoadStartFromCsv { PlatformFile: path: ${csv?.path}, size: ${csv?.size} }';
}

class ProtocolShareStart extends ProtocolEvent {}

class ProtocolShareFinish extends ProtocolEvent {}

class ProtocolSelectAwaitingNumber extends ProtocolEvent {
  final int number;

  const ProtocolSelectAwaitingNumber({required this.number});

  @override
  List<Object> get props => [number];
}

class ProtocolDeselectAwaitingNumber extends ProtocolEvent {}
