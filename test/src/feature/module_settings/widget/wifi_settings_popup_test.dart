import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/module_settings/widget/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late String text;
  late String labelText;
  String? result;

  setUp(() {
    text = 'Test Title';
    labelText = 'Test Label';
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
                result = await wifiSettingsPopup(
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

  group('wifiSettingsPopup tests', () {
    patrolWidgetTest('Initial popup dialog', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);
      expect($(text), findsOneWidget);
      expect($(labelText), findsOneWidget);
      expect($(TextField), findsOneWidget);
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Enter valid wifi text and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).enterText('MyWiFiNetwork');
      await $(#okButton).tap();

      expect(result, 'MyWiFiNetwork');
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter empty text and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).enterText('');
      await $(#okButton).tap();

      expect(result, null);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter special characters and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).enterText('WiFi_Network-123');
      await $(#okButton).tap();

      expect(result, 'WiFi_Network-123');
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Press Cancel button', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).enterText('MyWiFiNetwork');
      await $(#cancelButton).tap();

      expect(result, null);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('TextField has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final textField = $(TextField).evaluate().single.widget as TextField;
      expect(textField.autofocus, true);
      expect(textField.decoration?.labelText, labelText);
    });

    patrolWidgetTest('TextField updates result on text change', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим текст по частям и проверяем, что результат обновляется
      await $(TextField).enterText('WiFi');
      await $(TextField).enterText('WiFiNetwork');

      await $(#okButton).tap();
      expect(result, 'WiFiNetwork');
    });

    patrolWidgetTest('Dialog closes after OK button press', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#okButton).tap();
      await $.pumpAndSettle();

      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Dialog closes after Cancel button press', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      expect($(AlertDialog), findsOneWidget);

      await $(#cancelButton).tap();
      await $.pumpAndSettle();

      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('TextField is focused by default', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final textField = $(TextField).evaluate().single.widget as TextField;
      expect(textField.autofocus, true);
    });

    patrolWidgetTest('Multiple popup opens and closes correctly', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());

      // Открываем первый popup
      await $(#button).tap();
      expect($(AlertDialog), findsOneWidget);

      // Закрываем первый popup
      await $(#cancelButton).tap();
      await $.pumpAndSettle();
      expect($(AlertDialog), findsNothing);

      // Открываем второй popup
      await $(#button).tap();
      expect($(AlertDialog), findsOneWidget);

      // Вводим текст и закрываем
      await $(TextField).enterText('SecondWiFi');
      await $(#okButton).tap();
      await $.pumpAndSettle();

      expect(result, 'SecondWiFi');
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Long wifi name is handled correctly', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      const longWifiName = 'VeryLongWiFiNetworkNameThatExceedsNormalLength123456789';
      await $(TextField).enterText(longWifiName);
      await $(#okButton).tap();

      expect(result, longWifiName);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Unicode characters in wifi name', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      const unicodeWifiName = 'WiFi_Сеть_网络_네트워크';
      await $(TextField).enterText(unicodeWifiName);
      await $(#okButton).tap();

      expect(result, unicodeWifiName);
      expect($(AlertDialog), findsNothing);
    });
  });
}
