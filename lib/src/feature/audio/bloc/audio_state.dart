part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _Initial;
  const factory AudioState.initialized({String? engine, String? voice}) =
      _Initialized;
}
