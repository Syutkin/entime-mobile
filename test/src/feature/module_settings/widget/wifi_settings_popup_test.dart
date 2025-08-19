import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/module_settings/widget/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  List<String>? result;

  setUp(() {
    result = null;
  });

  Widget testWidget({String? ssid}) {
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
                  context: context,
                  ssid: ssid,
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
      expect($(Localization.current.I18nModuleSettings_enterWifiCredentials), findsOneWidget);
      expect($(Localization.current.I18nModuleSettings_wifiSsid), findsOneWidget);
      expect($(Localization.current.I18nModuleSettings_wifiPassword), findsOneWidget);
      expect($(TextField), findsNWidgets(2)); // SSID field and password field
      expect($(#cancelButton), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Enter valid wifi credentials and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим SSID в первое поле
      await $(TextField).at(0).enterText('MyWiFiNetwork');
      // Вводим пароль во второе поле
      await $(TextField).at(1).enterText('MyPassword123');
      await $(#okButton).tap();

      expect(result, ['MyWiFiNetwork', 'MyPassword123']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter empty credentials and press OK', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).at(0).enterText('');
      await $(TextField).at(1).enterText('');
      await $(#okButton).tap();

      expect(result, ['', '']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter only SSID without password', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).at(0).enterText('OpenWiFiNetwork');
      await $(TextField).at(1).enterText('');
      await $(#okButton).tap();

      expect(result, ['OpenWiFiNetwork', '']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter only password without SSID', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).at(0).enterText('');
      await $(TextField).at(1).enterText('SecretPassword');
      await $(#okButton).tap();

      expect(result, ['', 'SecretPassword']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Enter special characters in credentials', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).at(0).enterText('WiFi_Network-123');
      await $(TextField).at(1).enterText(r'P@ssw0rd!#$%');
      await $(#okButton).tap();

      expect(result, ['WiFi_Network-123', r'P@ssw0rd!#$%']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Press Cancel button', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      await $(TextField).at(0).enterText('MyWiFiNetwork');
      await $(TextField).at(1).enterText('MyPassword');
      await $(#cancelButton).tap();

      expect(result, null);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('SSID field has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final ssidField = $(TextField).at(0).evaluate().single.widget as TextField;
      expect(ssidField.autofocus, true);
      expect(ssidField.decoration?.labelText, Localization.current.I18nModuleSettings_wifiSsid);
    });

    patrolWidgetTest('Password field has correct properties', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final passwordField = $(TextField).at(1).evaluate().single.widget as TextField;
      expect(passwordField.obscureText, true); // Пароль должен быть скрыт по умолчанию
      expect(passwordField.decoration?.labelText, Localization.current.I18nModuleSettings_wifiPassword);
    });

    patrolWidgetTest('Password field toggle visibility', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final passwordField = $(TextField).at(1).evaluate().single.widget as TextField;
      expect(passwordField.obscureText, true);

      // Нажимаем на кнопку показать/скрыть пароль
      await $(IconButton).tap();
      await $.pumpAndSettle();

      // Проверяем, что пароль стал видимым
      final updatedPasswordField = $(TextField).at(1).evaluate().single.widget as TextField;
      expect(updatedPasswordField.obscureText, false);
    });

    patrolWidgetTest('Fields update result on text change', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим текст по частям и проверяем, что результат обновляется
      await $(TextField).at(0).enterText('WiFi');
      await $(TextField).at(0).enterText('WiFiNetwork');
      await $(TextField).at(1).enterText('Pass');
      await $(TextField).at(1).enterText('Password123');

      await $(#okButton).tap();
      expect(result, ['WiFiNetwork', 'Password123']);
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

    patrolWidgetTest('SSID field is focused by default', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final ssidField = $(TextField).at(0).evaluate().single.widget as TextField;
      expect(ssidField.autofocus, true);
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

      // Вводим данные и закрываем
      await $(TextField).at(0).enterText('SecondWiFi');
      await $(TextField).at(1).enterText('SecondPassword');
      await $(#okButton).tap();
      await $.pumpAndSettle();

      expect(result, ['SecondWiFi', 'SecondPassword']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Long wifi credentials are handled correctly', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      const longSsid = 'VeryLongWiFiNetworkNameThatExceedsNormalLength123456789';
      const longPassword = 'VeryLongPasswordThatExceedsNormalLength123456789';
      await $(TextField).at(0).enterText(longSsid);
      await $(TextField).at(1).enterText(longPassword);
      await $(#okButton).tap();

      expect(result, [longSsid, longPassword]);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Unicode characters in credentials', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      const unicodeSsid = 'WiFi_Сеть_网络_네트워크';
      const unicodePassword = 'Пароль_密码_비밀번호';
      await $(TextField).at(0).enterText(unicodeSsid);
      await $(TextField).at(1).enterText(unicodePassword);
      await $(#okButton).tap();

      expect(result, [unicodeSsid, unicodePassword]);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Pre-filled SSID parameter', (PatrolTester $) async {
      const preFilledSsid = 'PreFilledNetwork';
      await $.pumpWidgetAndSettle(testWidget(ssid: preFilledSsid));
      await $(#button).tap();

      // Проверяем, что SSID поле предзаполнено
      final ssidField = $(TextField).at(0).evaluate().single.widget as TextField;
      expect(ssidField.controller?.text, preFilledSsid);

      // Вводим пароль и нажимаем OK
      await $(TextField).at(1).enterText('NewPassword');
      await $(#okButton).tap();

      expect(result, [preFilledSsid, 'NewPassword']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Empty SSID parameter', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(ssid: ''));
      await $(#button).tap();

      // Проверяем, что SSID поле пустое
      final ssidField = $(TextField).at(0).evaluate().single.widget as TextField;
      expect(ssidField.controller?.text, '');

      // Вводим данные и нажимаем OK
      await $(TextField).at(0).enterText('NewNetwork');
      await $(TextField).at(1).enterText('NewPassword');
      await $(#okButton).tap();

      expect(result, ['NewNetwork', 'NewPassword']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Null SSID parameter', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Проверяем, что SSID поле пустое
      final ssidField = $(TextField).at(0).evaluate().single.widget as TextField;
      expect(ssidField.controller?.text, '');

      // Вводим данные и нажимаем OK
      await $(TextField).at(0).enterText('NewNetwork');
      await $(TextField).at(1).enterText('NewPassword');
      await $(#okButton).tap();

      expect(result, ['NewNetwork', 'NewPassword']);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Password field shows/hides password correctly', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Вводим пароль
      await $(TextField).at(1).enterText('SecretPassword');

      // Проверяем, что пароль скрыт по умолчанию
      final passwordField = $(TextField).at(1).evaluate().single.widget as TextField;
      expect(passwordField.obscureText, true);

      // Нажимаем на кнопку показать пароль
      await $(IconButton).tap();
      await $.pumpAndSettle();

      // Проверяем, что пароль стал видимым
      final updatedPasswordField = $(TextField).at(1).evaluate().single.widget as TextField;
      expect(updatedPasswordField.obscureText, false);

      // Нажимаем на кнопку скрыть пароль
      await $(IconButton).tap();
      await $.pumpAndSettle();

      // Проверяем, что пароль снова скрыт
      final finalPasswordField = $(TextField).at(1).evaluate().single.widget as TextField;
      expect(finalPasswordField.obscureText, true);
    });

    patrolWidgetTest('Keyboard navigation between fields', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      // Проверяем, что SSID поле в фокусе по умолчанию
      final ssidField = $(TextField).at(0).evaluate().single.widget as TextField;
      expect(ssidField.autofocus, true);

      // Вводим SSID и переходим к паролю
      await $(TextField).at(0).enterText('TestNetwork');

      // Проверяем, что можем ввести пароль
      await $(TextField).at(1).enterText('TestPassword');

      await $(#okButton).tap();
      expect(result, ['TestNetwork', 'TestPassword']);
    });

    patrolWidgetTest('Special characters in SSID and password', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      const specialSsid = r'WiFi-Network_123@#$%^&*()';
      const specialPassword = r'P@ssw0rd!#$%^&*()_+-=[]{}|;:,.<>?';

      await $(TextField).at(0).enterText(specialSsid);
      await $(TextField).at(1).enterText(specialPassword);
      await $(#okButton).tap();

      expect(result, [specialSsid, specialPassword]);
      expect($(AlertDialog), findsNothing);
    });

    patrolWidgetTest('Very long credentials handling', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(#button).tap();

      final veryLongSsid = 'A' * 1000; // Очень длинный SSID
      final veryLongPassword = 'B' * 1000; // Очень длинный пароль

      await $(TextField).at(0).enterText(veryLongSsid);
      await $(TextField).at(1).enterText(veryLongPassword);
      await $(#okButton).tap();

      expect(result, [veryLongSsid, veryLongPassword]);
      expect($(AlertDialog), findsNothing);
    });
  });
}
