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
  group('SettingsCubit', () {
    final defaultSettingsProvider = MockSettingsProvider(
      const AppSettings.defaults(),
    );

    test('initial state is correct', () {
      expect(
        SettingsCubit(defaultSettingsProvider).state,
        const AppSettings.defaults(),
      );
    });
  });

  group('initialize', () {
    final changedSettingsProvider = MockSettingsProvider(
      const AppSettings.defaults().copyWith(
        countdownSize: 150,
        startFabSize: 150,
        finishFabSize: 150,
      ),
    );

    blocTest<SettingsCubit, AppSettings>(
      'correctly reads settings from SettingsProvider',
      build: () => SettingsCubit(changedSettingsProvider),
      act: (bloc) => bloc.initialize(),
      expect: () => [changedSettingsProvider.settings],
    );
  });

  group('setDefault', () {
    final defaultSettingsProvider = MockSettingsProvider(
      const AppSettings.defaults(),
    );

    blocTest<SettingsCubit, AppSettings>(
      'correctly emits default settings',
      build: () => SettingsCubit(defaultSettingsProvider),
      act: (bloc) => bloc.setDefault(),
      expect: () => [defaultSettingsProvider.settings],
    );

    group('update', () {
      final initialSettingsProvider = MockSettingsProvider(
        const AppSettings.defaults(),
      );
      final changedSettingsProvider = MockSettingsProvider(
        const AppSettings.defaults().copyWith(
          countdownSize: 150,
          startFabSize: 150,
          finishFabSize: 150,
        ),
      );

      blocTest<SettingsCubit, AppSettings>(
        'correctly updates settings',
        build: () => SettingsCubit(initialSettingsProvider),
        act: (bloc) => bloc.update(changedSettingsProvider.settings),
        expect: () => [initialSettingsProvider.settings],
      );
    });
  });
}
