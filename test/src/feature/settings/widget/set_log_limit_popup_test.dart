import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late int limit;
  int? result;

  setUp(() {
    limit = 100;
    result = null;
  });

  Widget testWidget(int difference) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setLogLimitPopup(context, limit);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('setLogLimitPopup tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(limit));
      await $(#button).tap();
      expect($(Localization.current.I18nSettings_journalLinesNumberPopup), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      expect($(TextFormField), findsOneWidget);
      expect($(limit.toString()), findsOneWidget);
    });

    patrolWidgetTest('Enter wrong limit', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(limit));
      await $(#button).tap();
      await $(TextFormField).enterText('999-00');
      await $(#okButton).tap();

      expect($(Localization.current.I18nSettings_enterNumber), findsOneWidget);
    });

    patrolWidgetTest('Enter empty limit', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(limit));
      await $(#button).tap();
      await $(TextFormField).enterText('');
      await $(#okButton).tap();
      await expectLater(result, -1);
      expect($(TextFormField), findsNothing);
    });

    patrolWidgetTest('Enter negative limit', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(limit));
      await $(#button).tap();
      await $(TextFormField).enterText('-10');
      await $(#okButton).tap();
      await expectLater(result, -1);
      expect($(TextFormField), findsNothing);
    });

    patrolWidgetTest('Enter correct limit and return it from ok pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(limit));
      await $(#button).tap();
      await $(TextFormField).enterText('1234');
      await $(#okButton).tap();
      await expectLater(result, 1234);
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(limit));
      await $(#button).tap();
      await $(TextFormField).enterText('1234');
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
