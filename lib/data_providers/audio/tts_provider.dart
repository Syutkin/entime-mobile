import 'package:flutter_tts/flutter_tts.dart';

enum TtsState { playing, stopped }

class Tts {
  final FlutterTts flutterTts = FlutterTts();
  TtsState ttsState = TtsState.stopped;

  Tts() {
    flutterTts.setStartHandler(() {
      print('TTS -> Playing...');
      ttsState = TtsState.playing;
    });
    flutterTts.setCompletionHandler(() {
      print('TTS -> Complete');
      ttsState = TtsState.stopped;
    });
    flutterTts.setErrorHandler((msg) {
      print('TTS -> error: $msg');
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

  void speak(String text) async {
    if (text.isNotEmpty) {
      print('Sound TTS -> $text');
      var result = await flutterTts.speak(text);
      if (result == 1) ttsState = TtsState.playing;
    } else {
      print('Sound TTS -> Text is empty');
    }
  }
}
