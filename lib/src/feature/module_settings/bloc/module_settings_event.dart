part of 'module_settings_bloc.dart';

@freezed
sealed class ModuleSettingsEvent with _$ModuleSettingsEvent {
  const factory ModuleSettingsEvent.get(String json) = ModuleSettingsEventGet;
  const factory ModuleSettingsEvent.update(ModSettingsModel moduleSettings) = ModuleSettingsEventUpdate;
  const factory ModuleSettingsEvent.unload() = ModuleSettingsEventUnload;
}
