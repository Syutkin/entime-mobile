import 'package:entime/models/theme.dart';

abstract class SettingsProvider {
  bool? getBool(String key);
  void setBool(String key, bool value);
  int? getInt(String key);
  void setInt(String key, int value);
  double? getDouble(String key);
  void setDouble(String key, double value);
  String? getString(String key);
  void setString(String key, String value);
  AppTheme getTheme();
  void setTheme(AppTheme theme);
}
