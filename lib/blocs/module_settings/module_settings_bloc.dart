import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:entime/data_providers/settings/module_settings_provider.dart';
import 'package:entime/data_providers/settings/module_settings_entime_provider.dart';
import 'package:entime/data_providers/settings/module_settings_led_provider.dart';
import 'package:entime/data_providers/settings/module_settings_type_provider.dart';
import 'package:entime/utils/logger.dart';

part 'module_settings_event.dart';

part 'module_settings_state.dart';

class ModuleSettingsBloc
    extends Bloc<ModuleSettingsEvent, ModuleSettingsState> {
  late ModuleSettingsProvider moduleSettings;

  ModuleSettingsBloc() : super(ModuleSettingsUninitialized()) {
    on<GetModuleSettings>(
        (event, emit) => _handleGetModuleSettings(event, emit));
    on<ModuleSettingsLoaded>((event, emit) {});
    on<UpdateModuleSettings>((event, emit) {
      emit(ModuleSettingsLoading());
      emit(ModuleSettingsUpdated(moduleSettings));
    });
  }

  void _handleGetModuleSettings(
      GetModuleSettings event, Emitter<ModuleSettingsState> emit) async {
    emit(ModuleSettingsLoading());
    moduleSettings = ModuleSettingsType();
    bool isLoaded = await moduleSettings.update(event.json);

    if (isLoaded) {
      if (moduleSettings.type == 'entime') {
        moduleSettings = ModuleSettingsEntime();
        isLoaded = await moduleSettings.update(event.json);
      } else if (moduleSettings.type == 'led') {
        moduleSettings = ModuleSettingsLed();
        isLoaded = await moduleSettings.update(event.json);
      } else {
        logger.e('Ошибка! Неизвестный тип модуля: ${moduleSettings.type}');
        emit(ModuleSettingsLoadError());
      }
      emit(ModuleSettingsUpdated(moduleSettings));
    } else {
      logger.e('Ошибка! Настройки не загружены');
      emit(ModuleSettingsLoadError());
    }
  }
}
