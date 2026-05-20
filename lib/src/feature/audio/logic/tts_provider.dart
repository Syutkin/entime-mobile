import 'package:flutter/services.dart';
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
    } on MissingPluginException {
      logger.d('FlutterTts -> getDefaultEngine is not implemented on this platform');
      return null;
    } catch (e) {
      logger.e('FlutterTts -> Can not get default tts engine', error: e);
      return;
    }
  }

  Future<dynamic> get getDefaultVoice async {
    try {
      return await flutterTts.getDefaultVoice;
    } on MissingPluginException {
      logger.d('FlutterTts -> getDefaultVoice is not implemented on this platform');
      return null;
    } catch (e) {
      logger.e('FlutterTts -> Can not get default tts voice', error: e);
      return;
    }
  }

  Future<dynamic> setLanguage(String language) async {
    try {
      return await flutterTts.setLanguage(language);
    } on MissingPluginException {
      logger.d('FlutterTts -> setLanguage is not implemented on this platform');
      return null;
    } catch (e) {
      logger.e('FlutterTts -> Can not set language', error: e);
      return null;
    }
  }

  Future<dynamic> setVolume(double volume) async {
    try {
      return await flutterTts.setVolume(volume);
    } on MissingPluginException {
      logger.d('FlutterTts -> setVolume is not implemented on this platform');
      return null;
    } catch (e) {
      logger.e('FlutterTts -> Can not set volume', error: e);
      return null;
    }
  }

  Future<dynamic> setSpeechRate(double rate) async {
    try {
      return await flutterTts.setSpeechRate(rate);
    } on MissingPluginException {
      logger.d('FlutterTts -> setSpeechRate is not implemented on this platform');
      return null;
    } catch (e) {
      logger.e('FlutterTts -> Can not set speech rate', error: e);
      return null;
    }
  }

  Future<dynamic> setPitch(double pitch) async {
    try {
      return await flutterTts.setPitch(pitch);
    } on MissingPluginException {
      logger.d('FlutterTts -> setPitch is not implemented on this platform');
      return null;
    } catch (e) {
      logger.e('FlutterTts -> Can not set pitch', error: e);
      return null;
    }
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      logger.i('Sound TTS -> $text');
      try {
        final dynamic result = await flutterTts.speak(text);
        if (result == 1) {
          ttsState = TtsState.playing;
        }
      } on MissingPluginException {
        logger.d('FlutterTts -> speak is not implemented on this platform');
        return;
      } catch (e) {
        logger.e('FlutterTts -> Can not speak', error: e);
      }
    } else {
      logger.i('Sound TTS -> Text is empty');
    }
  }
}
