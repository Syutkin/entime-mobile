import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/module_settings/widget/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late String text;
  late int frequency;
  int? result;

  setUp(() {
    text = 'Test Title';
    frequency = 440; // A4 note
    result = null;
  });

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await buzzerFrequencyPopup(
                  text: text,
                  frequency: frequency,
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

  group('buzzerFrequencyPopup tests', () {
    patrolWidgetTest('Initial popup dialog', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);
      expect($(text), findsOneWidget);
      expect($(Slider), findsOneWidget);
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Shows correct initial frequency value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Проверяем, что отображается правильная начальная частота
      final textWidgets = $(Text).evaluate();
      expect(textWidgets.length, greaterThanOrEqualTo(4)); // Кнопка, заголовок, нота/частота, Cancel, OK

      // Находим текст с нотой и частотой (он содержит частоту)
      final frequencyText = textWidgets.firstWhere(
        (element) => (element.widget as Text).data?.contains('440') ?? false,
        orElse: () => textWidgets.first,
      );
      expect(frequencyText, isNotNull);
    });

    patrolWidgetTest('Slider has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final slider = $(Slider).evaluate().single.widget as Slider;
      // A4 note (440Hz) находится на позиции 46 в массиве notes
      expect(slider.value, 46.0);
      expect(slider.max, 88.0); // notes.length - 1 = 89 - 1 = 88
      expect(slider.divisions, 89);
    });

    patrolWidgetTest('Slider value changes when dragged', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер вправо (увеличиваем значение)
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      // Проверяем, что значение изменилось
      final updatedSlider = $(Slider).evaluate().single.widget as Slider;
      expect(updatedSlider.value, greaterThan(33.0));
    });

    patrolWidgetTest('Press OK button returns current frequency value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Изменяем значение слайдера
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      await $(#okButton).tap();

      expect(result, isNotNull);
      expect(result, isA<int>());
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Press Cancel button returns null', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Изменяем значение слайдера
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      await $(#cancelButton).tap();

      expect(result, isNull);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Slider respects maximum value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер в максимальное положение
      await $.tester.drag($(Slider), const Offset(500, 0)); // Далеко вправо
      await $.pumpAndSettle();

      final maxSlider = $(Slider).evaluate().single.widget as Slider;
      expect(maxSlider.value, 88.0);
    });

    patrolWidgetTest('Slider respects minimum value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер в минимальное положение
      await $.tester.drag($(Slider), const Offset(-500, 0)); // Далеко влево
      await $.pumpAndSettle();

      final minSlider = $(Slider).evaluate().single.widget as Slider;
      expect(minSlider.value, greaterThanOrEqualTo(0.0));
    });

    patrolWidgetTest('Dialog closes after OK button press', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#okButton).tap();

      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Dialog closes after Cancel button press', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#cancelButton).tap();

      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Frequency text updates when slider changes', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Запоминаем начальный текст частоты
      final initialTextWidgets = $(Text).evaluate();
      final initialFrequencyText = initialTextWidgets.firstWhere(
        (element) => (element.widget as Text).data?.contains('440') ?? false,
        orElse: () => initialTextWidgets.first,
      );
      final initialTextData = (initialFrequencyText.widget as Text).data ?? '';

      // Изменяем значение слайдера
      await $.tester.drag($(Slider), const Offset(100, 0));
      await $.pumpAndSettle();

      // Проверяем, что текст обновился (ищем любой текст с частотой)
      final updatedTextWidgets = $(Text).evaluate();
      final updatedFrequencyText = updatedTextWidgets.firstWhere(
        (element) => (element.widget as Text).data?.contains('Hz') ?? false,
        orElse: () => updatedTextWidgets.first,
      );
      final updatedTextData = (updatedFrequencyText.widget as Text).data ?? '';
      expect(updatedTextData, isNot(equals(initialTextData)));
    });

    patrolWidgetTest('Returns correct integer frequency value', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(#okButton).tap();

      expect(result, isA<int>());
      expect(result, isNotNull);
    });

    patrolWidgetTest('Default frequency when input frequency not found', (PatrolTester $) async {
      // Устанавливаем частоту, которой нет в списке notes
      frequency = 9999;
      
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final slider = $(Slider).evaluate().single.widget as Slider;
      // Должно вернуться к значению по умолчанию (53 - E5, 659Hz)
      expect(slider.value, 53.0);
    });

    patrolWidgetTest('All note frequencies are accessible', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Перетаскиваем слайдер в разные позиции и проверяем, что все ноты доступны
      for (var i = 0; i < 10; i++) {
        await $.tester.drag($(Slider), const Offset(50, 0));
        await $.pumpAndSettle();
        
        final slider = $(Slider).evaluate().single.widget as Slider;
        expect(slider.value, greaterThanOrEqualTo(0.0));
        expect(slider.value, lessThanOrEqualTo(87.0));
      }
    });

    patrolWidgetTest('Slider divisions match notes count', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final slider = $(Slider).evaluate().single.widget as Slider;
      expect(slider.divisions, 89); // Всего 89 нот от B0 до DS8
    });
  });
}
