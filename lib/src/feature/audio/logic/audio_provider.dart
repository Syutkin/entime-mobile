abstract class AudioProvider {
  Future<void> beep();

  Future<void> speak(String text);

  Future<dynamic> setLanguage(String language);

  Future<dynamic> setVolume(double volume);

  Future<dynamic> setSpeechRate(double rate);

  Future<dynamic> setPitch(double pitch);
}
