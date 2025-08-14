import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/bloc/audio_bloc.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/help/widget/help_screen.dart';
import 'package:entime/src/feature/home/widget/about_popup.dart';
import 'package:entime/src/feature/home/widget/app_drawer.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:entime/src/feature/settings/widget/settings_screen.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

class MockAppInfoCubit extends MockCubit<AppInfoProvider> implements AppInfoCubit {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockUpdateBloc extends MockBloc<UpdateEvent, UpdateState> implements UpdateBloc {}

class MockAudioBloc extends MockBloc<AudioEvent, AudioState> implements AudioBloc {}

class FakeAppInfoProvider extends Fake implements AppInfoProvider {
  @override
  String get appName => 'appName';

  @override
  String get version => '1.0.0';

  @override
  String get buildNumber => '1234';
}

void main() {
  late AppInfoCubit appInfoCubit;
  late DatabaseBloc databaseBloc;
  late UpdateBloc updateBloc;
  late SettingsCubit settingsCubit;
  late AudioBloc audioBloc;
  late FakeAppInfoProvider appInfoProvider;

  Widget testWidget() {
    return BlocProvider.value(
      value: appInfoCubit,
      child: BlocProvider.value(
        value: databaseBloc,
        child: BlocProvider.value(
          value: updateBloc,
          child: BlocProvider.value(
            value: settingsCubit,
            child: BlocProvider.value(
              value: audioBloc,
              child: MaterialApp(
                localizationsDelegates: const [
                  GlobalWidgetsLocalizations.delegate,
                  Localization.delegate,
                ],
                supportedLocales: Localization.supportedLocales,
                home: const Scaffold(
                  body: AppDrawer(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const DatabaseEvent.shareDatabase());
  });

  setUp(() {
    appInfoCubit = MockAppInfoCubit();
    databaseBloc = MockDatabaseBloc();
    updateBloc = MockUpdateBloc();
    settingsCubit = MockSettingsCubit();
    audioBloc = MockAudioBloc();
    appInfoProvider = FakeAppInfoProvider();

    when(() => appInfoCubit.state).thenReturn(appInfoProvider);
    when(() => appInfoCubit.appName).thenReturn(appInfoProvider.appName);
    when(() => appInfoCubit.version).thenReturn(appInfoProvider.version);
    when(() => appInfoCubit.buildNumber).thenReturn(appInfoProvider.buildNumber);

    when(() => settingsCubit.state).thenReturn(const AppSettings.defaults());
    when(() => audioBloc.state).thenReturn(const AudioState.initial());

    when(() => databaseBloc.state).thenReturn(
      const DatabaseState(
        races: [],
        stages: [],
        categories: [],
        riders: [],
        participants: [],
        finishes: [],
        numbersOnTrace: [],
        race: Race(id: 1, name: 'race', isDeleted: false),
        stage: Stage(id: 1, raceId: 1, name: 'stage', isActive: true, isDeleted: false),
      ),
    );
    when(() => updateBloc.state).thenReturn(const UpdateState.initial());
  });

  group('AppDrawer tests', () {
    patrolWidgetTest('AppDrawer widget can be created', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      expect($(AppDrawer), findsOneWidget);
      expect($(Drawer), findsOneWidget);
    });

    patrolWidgetTest('AppDrawer menu items is displayed', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      expect($(Localization.current.I18nDrawer_settings), findsOneWidget);
      expect($(Localization.current.I18nDrawer_help), findsOneWidget);
      expect($(Localization.current.I18nDrawer_about), findsOneWidget);
    });

    patrolWidgetTest('AppDrawer Updater menu item is displayed', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      expect($(Updater), findsOneWidget);
    });

    patrolWidgetTest('AppDrawer version text is displayed', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Проверяем что текст версии отображается
      expect($(Localization.current.I18nDrawer_version(appInfoProvider.version)), findsWidgets);
    });

    patrolWidgetTest('AppDrawer settings navigation works', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Нажимаем на пункт "Настройки"
      await $(Localization.current.I18nDrawer_settings).tap();

      // Проверяем что drawer закрылся и открылся экран настроек
      await $.pumpAndSettle();
      expect($(SettingsScreen), findsOneWidget);
    });

    patrolWidgetTest('AppDrawer help navigation works', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Нажимаем на пункт "Помощь"
      await $(Localization.current.I18nDrawer_help).tap();

      // Проверяем что drawer закрылся и открылся экран помощи
      await $.pumpAndSettle();
      expect($(HelpPage), findsOneWidget);
    });

    patrolWidgetTest('AppDrawer about popup shows', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Нажимаем на пункт "О приложении"
      await $(Localization.current.I18nDrawer_about).tap();

      // Проверяем что показался popup
      await $.pumpAndSettle();
      expect($(AboutPopup), findsOneWidget);
    });


    patrolWidgetTest('AppDrawer version button counter increments', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Нажимаем на версию 7 раз
      for (var i = 0; i < 7; i++) {
        await $(Localization.current.I18nDrawer_version(appInfoProvider.version)).tap();
      }

      // Проверяем что событие shareDatabase НЕ было вызвано (меньше 7 нажатий)
      verifyNever(() => databaseBloc.add(const DatabaseEvent.shareDatabase()));
    });

    patrolWidgetTest('AppDrawer version button triggers shareDatabase after 8 taps', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Нажимаем на версию 8 раз
      for (var i = 0; i < 8; i++) {
        await $(Localization.current.I18nDrawer_version(appInfoProvider.version)).tap();
      }

      // Проверяем что событие shareDatabase было вызвано
      verify(() => databaseBloc.add(const DatabaseEvent.shareDatabase())).called(1);
    });

     patrolWidgetTest('AppDrawer version button styling is correct', (PatrolTester $) async {
      await $.pumpWidget(testWidget());

      // Проверяем что кнопка версии имеет правильный стиль
      final versionButton = $(Localization.current.I18nDrawer_version(appInfoProvider.version));
      expect(versionButton, findsOneWidget);

      // Проверяем что это TextButton
      expect($(TextButton), findsOneWidget);
    });
  });
}
