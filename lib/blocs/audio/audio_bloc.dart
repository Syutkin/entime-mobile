import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:entime/data_providers/audio/sound_audio_provider.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:entime/data_providers/audio/audio_provider.dart';
import 'package:entime/blocs/blocs.dart';

part 'audio_event.dart';

part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final SettingsBloc settingsBloc;
  late final StreamSubscription settingsSubscription;

  bool sound = true;
  bool voice = true;
  bool beep = true;

  AudioProvider audio = Sound();

  AudioBloc({
    required this.settingsBloc,
  }) : super(AudioInitialState()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      sound = state.sound;
      voice = state.voice;
      beep = state.beep;
      audio.setLanguage(state.language);
      audio.setVolume(state.volume);
      audio.setSpeechRate(state.rate);
      audio.setPitch(state.pitch);
    });
  }

  @override
  Future<void> close() {
    settingsSubscription.cancel();
    return super.close();
  }

  @override
  Stream<AudioState> mapEventToState(AudioEvent event) async* {
    if (event is Countdown) {
      if (sound && beep) {
        audio.beep();
      } else {
        print('Audio -> Sound is $sound, beep is $beep');
      }
    } else if (event is Speak) {
      if (sound && voice) {
        audio.speak(event.text);
      } else {
        print('Audio -> Sound is $sound, voice is $voice');
      }
    }
  }
}
