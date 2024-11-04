part of 'module_settings_bloc.dart';

@freezed
class ModuleSettingsEvent with _$ModuleSettingsEvent {
  const factory ModuleSettingsEvent.get(String json) = GetModuleSettings;
  const factory ModuleSettingsEvent.update(
    ModuleSettingsProvider moduleSettings,
  ) = UpdateModuleSettings;
}
