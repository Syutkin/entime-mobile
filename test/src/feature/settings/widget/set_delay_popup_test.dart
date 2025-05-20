import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late int delay;
  late String title;
  int? result;

  setUp(() {
    delay = 555;
    title = 'title';
  });

  Widget testWidget(int delay) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setDelayPopup(context, delay, title);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('setDelayPopup tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(delay));
      await $(#button).tap();
      expect($(title), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      expect($(TextFormField), findsOneWidget);
      expect($(delay.toString()), findsOneWidget);
    });

    patrolWidgetTest('Enter wrong delay', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(delay));
      await $(#button).tap();
      await $(TextFormField).enterText('999-00');
      await $(#okButton).tap();
      expect($(Localization.current.I18nSettings_incorrectDelay), findsOneWidget);
    });

    patrolWidgetTest('Enter correct seconds and return it from ok pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(delay));
      await $(#button).tap();
      await $(TextFormField).enterText((delay + delay).toString());
      await $(#okButton).tap();
      await expectLater(result, delay + delay);
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(delay));
      await $(#button).tap();
      await $(TextFormField).enterText('1234');
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
