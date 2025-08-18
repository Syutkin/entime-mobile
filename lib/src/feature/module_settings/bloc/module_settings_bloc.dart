import 'dart:convert';

import 'package:entime/src/feature/module_settings/model/module_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';

part 'module_settings_bloc.freezed.dart';
part 'module_settings_event.dart';
part 'module_settings_state.dart';

class ModuleSettingsBloc extends Bloc<ModuleSettingsEvent, ModuleSettingsState> {
  ModuleSettingsBloc() : super(const ModuleSettingsUninitialized()) {
    on<ModuleSettingsEventGet>(_handleGetModuleSettings);
    on<ModuleSettingsEventUpdate>((event, emit) {
      emit(ModuleSettingsLoaded(event.moduleSettings));
    });
    on<ModuleSettingsEventUnload>((event, emit) {
      emit(const ModuleSettingsUninitialized());
    });
  }

  Future<void> _handleGetModuleSettings(ModuleSettingsEventGet event, Emitter<ModuleSettingsState> emit) async {
    emit(const ModuleSettingsLoading());

    final jsonMap = jsonDecode(event.json) as Map<String, dynamic>;

    if (jsonMap.containsKey('Type')) {
      try {
        switch (jsonMap['Type']) {
          case 'entime':
            final moduleSettings = ModSettingsModel.entime(ModSettingsEntime.fromJson(jsonMap));
            emit(ModuleSettingsLoaded(moduleSettings));
          case 'led':
            final moduleSettings = ModSettingsModel.led(ModSettingsLed.fromJson(jsonMap));
            emit(ModuleSettingsLoaded(moduleSettings));
          default:
            logger.e('Ошибка! Неизвестный тип модуля: ${jsonMap['Type']}');
            emit(const ModuleSettingsError());
        }
      } catch (e) {
        logger.e('Ошибка! Не удалось загрузить настройки модуля', error: e);
        emit(const ModuleSettingsError());
      }
    } else {
      logger.e('Ошибка! Неизвестный формат настроек. Настройки не загружены');
      emit(const ModuleSettingsError());
    }
  }
}
