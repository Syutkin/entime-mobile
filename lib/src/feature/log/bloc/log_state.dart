part of 'log_bloc.dart';

@freezed
sealed class LogState with _$LogState {
  const factory LogState({required List<Log> log}) = LogStat;
}
