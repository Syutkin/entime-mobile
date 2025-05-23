import 'package:flutter_tts/flutter_tts.dart';

import '../../../common/logger/logger.dart';

enum TtsState { playing, stopped }

class TtsProvider {
  TtsProvider(this.flutterTts) {
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

  final FlutterTts flutterTts;
  TtsState ttsState = TtsState.stopped;

  Future<dynamic> get getDefaultEngine async {
    try {
      return await flutterTts.getDefaultEngine;
    } catch (e) {
      logger.e('FlutterTts -> Can not get default tts engine', error: e);
      return;
    }
  }

  Future<dynamic> get getDefaultVoice async {
    try {
      return await flutterTts.getDefaultVoice;
    } catch (e) {
      logger.e('FlutterTts -> Can not get default tts voice', error: e);
      return;
    }
  }

  Future<dynamic> setLanguage(String language) => flutterTts.setLanguage(language);

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
