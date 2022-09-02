part of 'log_bloc.dart';

@freezed
class LogState with _$LogState {
  const factory LogState.initial() = LogInitial;
  const factory LogState.open({List<Log>? log, bool? updateLogScreen}) =
      LogOpen;
}
