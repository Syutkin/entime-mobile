part of 'log_bloc.dart';

@freezed
class LogState with _$LogState {
  const factory LogState({required List<Log> log}) = _LogState;
}
