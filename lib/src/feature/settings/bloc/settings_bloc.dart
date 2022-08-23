import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsProvider settingsProvider;

  SettingsBloc(this.settingsProvider) : super(_SettingsState(settings: settingsProvider.settings)) {
    on<SettingsEventInitialize>((event, emit) {
      emit(_SettingsState(settings: settingsProvider.settings));
    });
    on<SettingsEventSetDefault>((event, emit) {
      settingsProvider.setDefaults();
      emit(_SettingsState(settings: settingsProvider.settings));
    });
    on<SettingsEventUpdate>((event, emit) {
      settingsProvider.update(event.settings);
      emit(_SettingsState(settings: settingsProvider.settings));
    });
  }
}
