import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../audio.dart';

part 'audio_event.dart';
part 'audio_state.dart';
part 'audio_bloc.freezed.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  AudioBloc({required this.ttsProvider}) : super(const AudioStateInitial()) {
    on<AudioEvent>((event, emit) async {
      switch (event) {
        case _Init():
          final defaultEngine = await ttsProvider.getDefaultEngine;
          final engine = defaultEngine?.toString();
          final voice = await ttsProvider.getDefaultVoice;
          final voiceMap = voice is Map<Object?, Object?> ? voice : null;
          final voiceName = voiceMap?['name']?.toString();
          emit(AudioState.initialized(engine: engine, voice: voiceName));
      }
    });
  }
  final TtsProvider ttsProvider;
}
