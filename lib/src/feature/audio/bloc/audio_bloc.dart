import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../common/logger/logger.dart';
import '../../settings/settings.dart';
import '../logic/audio_provider.dart';
import '../logic/sound_audio_provider.dart';

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
      _sound = state.settings.sound;
      _voice = state.settings.voice;
      _beep = state.settings.beep;
      _audio.setLanguage(state.settings.language);
      _audio.setVolume(state.settings.volume);
      _audio.setSpeechRate(state.settings.rate);
      _audio.setPitch(state.settings.pitch);
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
