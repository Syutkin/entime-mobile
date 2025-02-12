import 'package:audioplayers/audioplayers.dart';
import 'package:entime/src/feature/audio/logic/beep_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAudioPool extends Mock implements AudioPool {}

void main() {
  late AudioPool pool;
  late IBeepProvider beepProvider;

  setUp(() {
    pool = MockAudioPool();
    beepProvider = AudioPoolProvider(pool);

    Future<void> mockStop() {
      return Future.value();
    }

    when(() => pool.start()).thenAnswer((_) => Future.value(Future.value(mockStop)));
  });

  group('BeepProvider tests', () {
    test('BeepProvider beep', () async {
      await beepProvider.beep();
      verify(() => pool.start()).called(1);
    });
  });
}
