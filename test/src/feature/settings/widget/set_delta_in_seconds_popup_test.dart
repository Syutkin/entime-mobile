import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late int delta;
  int? result;

  Widget testWidget(int delta) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setDeltaInSecondsPopup(context, delta: delta);
              },
              child: const Text(
                'textButton',
                key: Key('button'),
              ),
            );
          },
        ),
      ),
    );
  }

  setUp(() {
    delta = 100;
    result = null;
  });

  group(
    'setDeltaInSecondsPopup tests',
    () {
      patrolWidgetTest(
        'Initial build',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget(delta));
          await $(#button).tap();
          expect($(AlertDialog), findsOneWidget);
          expect($(TextFormField), findsOneWidget);
          expect($(delta.toString()), findsOneWidget);
        },
      );

      patrolWidgetTest(
        'Enter wrong seconds',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget(delta));
          await $(#button).tap();
          await $(TextFormField).enterText('999-00');
          await $(#okButton).tap();
          expect(
            $(Localization.current.I18nSettings_incorrectStartDelta),
            findsOneWidget,
          );
          // expect($(delta.toString()), findsOneWidget);
        },
      );

      patrolWidgetTest(
        'Enter empty seconds',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget(delta));
          await $(#button).tap();
          await $(TextFormField).enterText('');
          await $(#okButton).tap();
          expect(
            $(Localization.current.I18nSettings_incorrectStartDelta),
            findsOneWidget,
          );
        },
      );

      patrolWidgetTest(
        'Enter correct seconds and return it from ok pressed',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget(delta));
          await $(#button).tap();
          await $(TextFormField).enterText('1234');
          await $(#okButton).tap();
          await expectLater(result, 1234);
        },
      );

      patrolWidgetTest(
        'Return null when cancel pressed',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget(delta));
          await $(#button).tap();
          await $(TextFormField).enterText('1234');
          await $(#cancelButton).tap();
          await expectLater(result, isNull);
        },
      );
    },
  );
}
