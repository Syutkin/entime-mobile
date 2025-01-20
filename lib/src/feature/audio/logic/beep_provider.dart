import 'package:audioplayers/audioplayers.dart';

abstract interface class IBeepProvider {
  Future<void> beep();
}

class AudioplayersProvider implements IBeepProvider {
  AudioPool? _pool;

  @override
  Future<void> beep() async {
    _pool ??= await AudioPool.createFromAsset(path: 'beeps.mp3', maxPlayers: 2);
    await _pool?.start();
  }
}
