import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wakelock/wakelock.dart';

import 'package:entime/data_providers/settings/settings_provider.dart';

part 'settings_state.dart';

part 'settings_event.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsProvider settings;

  SettingsBloc(this.settings) : super(SettingsState.initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    if (event is LoadSettings) {
      var sound = settings.getBool('sound') ?? state.sound;
      var beep = settings.getBool('beep') ?? state.beep;
      var voice = settings.getBool('voice') ?? state.voice;
      var voiceName = settings.getBool('voiceName') ?? state.voiceName;
      var volume = settings.getDouble('volume') ?? state.volume;
      var pitch = settings.getDouble('pitch') ?? state.pitch;
      var rate = settings.getDouble('rate') ?? state.rate;
      var language = settings.getString('language') ?? state.language;
      var recentFile = settings.getString('recentFile') ?? state.recentFile;
      var wakelock = settings.getBool('wakelock') ?? state.wakelock;
      var startFab = settings.getBool('start_fab') ?? state.startFab;
      var startFabSize =
          settings.getDouble('start_fab_size') ?? state.startFabSize;
      var finishFab = settings.getBool('finish_fab') ?? state.finishFab;
      var finishFabSize =
          settings.getDouble('finish_fab_size') ?? state.finishFabSize;
      var countdown = settings.getBool('countdown') ?? state.countdown;
      var countdownSize =
          settings.getDouble('countdownSize') ?? state.countdownSize;
      var checkUpdates = settings.getBool('checkUpdates') ?? state.checkUpdates;
      if (wakelock) {
        await Wakelock.enable();
      } else {
        await Wakelock.disable();
      }
      bool hideMarked = settings.getBool('hideMarked') ?? state.hideMarked;
      bool hideNumbers = settings.getBool('hideNumbers') ?? state.hideNumbers;
      bool hideManual = settings.getBool('hideManual') ?? state.hideManual;
      bool reconnect = settings.getBool('reconnect') ?? state.reconnect;
      int finishDelay = settings.getInt('finishDelay') ?? state.finishDelay;
      bool substituteNumbers =
          settings.getBool('substituteNumbers') ?? state.substituteNumbers;
      int substituteNumbersDelay = settings.getInt('substituteNumbersDelay') ??
          state.substituteNumbersDelay;
      int logLimit = settings.getInt('log_limit') ?? state.logLimit;
      yield SettingsState(
        sound: sound,
        beep: beep,
        voice: voice,
        voiceName: voiceName,
        volume: volume,
        pitch: pitch,
        rate: rate,
        language: language,
        recentFile: recentFile,
        wakelock: wakelock,
        startFab: startFab,
        startFabSize: startFabSize,
        finishFab: finishFab,
        finishFabSize: finishFabSize,
        countdown: countdown,
        countdownSize: countdownSize,
        checkUpdates: checkUpdates,
        hideMarked: hideMarked,
        hideNumbers: hideNumbers,
        hideManual: hideManual,
        reconnect: reconnect,
        finishDelay: finishDelay,
        substituteNumbers: substituteNumbers,
        substituteNumbersDelay: substituteNumbersDelay,
        logLimit: logLimit,
      );
    } else if (event is SetBoolValueEvent) {
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
      yield SettingsState.clone(
        state,
        sound: event.sound,
        beep: event.beep,
        voice: event.voice,
        voiceName: event.voiceName,
        wakelock: event.wakelock,
        startFab: event.startFab,
        finishFab: event.finishFab,
        countdown: event.countdown,
        checkUpdates: event.checkUpdates,
        hideMarked: event.hideMarked,
        hideNumbers: event.hideNumbers,
        hideManual: event.hideManual,
        reconnect: event.reconnect,
        substituteNumbers: event.substituteNumbers,
      );
    } else if (event is SetIntValueEvent) {
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
      yield SettingsState.clone(
        state,
        finishDelay: event.finishDelay,
        substituteNumbersDelay: event.substituteNumbersDelay,
        logLimit: event.logLimit,
      );
    } else if (event is SetDoubleValueEvent) {
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
      yield SettingsState.clone(
        state,
        volume: event.volume,
        pitch: event.pitch,
        rate: event.rate,
        startFabSize: event.startFabSize,
        finishFabSize: event.finishFabSize,
        countdownSize: event.countdownSize,
      );
    } else if (event is SetStringValueEvent) {
      if (event.language != null) {
        settings.setString('language', event.language!);
      }
      if (event.recentFile != null) {
        settings.setString('recentFile', event.recentFile!);
      }
      yield SettingsState.clone(
        state,
        language: event.language,
        recentFile: event.recentFile,
      );
    } else if (event is SetDefaultSettings) {
      yield SettingsState.reset(state);
    }
  }
}
