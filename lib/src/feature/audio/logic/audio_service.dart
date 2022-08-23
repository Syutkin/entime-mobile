import '../../../common/logger/logger.dart';
import '../../settings/settings.dart';
import '../audio.dart';

class AudioService {
  final AudioProvider _audio = SoundAudioProvider();
  final SettingsProvider _settings;

  bool _sound = true;
  bool _voice = true;
  bool _beep = true;

  AudioService({required SettingsProvider settings}) : _settings = settings {
    _settings.state.listen((settings) {
      _sound = settings.sound;
      _voice = settings.voice;
      _beep = settings.beep;
      _audio.setLanguage(settings.language);
      _audio.setVolume(settings.volume);
      _audio.setSpeechRate(settings.rate);
      _audio.setPitch(settings.pitch);
    });
  }

  Future<void> countdown() async {
    if (_sound && _beep) {
      await _audio.beep();
    } else {
      logger.d('AudioService -> Sound is $_sound, beep is $_beep');
    }
  }

  Future<void> speak(String text) async {
    if (_sound && _voice) {
      await _audio.speak(text);
    } else {
      logger.d('AudioService -> Sound is $_sound, voice is $_voice');
    }
  }
}
