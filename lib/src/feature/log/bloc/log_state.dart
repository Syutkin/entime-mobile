part of 'log_bloc.dart';

@freezed
class LogState with _$LogState {
  const factory LogState.initial() = _Initial;
  const factory LogState.initialized({List<Log>? log, bool? updateLogScreen}) =
  _Initialized;
}
