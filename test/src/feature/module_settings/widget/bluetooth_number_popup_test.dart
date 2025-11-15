import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/module_settings/widget/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late String text;
  late String labelText;
  int? result;

  setUp(() {
    text = 'Test Title';
    labelText = 'Test Label';
    result = null;
  });

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await bluetoothNumberPopup(
                  text: text,
                  labelText: labelText,
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

  group('bluetoothNumberPopup tests', () {
    patrolWidgetTest('Initial popup dialog', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);
      expect($(text), findsOneWidget);
      expect($(labelText), findsOneWidget);
      expect($(TextField), findsOneWidget);
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Enter valid number and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      await $(TextField).enterText('42');
      await $(#okButton).tap();

      expect(result, 42);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter invalid number and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      await $(TextField).enterText('abc');
      await $(#okButton).tap();

      expect(result, null);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter empty text and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      await $(TextField).enterText('');
      await $(#okButton).tap();

      expect(result, null);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Press Cancel button', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      await $(TextField).enterText('42');
      await $(#cancelButton).tap();

      expect(result, null);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('TextField has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      final textField = $(TextField).evaluate().single.widget as TextField;
      expect(textField.keyboardType, TextInputType.number);
      expect(textField.autofocus, true);
      expect(textField.decoration?.labelText, labelText);
    });

    patrolWidgetTest('Number parsing works correctly', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      // Test positive number
      await $(TextField).enterText('123');
      await $(#okButton).tap();
      expect(result, 123);

      // Reset and test zero
      result = null;
      await $(#button).tap();
      await $(TextField).enterText('0');
      await $(#okButton).tap();
      expect(result, 0);

      // Reset and test negative number
      result = null;
      await $(#button).tap();
      await $(TextField).enterText('-456');
      await $(#okButton).tap();
      expect(result, -456);
    });

    patrolWidgetTest('Popup closes after interaction', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#okButton).tap();
      expect($(AlertDialog), findsNothing);

      // Reopen popup
      await $(#button).tap();
      expect($(AlertDialog), findsOneWidget);

      await $(#cancelButton).tap();
      expect($(AlertDialog), findsNothing);
    });
  });
}
