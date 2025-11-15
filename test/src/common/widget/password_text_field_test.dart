import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/widget/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late TextEditingController controller;
  String? onChangedResult;

  setUp(() {
    controller = TextEditingController();
    onChangedResult = null;
  });

  tearDown(() {
    controller.dispose();
  });

  Future<Widget> testWidget({
    String label = 'Password',
    String? hint,
    TextEditingController? controller,
    ValueChanged<String>? onChanged,
  }) async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: PasswordTextField(
            label: label,
            hint: hint,
            controller: controller,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }

  group('PasswordTextField tests', () {
    patrolWidgetTest('Initial build with default values', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());

      // Проверяем, что TextField отображается
      expect($(TextField), findsOneWidget);

      // Проверяем, что label отображается
      expect($('Password'), findsOneWidget);

      // Проверяем, что иконка видимости отображается
      expect($(Icons.visibility), findsOneWidget);

      // Проверяем, что пароль скрыт по умолчанию
      final textField = $(TextField).evaluate().single.widget as TextField;
      expect(textField.obscureText, isTrue);
    });

    patrolWidgetTest('Initial build with custom label and hint', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        await testWidget(
          label: 'Custom Label',
          hint: 'Enter your password',
        ),
      );

      // Проверяем, что кастомный label отображается
      expect($('Custom Label'), findsOneWidget);

      // Проверяем, что hint отображается
      expect($('Enter your password'), findsOneWidget);
    });

    patrolWidgetTest('Toggle password visibility', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());

      // Проверяем начальное состояние - пароль скрыт
      expect($(Icons.visibility), findsOneWidget);
      expect($(Icons.visibility_off), findsNothing);

      // Нажимаем на иконку видимости
      await $(IconButton).tap();
      await $.pumpAndSettle();

      // Проверяем, что иконка изменилась и пароль стал видимым
      expect($(Icons.visibility), findsNothing);
      expect($(Icons.visibility_off), findsOneWidget);

      // Нажимаем еще раз
      await $(IconButton).tap();
      await $.pumpAndSettle();

      // Проверяем, что вернулись к скрытому паролю
      expect($(Icons.visibility), findsOneWidget);
      expect($(Icons.visibility_off), findsNothing);
    });

    patrolWidgetTest('Text input functionality', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(controller: controller));

      // Вводим текст
      await $(TextField).enterText('testPassword123');
      await $.pumpAndSettle();

      // Проверяем, что текст введен
      expect(controller.text, equals('testPassword123'));
    });

    patrolWidgetTest('onChanged callback', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(
        await testWidget(
          controller: controller,
          onChanged: (value) => onChangedResult = value,
        ),
      );

      // Вводим текст
      await $(TextField).enterText('callbackTest');
      await $.pumpAndSettle();

      // Проверяем, что callback вызвался
      expect(onChangedResult, equals('callbackTest'));
    });

    patrolWidgetTest('Controller updates widget', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(controller: controller));

      // Устанавливаем текст через контроллер
      controller.text = 'controllerText';
      await $.pumpAndSettle();

      // Проверяем, что текст отображается в виджете
      expect($(TextField).evaluate().single.widget.toString(), contains('controllerText'));
    });

    patrolWidgetTest('Clear text functionality', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(controller: controller));

      // Вводим текст
      await $(TextField).enterText('clearTest');
      await $.pumpAndSettle();
      expect(controller.text, equals('clearTest'));

      // Очищаем текст
      controller.clear();
      await $.pumpAndSettle();
      expect(controller.text, isEmpty);
    });

    patrolWidgetTest('Long text input', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(controller: controller));

      const longText = 'veryLongPasswordThatMightOverflowTheTextfield';
      await $(TextField).enterText(longText);
      await $.pumpAndSettle();

      // Проверяем, что длинный текст введен
      expect(controller.text, equals(longText));
    });

    patrolWidgetTest('Special characters input', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(controller: controller));

      const specialText = r'!@#$%^&*()_+-=[]{}|;:,.<>?';
      await $(TextField).enterText(specialText);
      await $.pumpAndSettle();

      // Проверяем, что специальные символы введены
      expect(controller.text, equals(specialText));
    });
  });
}
