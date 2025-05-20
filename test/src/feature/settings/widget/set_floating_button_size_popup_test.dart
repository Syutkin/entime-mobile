import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late double size;
  late String title;
  double? result;

  setUp(() {
    size = 100.0;
    title = 'title';
  });

  Widget testWidget(double size) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setFloatingButtonSizePopup(context, size, title: title);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('setFloatingButtonSizePopup tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(size));
      await $(#button).tap();
      expect($(title), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      final slider = $(Slider).evaluate().single.widget as Slider;
      expect(slider.value, size);
    });

    patrolWidgetTest('Slide and get new size', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(size));
      await $(#button).tap();
      await $.tester.drag($(Slider), const Offset(50, 0));
      await $(#okButton).tap();
      expect(result, 166.0); //166.0 - при сдвиге на 50
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(size));
      await $(#button).tap();
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
