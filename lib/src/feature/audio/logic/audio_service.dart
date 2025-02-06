import '../../../common/logger/logger.dart';
import '../../settings/settings.dart';
import '../audio.dart';

abstract interface class IAudioService {
  Future<bool> countdown();

  Future<bool> speak(String text);
}

class AudioService implements IAudioService {
  AudioService({
    required ISettingsProvider settings,
    required IAudioProvider audio,
  }) : _settings = settings,
       _audio = audio {
    _settings.state.listen((settings) {
      _sound = settings.sound;
      _voice = settings.voice;
      _beep = settings.beep;
      _audio
        ..setLanguage(settings.language)
        ..setVolume(settings.volume)
        ..setSpeechRate(settings.rate)
        ..setPitch(settings.pitch);
    });
  }

  final IAudioProvider _audio;
  final ISettingsProvider _settings;

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
}
