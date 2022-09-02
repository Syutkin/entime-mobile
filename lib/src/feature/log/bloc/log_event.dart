part of 'log_bloc.dart';

@freezed
class LogEvent with _$LogEvent {
  const factory LogEvent.show({
    List<LogLevel>? level,
    List<LogSource>? source,
    List<LogSourceDirection>? direction,
  }) = ShowLog;

  const factory LogEvent.hide() = HideLog;

  const factory LogEvent.add({
    required LogLevel level,
    required LogSource source,
    required String rawData,
    LogSourceDirection? direction,
  }) = LogAdd;
}
