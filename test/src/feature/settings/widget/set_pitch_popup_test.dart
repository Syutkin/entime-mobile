import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late double pitch;
  double? result;

  setUp(() {
    pitch = 1.0;
  });

  Future<Widget> testWidget(double pitch) async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                result = await setPitchPopup(context, pitch);
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
      await $.pumpWidgetAndSettle(await testWidget(pitch));
      await $(#button).tap();
      expect($(Localization.current.I18nSettings_voicePitch), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      final slider = $(Slider).evaluate().single.widget as Slider;
      expect(slider.value, pitch);
    });

    patrolWidgetTest('Slide and get new size', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(pitch));
      await $(#button).tap();
      await $.tester.drag($(Slider), const Offset(55, 0));
      await $(#okButton).tap();
      expect(result, 1.63); //1.63 - при сдвиге на 55
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget(pitch));
      await $(#button).tap();
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
