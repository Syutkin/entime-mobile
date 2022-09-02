part of 'module_settings_bloc.dart';

@freezed
class ModuleSettingsEvent with _$ModuleSettingsEvent {
  const factory ModuleSettingsEvent.get(final String json) = GetModuleSettings;
  const factory ModuleSettingsEvent.update(
      final ModuleSettingsProvider moduleSettings,) = UpdateModuleSettings;
}
