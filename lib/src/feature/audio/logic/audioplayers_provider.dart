import 'package:audioplayers/audioplayers.dart';

import 'beep_provider.dart';

class AudioplayersProvider implements IBeepProvider {
  AudioPool? _pool;

  @override
  Future<void> beep() async {
    _pool ??= await AudioPool.createFromAsset(path: 'beeps.mp3', maxPlayers: 2);
    await _pool?.start();
  }
}
