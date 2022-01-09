import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/data_providers/audio/audio_provider.dart';
import 'package:entime/data_providers/audio/sound_audio_provider.dart';
import 'package:entime/utils/logger.dart';

part 'audio_event.dart';

part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final SettingsBloc settingsBloc;
  late final StreamSubscription<SettingsState> settingsSubscription;

  bool _sound = true;
  bool _voice = true;
  bool _beep = true;

  final AudioProvider _audio = Sound();

  AudioBloc({
    required this.settingsBloc,
  }) : super(AudioState()) {
    settingsSubscription = settingsBloc.stream.listen((state) {
      _sound = state.sound;
      _voice = state.voice;
      _beep = state.beep;
      _audio.setLanguage(state.language);
      _audio.setVolume(state.volume);
      _audio.setSpeechRate(state.rate);
      _audio.setPitch(state.pitch);
    });

    on<Countdown>((event, emit) async {
      if (_sound && _beep) {
        _audio.beep();
      } else {
        logger.d('Audio -> Sound is $_sound, beep is $_beep');
      }
    });

    on<Speak>((event, emit) async {
      if (_sound && _voice) {
        _audio.speak(event.text);
      } else {
        logger.d('Audio -> Sound is $_sound, voice is $_voice');
      }
    });
  }

  @override
  Future<void> close() {
    settingsSubscription.cancel();
    return super.close();
  }
}
