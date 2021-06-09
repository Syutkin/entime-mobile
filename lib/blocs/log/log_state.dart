part of 'log_bloc.dart';

abstract class LogState extends Equatable {
  const LogState();

  @override
  List<Object> get props => [];
}

class LogInitial extends LogState {}

class LogOpen extends LogState {
  final List<Log> log;
  final bool updateLogScreen;

  LogOpen({
    this.log,
    this.updateLogScreen,
  });

  @override
  List<Object> get props => [log, updateLogScreen];
}
