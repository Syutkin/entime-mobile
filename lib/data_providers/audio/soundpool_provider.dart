import 'dart:async';

import 'package:flutter/services.dart';

import 'package:soundpool/soundpool.dart';

import 'beep_provider.dart';

class SoundpoolProvider extends BeepProvider {
  final Soundpool pool = Soundpool.fromOptions();
  late Future<int> soundId;

  SoundpoolProvider() {
    soundId = _loadSound();
  }

  Future<int> _loadSound() async {
    final asset = await rootBundle.load('assets/beeps.mp3');
    return pool.load(asset);
  }

  Future<void> _playSound() async {
    final alarmSound = await soundId;
    unawaited(pool.play(alarmSound));
  }

  @override
  void beep() {
    _playSound();
  }
}
