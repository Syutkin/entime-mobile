part of 'audio_bloc.dart';

@freezed
sealed class AudioState with _$AudioState {
  const factory AudioState.initial() = AudioStateInitial;
  const factory AudioState.initialized({String? engine, String? voice}) = AudioStateInitialized;
}
