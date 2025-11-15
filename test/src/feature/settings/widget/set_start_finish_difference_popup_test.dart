import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late int difference;
  late String title;
  int? result;

  setUp(() {
    difference = 100;
    title = 'title';
    result = null;
  });

  Future<Widget> testWidget(int difference) async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setStartFinishDifferencePopup(context, difference: difference, title: title);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('setStartFinishDifferencePopup tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(difference));
      await $(#button).tap();
      expect($(title), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      expect($(TextFormField), findsOneWidget);
      expect($(difference.toString()), findsOneWidget);
    });

    patrolWidgetTest('Enter wrong difference', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(difference));
      await $(#button).tap();
      await $(TextFormField).enterText('999-00');
      await $(#okButton).tap();
      expect($(Localization.current.I18nSettings_incorrectStartFinishDifference), findsOneWidget);
    });

    patrolWidgetTest('Enter empty difference', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(difference));
      await $(#button).tap();
      await $(TextFormField).enterText('');
      await $(#okButton).tap();
      expect($(Localization.current.I18nSettings_incorrectStartFinishDifference), findsOneWidget);
    });

    patrolWidgetTest('Enter negative difference', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(difference));
      await $(#button).tap();
      await $(TextFormField).enterText('-10');
      await $(#okButton).tap();
      expect($(Localization.current.I18nSettings_incorrectStartFinishDifference), findsOneWidget);
    });

    patrolWidgetTest('Enter correct difference and return it from ok pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(difference));
      await $(#button).tap();
      await $(TextFormField).enterText('1234');
      await $(#okButton).tap();
      await expectLater(result, 1234);
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(difference));
      await $(#button).tap();
      await $(TextFormField).enterText('1234');
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
