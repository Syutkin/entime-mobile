part of 'countdown_bloc.dart';

@immutable
abstract class CountdownState extends Equatable {
  const CountdownState();

  @override
  List<Object> get props => [];
}

class CountdownInitialState extends CountdownState {}

class CountdownWorkingState extends CountdownState {
  final String text;

  CountdownWorkingState(this.text);

  @override
  List<Object> get props => [text];
}