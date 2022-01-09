import 'package:flutter_tts/flutter_tts.dart';

import 'package:entime/utils/logger.dart';

enum TtsState { playing, stopped }

class Tts {
  final FlutterTts flutterTts = FlutterTts();
  TtsState ttsState = TtsState.stopped;

  Tts() {
    flutterTts.setStartHandler(() {
      logger.i('TTS -> Playing...');
      ttsState = TtsState.playing;
    });
    flutterTts.setCompletionHandler(() {
      logger.i('TTS -> Complete');
      ttsState = TtsState.stopped;
    });
    flutterTts.setErrorHandler((msg) {
      logger.i('TTS -> error: $msg');
      ttsState = TtsState.stopped;
    });
  }

  Future<dynamic> setLanguage(String language) {
    return flutterTts.setLanguage(language);
  }

  Future<dynamic> setVolume(double volume) {
    return flutterTts.setVolume(volume);
  }

  Future<dynamic> setSpeechRate(double rate) {
    return flutterTts.setSpeechRate(rate);
  }

  Future<dynamic> setPitch(double pitch) {
    return flutterTts.setPitch(pitch);
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      logger.i('Sound TTS -> $text');
      final result = await flutterTts.speak(text);
      if (result == 1) {
        ttsState = TtsState.playing;
      }
    } else {
      logger.i('Sound TTS -> Text is empty');
    }
  }
}
