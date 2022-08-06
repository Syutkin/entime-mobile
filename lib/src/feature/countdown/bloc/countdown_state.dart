part of 'countdown_bloc.dart';

@immutable
abstract class CountdownState extends Equatable {
  const CountdownState();

  @override
  List<Object?> get props => [];
}

class CountdownInitialState extends CountdownState {}

class CountdownWorkingState extends CountdownState {
  final String text;
  final String? nextStartTime;

  const CountdownWorkingState(
    this.text,
    this.nextStartTime,
  );

  @override
  List<Object?> get props => [text, nextStartTime];
}
