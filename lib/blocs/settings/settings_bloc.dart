import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:wakelock/wakelock.dart';

import 'package:entime/data_providers/settings/settings_provider.dart';

part 'settings_state.dart';

part 'settings_event.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsProvider settings;

  SettingsBloc(this.settings) : super(SettingsState.initial());

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event,) async* {
    if (event is LoadSettings) {
      var sound = await settings.getBool('sound') ?? state.sound;
      var beep = await settings.getBool('beep') ?? state.beep;
      var voice = await settings.getBool('voice') ?? state.voice;
      var voice_name = await settings.getBool('voice_name') ?? state.voice_name;
      var volume = await settings.getDouble('volume') ?? state.volume;
      var pitch = await settings.getDouble('pitch') ?? state.pitch;
      var rate = await settings.getDouble('rate') ?? state.rate;
      var language = await settings.getString('language') ?? state.language;
      var recentFile =
          await settings.getString('recentFile') ?? state.recentFile;
      var wakelock = await settings.getBool('wakelock') ?? state.wakelock;
      var startFab = await settings.getBool('start_fab') ?? state.startFab;
      var startFabSize =
          await settings.getDouble('start_fab_size') ?? state.startFabSize;
      var finishFab = await settings.getBool('finish_fab') ?? state.finishFab;
      var finishFabSize =
          await settings.getDouble('finish_fab_size') ?? state.finishFabSize;
      var countdown = await settings.getBool('countdown') ?? state.countdown;
      var countdownSize =
          await settings.getDouble('countdownSize') ?? state.countdownSize;
      var checkUpdates =
          await settings.getBool('checkUpdates') ?? state.checkUpdates;
      if (wakelock) {
        await Wakelock.enable();
      } else {
        await Wakelock.disable();
      }
      bool hideMarked =
          await settings.getBool('hideMarked') ?? state.hideMarked;
      bool hideNumbers =
          await settings.getBool('hideNumbers') ?? state.hideNumbers;
      bool hideManual =
          await settings.getBool('hideManual') ?? state.hideManual;
      bool reconnect = await settings.getBool('reconnect') ?? state.reconnect;
      int finishDelay =
          await settings.getInt('finishDelay') ?? state.finishDelay;
      bool substituteNumbers = await settings.getBool('substituteNumbers') ??
          state.substituteNumbers;
      int substituteNumbersDelay =
          await settings.getInt('substituteNumbersDelay') ??
              state.substituteNumbersDelay;
      int log_limit = await settings.getInt('log_limit') ?? state.log_limit;
      yield SettingsState(
        sound: sound,
        beep: beep,
        voice: voice,
        voice_name: voice_name,
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
        log_limit: log_limit,
      );
    } else if (event is SetBoolValueEvent) {
      if (event.sound != null) {
        await settings.setBool('sound', event.sound);
      }
      if (event.beep != null) {
        await settings.setBool('beep', event.beep);
      }
      if (event.voice != null) {
        await settings.setBool('voice', event.voice);
      }
      if (event.voice_name != null) {
        await settings.setBool('voice_name', event.voice_name);
      }
      if (event.wakelock != null) {
        await settings.setBool('wakelock', event.wakelock);
        if (event.wakelock) {
          await Wakelock.enable();
        } else {
          await Wakelock.disable();
        }
      }
      if (event.startFab != null) {
        await settings.setBool('start_fab', event.startFab);
      }
      if (event.finishFab != null) {
        await settings.setBool('finish_fab', event.finishFab);
      }
      if (event.countdown != null) {
        await settings.setBool('countdown', event.countdown);
      }
      if (event.checkUpdates != null) {
        await settings.setBool('checkUpdates', event.checkUpdates);
      }
      if (event.hideMarked != null) {
        await settings.setBool('hideMarked', event.hideMarked);
      }
      if (event.hideNumbers != null) {
        await settings.setBool('hideNumbers', event.hideNumbers);
      }
      if (event.hideManual != null) {
        await settings.setBool('hideManual', event.hideManual);
      }
      if (event.reconnect != null) {
        await settings.setBool('reconnect', event.reconnect);
      }
      if (event.substituteNumbers != null) {
        await settings.setBool('substituteNumbers', event.substituteNumbers);
      }
      yield SettingsState.clone(
        state,
        sound: event.sound,
        beep: event.beep,
        voice: event.voice,
        voice_name: event.voice_name,
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
        await settings.setInt('finishDelay', event.finishDelay);
      }
      if (event.substituteNumbersDelay != null) {
        await settings.setInt(
            'substituteNumbersDelay', event.substituteNumbersDelay);
      }
      if (event.log_limit != null) {
        await settings.setInt('log_limit', event.log_limit);
      }
      yield SettingsState.clone(
        state,
        finishDelay: event.finishDelay,
        substituteNumbersDelay: event.substituteNumbersDelay,
        log_limit: event.log_limit,
      );
    } else if (event is SetDoubleValueEvent) {
      if (event.volume != null) {
        await settings.setDouble('volume', event.volume);
      }
      if (event.pitch != null) {
        await settings.setDouble('pitch', event.pitch);
      }
      if (event.rate != null) {
        await settings.setDouble('rate', event.rate);
      }
      if (event.startFabSize != null) {
        await settings.setDouble('start_fab_size', event.startFabSize);
      }
      if (event.finishFabSize != null) {
        await settings.setDouble('finish_fab_size', event.finishFabSize);
      }
      if (event.countdownSize != null) {
        await settings.setDouble('countdownSize', event.countdownSize);
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
        await settings.setString('language', event.language);
      }
//      if (event.recentFile != null)
      await settings.setString('recentFile', event.recentFile);
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
