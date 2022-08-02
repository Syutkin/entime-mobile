part of 'audio_bloc.dart';

@immutable
abstract class AudioEvent extends Equatable {
  const AudioEvent();

  @override
  List<Object> get props => [];
}

class Countdown extends AudioEvent {}

class Speak extends AudioEvent {
  final String text;

  const Speak(this.text);

  @override
  List<Object> get props => [text];
}
