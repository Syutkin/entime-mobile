part of 'audio_bloc.dart';

@freezed
sealed class AudioEvent with _$AudioEvent {
  const factory AudioEvent.init() = _Init;
}
