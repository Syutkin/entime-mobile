import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSettingsProvider extends Mock implements SettingsProvider {
  MockSettingsProvider(this._settings);

  AppSettings _settings;

  @override
  AppSettings get settings => _settings;

  @override
  Future<void> setDefaults() async {
    _settings = const AppSettings.defaults();
  }

  @override
  Future<void> update(AppSettings settings) async {
    _settings = settings;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('SettingsBloc', () {
    final defaultSettingsProvider =
        MockSettingsProvider(const AppSettings.defaults());

    test('initial state is correct', () {
      expect(
        SettingsBloc(defaultSettingsProvider).state,
        const SettingsState(settings: AppSettings.defaults()),
      );
    });
  });

  group('initialize', () {
    final changedSettingsProvider = MockSettingsProvider(
      const AppSettings.defaults()
          .copyWith(countdownSize: 150, startFabSize: 150, finishFabSize: 150),
    );

    blocTest<SettingsBloc, SettingsState>(
      'correctly reads settings from SettingsProvider',
      build: () => SettingsBloc(changedSettingsProvider),
      act: (bloc) => bloc.add(const SettingsEvent.initialize()),
      expect: () => [SettingsState(settings: changedSettingsProvider.settings)],
    );
  });

  group('setDefault', () {
    final defaultSettingsProvider =
        MockSettingsProvider(const AppSettings.defaults());

    blocTest<SettingsBloc, SettingsState>(
      'correctly emits default settings',
      build: () => SettingsBloc(defaultSettingsProvider),
      act: (bloc) => bloc.add(const SettingsEvent.setDefault()),
      expect: () => [SettingsState(settings: defaultSettingsProvider.settings)],
    );

    group('update', () {
      final initialSettingsProvider =
          MockSettingsProvider(const AppSettings.defaults());
      final changedSettingsProvider = MockSettingsProvider(
        const AppSettings.defaults().copyWith(
          countdownSize: 150,
          startFabSize: 150,
          finishFabSize: 150,
        ),
      );

      blocTest<SettingsBloc, SettingsState>(
        'correctly updates settings',
        build: () => SettingsBloc(initialSettingsProvider),
        act: (bloc) => bloc.add(
          SettingsEvent.update(settings: changedSettingsProvider.settings),
        ),
        expect: () =>
            [SettingsState(settings: initialSettingsProvider.settings)],
      );
    });
  });
}
