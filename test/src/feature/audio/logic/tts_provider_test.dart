import 'package:entime/src/feature/audio/logic/tts_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterTts extends Mock implements FlutterTts {}

void main() {
  late FlutterTts flutterTts;
  late TtsProvider ttsProvider;
  const text = 'text';

  setUp(() {
    flutterTts = MockFlutterTts();
    ttsProvider = TtsProvider(flutterTts);

    when(() => flutterTts.getDefaultEngine).thenAnswer((_) => Future.value(''));
    when(() => flutterTts.getDefaultVoice).thenAnswer((_) => Future.value(''));
    when(() => flutterTts.setLanguage(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.setVolume(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.setSpeechRate(any()))
        .thenAnswer((_) => Future.value());
    when(() => flutterTts.setPitch(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.speak(text)).thenAnswer((_) => Future.value(1));
  });
  group(
    'TtsProvider tests',
    () {
      test(
        'TtsProvider initial state',
        () async {
          expect(ttsProvider.ttsState, TtsState.stopped);
        },
      );
      test(
        'TtsProvider getDefaultEngine',
        () async {
          await ttsProvider.getDefaultEngine;
          verify(() => flutterTts.getDefaultEngine).called(1);
        },
      );
      test(
        'TtsProvider getDefaultVoice',
        () async {
          await ttsProvider.getDefaultVoice;
          verify(() => flutterTts.getDefaultVoice).called(1);
        },
      );
      test(
        'TtsProvider setLanguage',
        () async {
          await ttsProvider.setLanguage('language');
          verify(() => flutterTts.setLanguage(any())).called(1);
        },
      );
      test(
        'TtsProvider setVolume',
        () async {
          await ttsProvider.setVolume(1);
          verify(() => flutterTts.setVolume(any())).called(1);
        },
      );
      test(
        'TtsProvider setSpeechRate',
        () async {
          await ttsProvider.setSpeechRate(1);
          verify(() => flutterTts.setSpeechRate(any())).called(1);
        },
      );
      test(
        'TtsProvider setPitch',
        () async {
          await ttsProvider.setPitch(1);
          verify(() => flutterTts.setPitch(any())).called(1);
        },
      );
      test(
        'TtsProvider change state when call speak',
        () async {
          await ttsProvider.speak(text);
          expect(ttsProvider.ttsState, TtsState.playing);
        },
      );
      test(
        'TtsProvider call speak',
        () async {
          await ttsProvider.speak(text);
          verify(() => flutterTts.speak(text)).called(1);
        },
      );
      test(
        'TtsProvider call speak but text is empty',
        () async {
          await ttsProvider.speak('');
          verifyNever(() => flutterTts.speak(text));
        },
      );
    },
  );
}
