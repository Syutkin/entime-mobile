import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsProvider settingsProvider;

  SettingsBloc(this.settingsProvider)
      : super(SettingsState(settings: settingsProvider.settings)) {
    on<SettingsEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        initialize: (event) {
          emit(SettingsState(settings: settingsProvider.settings));
        },
        setDefault: (event) async {
          await settingsProvider.setDefaults();
          emit(SettingsState(settings: settingsProvider.settings));
        },
        update: (event) async {
          emit(SettingsState(settings: event.settings));
          await settingsProvider.update(event.settings);
        },
      );
    });
  }
}
