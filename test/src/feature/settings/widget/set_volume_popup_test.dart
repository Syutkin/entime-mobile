import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/settings/widget/settings_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late double volume;
  double? result;

  setUp(() {
    volume = 0.2;
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
                result = await setVolumePopup(context, volume);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  group('setVolumePopup tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(volume));
      await $(#button).tap();
      expect($(Localization.current.I18nSettings_voiceVolume), findsOneWidget);
      expect($(AlertDialog), findsOneWidget);
      final slider = $(Slider).evaluate().single.widget as Slider;
      expect(slider.value, volume);
    });

    patrolWidgetTest('Slide and get new size', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(volume));
      await $(#button).tap();
      await $.tester.drag($(Slider), const Offset(50, 0));
      await $(#okButton).tap();
      expect(result, 0.71); //0.71 - при сдвиге на 50
    });

    patrolWidgetTest('Return null when cancel pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(volume));
      await $(#button).tap();
      await $(#cancelButton).tap();
      await expectLater(result, isNull);
    });
  });
}
