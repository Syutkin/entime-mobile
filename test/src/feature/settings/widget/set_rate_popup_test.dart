import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late double rate;
  double? result;

  setUp(() {
    rate = 0.3;
  });

  Widget testWidget(double rate) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setRatePopup(context, rate);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('setPitchPopup tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(rate));
      await $(#button).tap();
      expect($(Localization.current.I18nSettings_voiceRate), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      final slider = $(Slider).evaluate().single.widget as Slider;
      expect(slider.value, rate);
    });

    patrolWidgetTest('Slide and get new size', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(rate));
      await $(#button).tap();
      await $.tester.drag($(Slider), const Offset(55, 0));
      await $(#okButton).tap();
      expect(result, 0.79); //0.79 - при сдвиге на 55
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(rate));
      await $(#button).tap();
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
