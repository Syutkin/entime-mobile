import 'package:flutter/services.dart';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:pedantic/pedantic.dart';
import 'package:soundpool/soundpool.dart';

import 'package:entime/data_providers/audio/audio_provider.dart';

enum TtsState { playing, stopped }

class Sound extends AudioProvider {
  final FlutterTts flutterTts = FlutterTts();
  TtsState ttsState = TtsState.stopped;

  final Soundpool pool = Soundpool();
  Future<int> soundId;

  Sound() {
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
    soundId = _loadSound();
  }

  Future<int> _loadSound() async {
    var asset = await rootBundle.load('assets/beeps.mp3');
    return await pool.load(asset);
  }

  Future<void> _playSound() async {
    var _alarmSound = await soundId;
    unawaited(pool.play(_alarmSound));
  }

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
  void beep() {
     _playSound();
  }

  @override
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
