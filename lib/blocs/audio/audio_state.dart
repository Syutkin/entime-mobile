part of 'audio_bloc.dart';

@immutable
abstract class AudioState {}

class AudioInitialState extends AudioState {}

class AudioReadyState extends AudioState {}