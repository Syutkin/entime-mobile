import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/subjects.dart';

class MockAudioProvider extends Mock implements AudioProvider {}

class MockSettingsProvider extends Mock implements ISettingsProvider {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late IAudioService audioService;
  late ISettingsProvider settingsProvider;
  late AudioProvider audioProvider;
  late AppSettings settings;
  late AppSettings defaults;

  setUp(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );

    defaults = const AppSettings.defaults();
    settingsProvider = MockSettingsProvider();
    audioProvider = MockAudioProvider();

    when(() => audioProvider.setLanguage(any())).thenAnswer((_) => Future.value(''));
    when(() => audioProvider.setVolume(any())).thenAnswer((_) => Future.value(''));
    when(() => audioProvider.setSpeechRate(any())).thenAnswer((_) => Future.value(''));
    when(() => audioProvider.setPitch(any())).thenAnswer((_) => Future.value(''));
    when(() => audioProvider.speak(any())).thenAnswer((_) => Future.value());
    when(() => audioProvider.beep()).thenAnswer((_) => Future.value());
  });

  group('AudioService tests', () {
    test('Call speak when sound enabled', () async {
      when(() => settingsProvider.state).thenAnswer((_) => BehaviorSubject.seeded(defaults));
      audioService = AudioService(settings: settingsProvider, audio: audioProvider);

      expect(await audioService.speak('fgh'), true);
    });

    test('Do not call speak when sound disabled', () async {
      settings = defaults.copyWith(sound: false);
      when(() => settingsProvider.state).thenAnswer((_) => BehaviorSubject.seeded(settings));

      audioService = AudioService(settings: settingsProvider, audio: audioProvider);
      // wait for settings change
      await Future<void>.delayed(Duration.zero);
      expect(await audioService.speak('fgh'), false);
    });

    test('Do not call speak when voice disabled', () async {
      settings = defaults.copyWith(voice: false);
      when(() => settingsProvider.state).thenAnswer((_) => BehaviorSubject.seeded(settings));

      audioService = AudioService(settings: settingsProvider, audio: audioProvider);
      // wait for settings change
      await Future<void>.delayed(Duration.zero);
      expect(await audioService.speak('fgh'), false);
    });

    test('Call countdown when sound enabled', () async {
      expect(await audioService.countdown(), true);
    });

    test('Do not call countdown when sound disabled', () async {
      settings = defaults.copyWith(sound: false);
      when(() => settingsProvider.state).thenAnswer((_) => BehaviorSubject.seeded(settings));

      audioService = AudioService(settings: settingsProvider, audio: audioProvider);
      // wait for settings change
      await Future<void>.delayed(Duration.zero);
      expect(await audioService.countdown(), false);
    });

    test('Do not call countdown when voice disabled', () async {
      settings = defaults.copyWith(beep: false);
      when(() => settingsProvider.state).thenAnswer((_) => BehaviorSubject.seeded(settings));

      audioService = AudioService(settings: settingsProvider, audio: audioProvider);
      // wait for settings change
      await Future<void>.delayed(Duration.zero);
      expect(await audioService.countdown(), false);
    });

    test('Stops listening to settings after dispose', () async {
      final settingsStream = BehaviorSubject<AppSettings>.seeded(defaults);
      when(() => settingsProvider.state).thenAnswer((_) => settingsStream);
      audioService = AudioService(settings: settingsProvider, audio: audioProvider);
      addTearDown(settingsStream.close);

      await Future<void>.delayed(Duration.zero);
      clearInteractions(audioProvider);

      final changedSettings = defaults.copyWith(
        language: 'en',
        volume: 0.25,
        rate: 0.75,
        pitch: 0.5,
      );
      settingsStream.add(changedSettings);
      await Future<void>.delayed(Duration.zero);

      verify(() => audioProvider.setLanguage(changedSettings.language)).called(1);
      verify(() => audioProvider.setVolume(changedSettings.volume)).called(1);
      verify(() => audioProvider.setSpeechRate(changedSettings.rate)).called(1);
      verify(() => audioProvider.setPitch(changedSettings.pitch)).called(1);

      clearInteractions(audioProvider);
      await audioService.dispose();

      settingsStream.add(
        defaults.copyWith(
          language: 'fr',
          volume: 0.5,
          rate: 1,
          pitch: 1.5,
        ),
      );
      await Future<void>.delayed(Duration.zero);

      verifyNever(() => audioProvider.setLanguage(any()));
      verifyNever(() => audioProvider.setVolume(any()));
      verifyNever(() => audioProvider.setSpeechRate(any()));
      verifyNever(() => audioProvider.setPitch(any()));
    });
  });
}
