import '../../../common/model/reactive_state.dart';
import '../settings.dart';

abstract class SettingsProvider with ReactiveState<AppSettings> {
  AppSettings get settings;

  Future<void> update(AppSettings settings);

  AppSettings getDefaults();

  Future<void> setDefaults();
}
