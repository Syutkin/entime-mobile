import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/module_settings/widget/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late String text;
  late int initialValue;
  int? result;

  setUp(() {
    text = 'Test Title';
    initialValue = 5;
    result = null;
  });

  Future<Widget> testWidget({int? value}) async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await brightnessPopup(
                  text: text,
                  initialValue: value ?? initialValue,
                  context: context,
                );
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('brightnessPopup tests', () {
    patrolWidgetTest('Initial popup dialog', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);
      expect($(text), findsOneWidget);
      expect($(Slider), findsOneWidget);
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Shows correct initial brightness value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      expect($(Localization.current.I18nModuleSettings_brightnessInt(5)), findsOneWidget);
    });

    patrolWidgetTest('Slider clamps big brightness values to 15', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(value: 111));
      await $(#button).tap();

      expect($(Localization.current.I18nModuleSettings_brightnessInt(15)), findsOneWidget);
    });

    patrolWidgetTest('Slider clamps small brightness values to 1', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(value: -111));
      await $(#button).tap();

      expect($(Localization.current.I18nModuleSettings_brightnessInt(1)), findsOneWidget);
    });

    patrolWidgetTest('Slider has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      final slider = $(Slider).evaluate().single.widget as Slider;
      expect(slider.value, initialValue.toDouble());
      expect(slider.min, 1.0);
      expect(slider.max, 15.0);
      expect(slider.divisions, 14);
    });

    patrolWidgetTest('Slider value changes when dragged', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер вправо (увеличиваем значение)
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      // Проверяем, что значение изменилось
      final updatedSlider = $(Slider).evaluate().single.widget as Slider;
      expect(updatedSlider.value, greaterThan(initialValue.toDouble()));
    });

    patrolWidgetTest('Press OK button returns current brightness value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Изменяем значение слайдера
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      await $(#okButton).tap();

      expect(result, isNotNull);
      expect(result, greaterThan(initialValue));
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Press Cancel button returns null', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Изменяем значение слайдера
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      await $(#cancelButton).tap();

      expect(result, isNull);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Slider respects maximum value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер в максимальное положение
      await $.tester.drag($(Slider), const Offset(500, 0)); // Далеко вправо
      await $.pumpAndSettle();

      final maxSlider = $(Slider).evaluate().single.widget as Slider;
      expect(maxSlider.value, lessThanOrEqualTo(15.0));
    });

    patrolWidgetTest('Slider respects minimum value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер в минимальное положение
      await $.tester.drag($(Slider), const Offset(-500, 0)); // Далеко влево
      await $.pumpAndSettle();

      final minSlider = $(Slider).evaluate().single.widget as Slider;
      expect(minSlider.value, greaterThanOrEqualTo(0.0));
    });

    patrolWidgetTest('Dialog closes after OK button press', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#okButton).tap();

      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Dialog closes after Cancel button press', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#cancelButton).tap();

      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Brightness text updates when slider changes', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Запоминаем начальный текст яркости
      final initialTextWidgets = $(Text).evaluate();
      final initialBrightnessText = initialTextWidgets.firstWhere(
        (element) => (element.widget as Text).data?.contains('Brightness') ?? false,
      );
      final initialTextData = (initialBrightnessText.widget as Text).data ?? '';

      // Изменяем значение слайдера
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      // Проверяем, что текст обновился
      final updatedTextWidgets = $(Text).evaluate();
      final updatedBrightnessText = updatedTextWidgets.firstWhere(
        (element) => (element.widget as Text).data?.contains('Brightness') ?? false,
      );
      final updatedTextData = (updatedBrightnessText.widget as Text).data ?? '';
      expect(updatedTextData, isNot(equals(initialTextData)));
    });

    patrolWidgetTest('Returns correct integer value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      await $(#okButton).tap();

      expect(result, isA<int>());
      expect(result, isNotNull);
    });
  });
}
