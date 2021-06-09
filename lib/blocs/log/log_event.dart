part of 'log_bloc.dart';

abstract class LogEvent extends Equatable {
  const LogEvent();

  @override
  List<Object> get props => [];
}

class ShowLog extends LogEvent {
  final List<LogLevel> level;
  final List<LogSource> source;
  final List<LogSourceDirection> direction;

  const ShowLog({
    this.level,
    this.source,
    this.direction,
  });

  @override
  List<Object> get props => [level, source, direction];
}

class HideLog extends LogEvent {}

class LogAdd extends LogEvent {
  final LogLevel level;
  final LogSource source;
  final String rawData;
  final LogSourceDirection direction;

  const LogAdd({
    @required this.level,
    @required this.source,
    @required this.rawData,
    this.direction,
  });

  @override
  List<Object> get props => [level, source, rawData, direction];

  @override
  String toString() =>
      'Logging { level: ${level.toStr}, source: ${source.toStr}, direction: ${direction.toStr}, rawData: $rawData }';
}
