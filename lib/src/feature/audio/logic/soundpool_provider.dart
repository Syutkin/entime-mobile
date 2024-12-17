import 'dart:async';

import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

import 'beep_provider.dart';

class SoundpoolProvider with BeepProvider {
  SoundpoolProvider() {
    soundId = _loadSound();
  }

  final Soundpool pool = Soundpool.fromOptions();
  late Future<int> soundId;

  Future<int> _loadSound() async {
    final asset = await rootBundle.load('assets/beeps.mp3');
    return pool.load(asset);
  }

  Future<void> _playSound() async {
    final alarmSound = await soundId;
    unawaited(pool.play(alarmSound));
  }

  @override
  Future<void> beep() async {
    await _playSound();
  }
}
