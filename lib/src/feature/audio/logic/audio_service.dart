import 'dart:async';

import '../../../common/logger/logger.dart';
import '../../settings/settings.dart';
import '../audio.dart';

abstract interface class IAudioService {
  Future<bool> countdown();

  Future<bool> speak(String text);

  Future<void> dispose();
}

class AudioService implements IAudioService {
  AudioService({required this._settings, required this._audio}) {
    _settingsSubscription = _settings.state.listen((settings) async {
      _sound = settings.sound;
      _voice = settings.voice;
      _beep = settings.beep;
      await _audio.setLanguage(settings.language);
      await _audio.setVolume(settings.volume);
      await _audio.setSpeechRate(settings.rate);
      await _audio.setPitch(settings.pitch);
    });
  }

  final IAudioProvider _audio;
  final ISettingsProvider _settings;
  late final StreamSubscription<AppSettings> _settingsSubscription;

  bool _sound = true;
  bool _voice = true;
  bool _beep = true;

  @override
  Future<bool> countdown() async {
    if (_sound && _beep) {
      await _audio.beep();
      return true;
    } else {
      logger.d('AudioService -> Sound is $_sound, beep is $_beep');
      return false;
    }
  }

  @override
  Future<bool> speak(String text) async {
    if (_sound && _voice) {
      await _audio.speak(text);
      return true;
    } else {
      logger.d('AudioService -> Sound is $_sound, voice is $_voice');
      return false;
    }
  }

  @override
  Future<void> dispose() async {
    await _settingsSubscription.cancel();
  }
}
