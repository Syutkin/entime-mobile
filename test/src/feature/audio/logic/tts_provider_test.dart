import 'package:entime/src/feature/audio/logic/tts_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterTts extends Mock implements FlutterTts {}

void main() {
  late FlutterTts flutterTts;
  late TtsProvider ttsProvider;
  late VoidCallback startHandler;
  late VoidCallback completionHandler;
  late ErrorHandler errorHandler;
  const text = 'text';

  setUpAll(() {
    registerFallbackValue(() {});
    registerFallbackValue((dynamic _) {});
  });

  setUp(() {
    flutterTts = MockFlutterTts();
    when(() => flutterTts.setStartHandler(any())).thenAnswer((invocation) {
      startHandler = invocation.positionalArguments.first as VoidCallback;
    });
    when(() => flutterTts.setCompletionHandler(any())).thenAnswer((invocation) {
      completionHandler = invocation.positionalArguments.first as VoidCallback;
    });
    when(() => flutterTts.setErrorHandler(any())).thenAnswer((invocation) {
      errorHandler = invocation.positionalArguments.first as ErrorHandler;
    });

    ttsProvider = TtsProvider(flutterTts);

    when(() => flutterTts.getDefaultEngine).thenAnswer((_) => Future.value(''));
    when(() => flutterTts.getDefaultVoice).thenAnswer((_) => Future.value(''));
    when(() => flutterTts.setLanguage(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.setVolume(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.setSpeechRate(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.setPitch(any())).thenAnswer((_) => Future.value());
    when(() => flutterTts.speak(text)).thenAnswer((_) => Future.value(1));
  });
  group('TtsProvider tests', () {
    test('TtsProvider initial state', () async {
      expect(ttsProvider.ttsState, TtsState.stopped);
    });
    test('TtsProvider registers handlers on init', () async {
      verify(() => flutterTts.setStartHandler(any())).called(1);
      verify(() => flutterTts.setCompletionHandler(any())).called(1);
      verify(() => flutterTts.setErrorHandler(any())).called(1);
    });
    test('TtsProvider start handler sets state to playing', () async {
      startHandler();
      expect(ttsProvider.ttsState, TtsState.playing);
    });
    test('TtsProvider completion handler sets state to stopped', () async {
      ttsProvider.ttsState = TtsState.playing;
      completionHandler();
      expect(ttsProvider.ttsState, TtsState.stopped);
    });
    test('TtsProvider error handler sets state to stopped', () async {
      ttsProvider.ttsState = TtsState.playing;
      errorHandler('error');
      expect(ttsProvider.ttsState, TtsState.stopped);
    });
    test('TtsProvider getDefaultEngine', () async {
      await ttsProvider.getDefaultEngine;
      verify(() => flutterTts.getDefaultEngine).called(1);
    });
    test('TtsProvider getDefaultEngine returns null on MissingPluginException', () async {
      when(() => flutterTts.getDefaultEngine).thenThrow(MissingPluginException());
      final result = await ttsProvider.getDefaultEngine;
      expect(result, isNull);
    });
    test('TtsProvider getDefaultVoice', () async {
      await ttsProvider.getDefaultVoice;
      verify(() => flutterTts.getDefaultVoice).called(1);
    });
    test('TtsProvider getDefaultVoice returns null on MissingPluginException', () async {
      when(() => flutterTts.getDefaultVoice).thenThrow(MissingPluginException());
      final result = await ttsProvider.getDefaultVoice;
      expect(result, isNull);
    });
    test('TtsProvider setLanguage', () async {
      await ttsProvider.setLanguage('language');
      verify(() => flutterTts.setLanguage(any())).called(1);
    });
    test('TtsProvider setLanguage returns null on MissingPluginException', () async {
      when(() => flutterTts.setLanguage(any())).thenThrow(MissingPluginException());
      final result = await ttsProvider.setLanguage('language');
      expect(result, isNull);
    });
    test('TtsProvider setVolume', () async {
      await ttsProvider.setVolume(1);
      verify(() => flutterTts.setVolume(any())).called(1);
    });
    test('TtsProvider setVolume returns null on MissingPluginException', () async {
      when(() => flutterTts.setVolume(any())).thenThrow(MissingPluginException());
      final result = await ttsProvider.setVolume(1);
      expect(result, isNull);
    });
    test('TtsProvider setSpeechRate', () async {
      await ttsProvider.setSpeechRate(1);
      verify(() => flutterTts.setSpeechRate(any())).called(1);
    });
    test('TtsProvider setSpeechRate returns null on MissingPluginException', () async {
      when(() => flutterTts.setSpeechRate(any())).thenThrow(MissingPluginException());
      final result = await ttsProvider.setSpeechRate(1);
      expect(result, isNull);
    });
    test('TtsProvider setPitch', () async {
      await ttsProvider.setPitch(1);
      verify(() => flutterTts.setPitch(any())).called(1);
    });
    test('TtsProvider setPitch returns null on MissingPluginException', () async {
      when(() => flutterTts.setPitch(any())).thenThrow(MissingPluginException());
      final result = await ttsProvider.setPitch(1);
      expect(result, isNull);
    });
    test('TtsProvider change state when call speak', () async {
      await ttsProvider.speak(text);
      expect(ttsProvider.ttsState, TtsState.playing);
    });
    test('TtsProvider does not change state when speak returns non-1', () async {
      when(() => flutterTts.speak(text)).thenAnswer((_) => Future.value(0));
      await ttsProvider.speak(text);
      expect(ttsProvider.ttsState, TtsState.stopped);
    });
    test('TtsProvider call speak', () async {
      await ttsProvider.speak(text);
      verify(() => flutterTts.speak(text)).called(1);
    });
    test('TtsProvider speak handles MissingPluginException', () async {
      when(() => flutterTts.speak(text)).thenThrow(MissingPluginException());
      await ttsProvider.speak(text);
      expect(ttsProvider.ttsState, TtsState.stopped);
    });
    test('TtsProvider call speak but text is empty', () async {
      await ttsProvider.speak('');
      verifyNever(() => flutterTts.speak(text));
    });
  });
}
