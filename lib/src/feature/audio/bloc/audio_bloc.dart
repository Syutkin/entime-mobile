import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../audio.dart';

part 'audio_event.dart';
part 'audio_state.dart';
part 'audio_bloc.freezed.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  AudioBloc({required this.ttsProvider}) : super(const _Initial()) {
    on<AudioEvent>((event, emit) async {
      await event.map(
        init: (event) async {
          final engine = (await ttsProvider.getDefaultEngine).toString();
          final voice =
              (await ttsProvider.getDefaultVoice) as Map<Object?, Object?>;
          final voiceName = voice['name'].toString();
          emit(AudioState.initialized(engine: engine, voice: voiceName));
        },
      );
    });
  }
  final TtsProvider ttsProvider;
}
