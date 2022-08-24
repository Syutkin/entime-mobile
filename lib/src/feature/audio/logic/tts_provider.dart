import 'package:flutter_tts/flutter_tts.dart';

import '../../../common/logger/logger.dart';

enum TtsState { playing, stopped }

class Tts {
  final FlutterTts flutterTts = FlutterTts();
  TtsState ttsState = TtsState.stopped;

  Tts() {
    flutterTts
      ..setStartHandler(() {
        logger.i('TTS -> Playing...');
        ttsState = TtsState.playing;
      })
      ..setCompletionHandler(() {
        logger.i('TTS -> Complete');
        ttsState = TtsState.stopped;
      })
      ..setErrorHandler((dynamic msg) {
        logger.i('TTS -> error: $msg');
        ttsState = TtsState.stopped;
      });
  }

  Future<dynamic> setLanguage(String language) =>
      flutterTts.setLanguage(language);

  Future<dynamic> setVolume(double volume) => flutterTts.setVolume(volume);

  Future<dynamic> setSpeechRate(double rate) => flutterTts.setSpeechRate(rate);

  Future<dynamic> setPitch(double pitch) => flutterTts.setPitch(pitch);

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      logger.i('Sound TTS -> $text');
      final dynamic result = await flutterTts.speak(text);
      if (result == 1) {
        ttsState = TtsState.playing;
      }
    } else {
      logger.i('Sound TTS -> Text is empty');
    }
  }
}
