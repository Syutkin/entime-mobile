part of 'countdown_bloc.dart';

@immutable
abstract class CountdownEvent extends Equatable {
  const CountdownEvent();

  @override
  List<Object> get props => [];
}

class Tick extends CountdownEvent {
  final String text;

  const Tick(this.text);

  @override
  List<Object> get props => [text];
}
