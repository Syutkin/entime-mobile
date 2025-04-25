part of 'module_settings_bloc.dart';

@freezed
sealed class ModuleSettingsEvent with _$ModuleSettingsEvent {
  const factory ModuleSettingsEvent.get(String json) = _Get;
  const factory ModuleSettingsEvent.update(ModuleSettingsProvider moduleSettings) = _Update;
}
