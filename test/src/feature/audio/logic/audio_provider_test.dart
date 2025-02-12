import 'package:entime/src/feature/audio/audio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTtsProvider extends Mock implements TtsProvider {}

class MockIBeepProvider extends Mock implements IBeepProvider {}

void main() {
  late TtsProvider ttsProvider;
  late IBeepProvider beepProvider;
  late AudioProvider ap;
  const text = 'text';

  setUp(() {
    ttsProvider = MockTtsProvider();
    beepProvider = MockIBeepProvider();
    ap = AudioProvider(ttsProvider: ttsProvider, beepProvider: beepProvider);

    when(() => beepProvider.beep()).thenAnswer((_) => Future.value());
    when(() => ttsProvider.speak(text)).thenAnswer((_) => Future.value());
    when(() => ttsProvider.setLanguage(any())).thenAnswer((_) => Future.value());
    when(() => ttsProvider.setVolume(any())).thenAnswer((_) => Future.value());
    when(() => ttsProvider.setSpeechRate(any())).thenAnswer((_) => Future.value());
    when(() => ttsProvider.setPitch(any())).thenAnswer((_) => Future.value());
  });

  group('AudioProvider tests', () {
    test('AudioProvider beep', () async {
      await ap.beep();
      verify(() => beepProvider.beep()).called(1);
    });

    test('AudioProvider speak', () async {
      await ap.speak(text);
      verify(() => ttsProvider.speak(text)).called(1);
    });

    test('AudioProvider setLanguage', () async {
      await ap.setLanguage('language');
      verify(() => ttsProvider.setLanguage(any())).called(1);
    });

    test('AudioProvider setVolume', () async {
      await ap.setVolume(1);
      verify(() => ttsProvider.setVolume(any())).called(1);
    });

    test('AudioProvider setSpeechRate', () async {
      await ap.setSpeechRate(1);
      verify(() => ttsProvider.setSpeechRate(any())).called(1);
    });

    test('AudioProvider setPitch', () async {
      await ap.setPitch(1);
      verify(() => ttsProvider.setPitch(any())).called(1);
    });
  });
}
