import 'package:entime/data_providers/audio/audio_provider.dart';
import 'package:entime/data_providers/audio/tts_provider.dart';
import 'package:entime/data_providers/audio/beep_provider.dart';
// import 'package:entime/data_providers/audio/audioplayers_provider.dart';
import 'package:entime/data_providers/audio/soundpool_provider.dart';

class Sound extends AudioProvider {
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
  void beep() {
    beepProvider.beep();
  }

  @override
  void speak(String text) async {
    flutterTts.speak(text);
  }
}
