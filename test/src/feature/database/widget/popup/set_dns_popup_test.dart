import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late int number;
  late bool? result;

  Widget testWidget() {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setDnsPopup(context: context, number: number);
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
    number = 10;
  });

  group(
    'setDnsPopup tests',
    () {
      patrolWidgetTest(
        'Initial popup dialog',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          expect($(Localization.current.I18nCore_confirmation), findsOneWidget);
          expect(
            $(Localization.current.I18nStart_setDnsConfirmation(number)),
            findsOneWidget,
          );
        },
      );

      patrolWidgetTest(
        'Tap Ok button',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          await $(#okButton).tap();
          expect(result, true);
        },
      );

      patrolWidgetTest(
        'Tap Cancel button',
        (PatrolTester $) async {
          await $.pumpWidgetAndSettle(testWidget());
          await $(#button).tap();
          await $(#cancelButton).tap();
          expect(result, false);
        },
      );
    },
  );
}
