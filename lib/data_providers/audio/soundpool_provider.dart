import 'dart:async';

import 'package:flutter/services.dart';

import 'package:soundpool/soundpool.dart';

import 'package:entime/data_providers/audio/beep_provider.dart';

class SoundpoolProvider extends BeepProvider {
  final Soundpool pool = Soundpool.fromOptions();
  late Future<int> soundId;

  SoundpoolProvider() {
    soundId = _loadSound();
  }

  Future<int> _loadSound() async {
    var asset = await rootBundle.load('assets/beeps.mp3');
    return await pool.load(asset);
  }

  Future<void> _playSound() async {
    var _alarmSound = await soundId;
    unawaited(pool.play(_alarmSound));
  }

  @override
  void beep() {
    _playSound();
  }
}
