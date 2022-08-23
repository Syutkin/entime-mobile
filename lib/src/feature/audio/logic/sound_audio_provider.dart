import 'dart:async';

import 'audio_provider.dart';
import 'beep_provider.dart';
// import 'audioplayers_provider.dart';
import 'soundpool_provider.dart';
import 'tts_provider.dart';

class SoundAudioProvider extends AudioProvider {
  final Tts flutterTts = Tts();
  // final BeepProvider beepProvider = AudioplayersProvider();
  final BeepProvider beepProvider = SoundpoolProvider();

  @override
  Future<dynamic> setLanguage(String language) {
    return flutterTts.setLanguage(language);
  }

  @override
  Future<dynamic> setVolume(double volume) {
    return flutterTts.setVolume(volume);
  }

  @override
  Future<dynamic> setSpeechRate(double rate) {
    return flutterTts.setSpeechRate(rate);
  }

  @override
  Future<dynamic> setPitch(double pitch) {
    return flutterTts.setPitch(pitch);
  }

  @override
  Future<void> beep() async {
    await beepProvider.beep();
  }

  @override
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }
}
