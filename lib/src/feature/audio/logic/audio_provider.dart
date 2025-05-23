import 'dart:async';

import 'beep_provider.dart';
import 'tts_provider.dart';

abstract interface class IAudioProvider {
  Future<void> beep();

  Future<void> speak(String text);

  Future<dynamic> setLanguage(String language);

  Future<dynamic> setVolume(double volume);

  Future<dynamic> setSpeechRate(double rate);

  Future<dynamic> setPitch(double pitch);
}

class AudioProvider implements IAudioProvider {
  AudioProvider({required this.ttsProvider, required this.beepProvider});

  final TtsProvider ttsProvider;

  final IBeepProvider beepProvider;

  @override
  Future<dynamic> setLanguage(String language) => ttsProvider.setLanguage(language);

  @override
  Future<dynamic> setVolume(double volume) => ttsProvider.setVolume(volume);

  @override
  Future<dynamic> setSpeechRate(double rate) => ttsProvider.setSpeechRate(rate);

  @override
  Future<dynamic> setPitch(double pitch) => ttsProvider.setPitch(pitch);

  @override
  Future<void> beep() async {
    await beepProvider.beep();
  }

  @override
  Future<void> speak(String text) async {
    await ttsProvider.speak(text);
  }
}
