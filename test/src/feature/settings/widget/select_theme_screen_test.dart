import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/settings/widget/select_theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

void main() {
  late SettingsCubit settingsCubit;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: settingsCubit, child: const SelectThemeScreen())),
    );
  }

  setUpAll(() {
    registerFallbackValue(const AppSettings.defaults());
  });

  setUp(() {
    settingsCubit = MockSettingsCubit();
    when(() => settingsCubit.state).thenReturn(const AppSettings.defaults());
  });

  group('SelectThemeScreen tests', () {
    patrolWidgetTest('Initial SelectThemeScreen', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(PopupMenuButton<ColorSeed>), findsOneWidget);
      expect($(PopupMenuButton<DynamicSchemeVariant>), findsOneWidget);
      expect($(ColorSample), findsNWidgets(6));
    });

    patrolWidgetTest('Tap on PopupMenuButton<ColorSeed>', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<ColorSeed>).tap();
      expect($(ListTile), findsNWidgets(ColorSeed.values.length));
      for (final colorSeed in ColorSeed.values) {
        expect($(colorSeed.label), findsOneWidget);
      }
    });

    patrolWidgetTest('Change color', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<ColorSeed>).tap();
      expect($(ListTile), findsNWidgets(ColorSeed.values.length));
      await $(ListTile).at(0).tap();
      verify(() => settingsCubit.update(any())).called(1);
      expect($(ListTile), findsNothing);
    });

    patrolWidgetTest('Tap on PopupMenuButton<DynamicSchemeVariant>', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<DynamicSchemeVariant>).tap();
      expect($(ListTile), findsNWidgets(DynamicSchemeVariant.values.length));
      for (final variant in DynamicSchemeVariant.values) {
        expect($(variant.name), findsOneWidget);
      }
    });

    patrolWidgetTest('Change DynamicSchemeVariant>', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<DynamicSchemeVariant>).tap();
      expect($(ListTile), findsNWidgets(DynamicSchemeVariant.values.length));
      await $(ListTile).at(0).tap();
      verify(() => settingsCubit.update(any())).called(1);
      expect($(ListTile), findsNothing);
    });

    patrolWidgetTest('Tap on change brightness mode', (PatrolTester $) async {
      final settings = const AppSettings.defaults().copyWith(brightness: Brightness.dark);
      await $.pumpWidgetAndSettle(testWidget());
      expect($(#brightnessButton), findsOneWidget);
      await $(#brightnessButton).tap();
      verify(() => settingsCubit.update(settings)).called(1);
    });

    patrolWidgetTest('Move contrast slider', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $.tester.drag($(Slider), const Offset(100, 0));
      var settings = const AppSettings.defaults().copyWith(contrastLevel: 0);
      verify(() => settingsCubit.update(settings)).called(1);
      settings = const AppSettings.defaults().copyWith(contrastLevel: 0.5);
      verify(() => settingsCubit.update(settings)).called(1);
    });
  });
}
