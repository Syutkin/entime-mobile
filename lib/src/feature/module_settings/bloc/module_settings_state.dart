part of 'module_settings_bloc.dart';

@freezed
class ModuleSettingsState with _$ModuleSettingsState {
  const factory ModuleSettingsState.uninitialized() = ModuleSettingsUninitialized;
  const factory ModuleSettingsState.loading() = ModuleSettingsLoading;

  const factory ModuleSettingsState.loaded(ModuleSettingsProvider moduleSettings) = ModuleSettingsLoaded;
  const factory ModuleSettingsState.error() = ModuleSettingsError;

  // factory ModuleSettingsState.fromJson(Map<String, dynamic> json) =>
  //     _$ModuleSettingsStateFromJson(json);
}

// Reason:
//if the authentication state was uninitialized, the user might be seeing a splash screen.
//if the authentication state was loading, the user might be seeing a progress indicator.
//if the authentication state was authenticated, the user might see a home screen.
//if the authentication state was unauthenticated, the user might see a login form.
