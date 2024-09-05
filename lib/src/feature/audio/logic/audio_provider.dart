import 'dart:async';

import 'beep_provider.dart';

// import 'audioplayers_provider.dart';
import 'soundpool_provider.dart';
import 'tts_provider.dart';

abstract class IAudioProvider {
  Future<void> beep();

  Future<void> speak(String text);

  Future<dynamic> setLanguage(String language);

  Future<dynamic> setVolume(double volume);

  Future<dynamic> setSpeechRate(double rate);

  Future<dynamic> setPitch(double pitch);
}

class AudioProvider implements IAudioProvider {
  final Tts flutterTts = Tts();

  // final BeepProvider beepProvider = AudioplayersProvider();
  final BeepProvider beepProvider = SoundpoolProvider();

  @override
  Future<dynamic> setLanguage(String language) =>
      flutterTts.setLanguage(language);

  @override
  Future<dynamic> setVolume(double volume) => flutterTts.setVolume(volume);

  @override
  Future<dynamic> setSpeechRate(double rate) => flutterTts.setSpeechRate(rate);

  @override
  Future<dynamic> setPitch(double pitch) => flutterTts.setPitch(pitch);

  @override
  Future<void> beep() async {
    await beepProvider.beep();
  }

  @override
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }
}
