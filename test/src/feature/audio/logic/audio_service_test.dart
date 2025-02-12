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
  });
}
