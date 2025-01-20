import 'package:audioplayers/audioplayers.dart';

abstract interface class IBeepProvider {
  Future<void> beep();
}

class AudioPoolProvider implements IBeepProvider {
  AudioPoolProvider(this.audioPool);

  AudioPool audioPool;

  @override
  Future<void> beep() async {
    await audioPool.start();
  }
}
