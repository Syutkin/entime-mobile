part of 'log_bloc.dart';

@freezed
sealed class LogEvent with _$LogEvent {
  const factory LogEvent.emitState() = _EmitState;

  const factory LogEvent.add({
    required LogLevel level,
    required LogSource source,
    required LogSourceDirection direction,
    required String rawData,
  }) = _Add;
}
