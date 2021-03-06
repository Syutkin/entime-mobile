import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakelock/wakelock.dart';

import '../../data_providers/settings/settings_provider.dart';
import '../../models/models.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsProvider settings;

  SettingsBloc(this.settings) : super(SettingsState.initialize(settings)) {
    on<SetBoolValueEvent>((event, emit) async {
      if (event.sound != null) {
        settings.setBool('sound', event.sound!);
      }
      if (event.beep != null) {
        settings.setBool('beep', event.beep!);
      }
      if (event.voice != null) {
        settings.setBool('voice', event.voice!);
      }
      if (event.voiceName != null) {
        settings.setBool('voiceName', event.voiceName!);
      }
      if (event.wakelock != null) {
        settings.setBool('wakelock', event.wakelock!);
        if (event.wakelock!) {
          await Wakelock.enable();
        } else {
          await Wakelock.disable();
        }
      }
      if (event.startFab != null) {
        settings.setBool('start_fab', event.startFab!);
      }
      if (event.finishFab != null) {
        settings.setBool('finish_fab', event.finishFab!);
      }
      if (event.countdown != null) {
        settings.setBool('countdown', event.countdown!);
      }
      if (event.countdownAtStartTime != null) {
        settings.setBool('countdownAtStartTime', event.countdownAtStartTime!);
      }
      if (event.checkUpdates != null) {
        settings.setBool('checkUpdates', event.checkUpdates!);
      }
      if (event.hideMarked != null) {
        settings.setBool('hideMarked', event.hideMarked!);
      }
      if (event.hideNumbers != null) {
        settings.setBool('hideNumbers', event.hideNumbers!);
      }
      if (event.hideManual != null) {
        settings.setBool('hideManual', event.hideManual!);
      }
      if (event.reconnect != null) {
        settings.setBool('reconnect', event.reconnect!);
      }
      if (event.substituteNumbers != null) {
        settings.setBool('substituteNumbers', event.substituteNumbers!);
      }
      emit(SettingsState.clone(
        state,
        sound: event.sound,
        beep: event.beep,
        voice: event.voice,
        voiceName: event.voiceName,
        wakelock: event.wakelock,
        startFab: event.startFab,
        finishFab: event.finishFab,
        countdown: event.countdown,
        countdownAtStartTime: event.countdownAtStartTime,
        checkUpdates: event.checkUpdates,
        hideMarked: event.hideMarked,
        hideNumbers: event.hideNumbers,
        hideManual: event.hideManual,
        reconnect: event.reconnect,
        substituteNumbers: event.substituteNumbers,
      ));
    });

    on<SetIntValueEvent>((event, emit) {
      if (event.finishDelay != null) {
        settings.setInt('finishDelay', event.finishDelay!);
      }
      if (event.substituteNumbersDelay != null) {
        settings.setInt(
            'substituteNumbersDelay', event.substituteNumbersDelay!);
      }
      if (event.logLimit != null) {
        settings.setInt('log_limit', event.logLimit!);
      }
      emit(SettingsState.clone(
        state,
        finishDelay: event.finishDelay,
        substituteNumbersDelay: event.substituteNumbersDelay,
        logLimit: event.logLimit,
      ));
    });

    on<SetDoubleValueEvent>((event, emit) {
      if (event.volume != null) {
        settings.setDouble('volume', event.volume!);
      }
      if (event.pitch != null) {
        settings.setDouble('pitch', event.pitch!);
      }
      if (event.rate != null) {
        settings.setDouble('rate', event.rate!);
      }
      if (event.startFabSize != null) {
        settings.setDouble('start_fab_size', event.startFabSize!);
      }
      if (event.finishFabSize != null) {
        settings.setDouble('finish_fab_size', event.finishFabSize!);
      }
      if (event.countdownSize != null) {
        settings.setDouble('countdownSize', event.countdownSize!);
      }
      if (event.countdownLeft != null) {
        settings.setDouble('countdownLeft', event.countdownLeft!);
      }
      if (event.countdownTop != null) {
        settings.setDouble('countdownTop', event.countdownTop!);
      }
      emit(SettingsState.clone(
        state,
        volume: event.volume,
        pitch: event.pitch,
        rate: event.rate,
        startFabSize: event.startFabSize,
        finishFabSize: event.finishFabSize,
        countdownSize: event.countdownSize,
        countdownLeft: event.countdownLeft,
        countdownTop: event.countdownTop,
      ));
    });

    on<SetStringValueEvent>((event, emit) {
      if (event.language != null) {
        settings.setString('language', event.language!);
      }
      if (event.recentFile != null) {
        settings.setString('recentFile', event.recentFile!);
      }
      emit(SettingsState.clone(
        state,
        language: event.language,
        recentFile: event.recentFile,
      ));
    });

    on<ThemeChanged>((event, emit) {
      settings.setTheme(event.theme);
      emit(SettingsState.clone(
        state,
        appTheme: event.theme,
      ));
    });

    on<SetDefaultSettings>((event, emit) {
      SettingsState.reset(state).save(settings);
      emit(SettingsState.reset(state));
    });
  }
}
