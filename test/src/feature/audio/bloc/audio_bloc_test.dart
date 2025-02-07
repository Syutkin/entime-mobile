import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/audio/bloc/audio_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTtsProvider extends Mock implements TtsProvider {}

void main() {
  late TtsProvider ttsProvider;
  late String engine;
  late String voice;

  setUp(() {
    ttsProvider = MockTtsProvider();
  });

  group(
    'AudioBloc test',
    () {
      blocTest<AudioBloc, AudioState>(
        'FlutterBluetoothSerial: bluetooth not available',
        setUp: () {
          engine = 'TTS Engine';
          voice = 'TTS Engine';
          when(
            () => ttsProvider.getDefaultEngine,
          ).thenAnswer((_) => Future.value(engine));
          when(
            () => ttsProvider.getDefaultVoice,
          ).thenAnswer((_) => Future.value({'name': voice}));
        },
        build: () => AudioBloc(ttsProvider: ttsProvider),
        act: (bloc) => bloc.add(const AudioEvent.init()),
        expect: () => [AudioState.initialized(engine: engine, voice: voice)],
      );
    },
  );
}
