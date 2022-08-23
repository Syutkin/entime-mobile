import '../settings.dart';

abstract class SettingsProvider {
  AppSettings get settings;

  Future<void> update(AppSettings settings);

  Future<void> setDefaults();

  // Future<void> save(AppSettings settings);
}
