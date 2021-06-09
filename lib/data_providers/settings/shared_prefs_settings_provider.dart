import 'package:shared_preferences/shared_preferences.dart';

import 'package:entime/models/models.dart';

import 'settings_provider.dart';

class SharedPrefsSettingsProvider extends SettingsProvider {
  final SharedPreferences _prefs;

  SharedPrefsSettingsProvider(this._prefs) : assert(_prefs != null);

  static Future<SharedPrefsSettingsProvider> load() async {
    return SharedPrefsSettingsProvider(await SharedPreferences.getInstance());
  }

  @override
  bool getBool(String key) => _prefs.getBool(key);

  @override
  void setBool(String key, bool value) => _prefs.setBool(key, value);

  @override
  int getInt(String key) => _prefs.getInt(key);

  @override
  void setInt(String key, int value) => _prefs.setInt(key, value);

  @override
  double getDouble(String key) => _prefs.getDouble(key);

  @override
  void setDouble(String key, double value) => _prefs.setDouble(key, value);

  @override
  String getString(String key) => _prefs.getString(key);

  @override
  void setString(String key, String value) => _prefs.setString(key, value);

  @override
  AppTheme getTheme() {
    String t = _prefs.getString('theme');
    return themeFromString(t) ?? AppTheme.LightBlue;
  }

  @override
  void setTheme(AppTheme theme) {
    _prefs.setString('theme', theme.stringify);
  }
}
