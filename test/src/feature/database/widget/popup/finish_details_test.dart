import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/constants/date_time_formats.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/database/widget/popup/finish_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  late Finish finish;
  late int number;
  late String finishTime;

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () async {
                await finishDetails(context, finish);
              },
              child: const Text('textButton', key: Key('button')),
            );
          },
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const DatabaseEvent.deleteRace(1));
  });

  setUp(() {
    number = 5;
    finishTime = '10:10:10';
    finish = Finish(
      id: 1,
      stageId: 1,
      timestamp: DateTime.now(),
      ntpOffset: 111,
      finishTime: finishTime,
      isHidden: false,
      isManual: false,
      number: number,
    );
  });

  group('FinishDetailsPopup tests', () {
    patrolWidgetTest('Open dialog then close it when ok button pressed', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(FinishDetailsPopup), findsOneWidget);
      await $(#okButton).tap();
      expect($(FinishDetailsPopup), findsNothing);
    });

    patrolWidgetTest('Dialog details', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(Localization.current.I18nProtocol_finishTimeCutoff), findsOneWidget);
      expect($(Localization.current.I18nFinish_finishTime), findsOneWidget);
      expect($(Localization.current.I18nFinish_finishTimestamp), findsOneWidget);
      expect($(Localization.current.I18nNtp_ntpOffset), findsOneWidget);
      expect($(Localization.current.I18nProtocol_number), findsOneWidget);
      expect($(Localization.current.I18nProtocol_type), findsOneWidget);
      expect($(Localization.current.I18nFinish_hiddenCutoff), findsOneWidget);
      expect($(#okButton), findsOneWidget);
    });

    patrolWidgetTest('Show finish info', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(finish.finishTime), findsOneWidget);
      expect($(DateFormat(longTimeFormat).format(finish.timestamp)), findsOneWidget);
      expect($('${finish.ntpOffset}'), findsOneWidget);
      expect($('$number'), findsOneWidget);
      expect($(Localization.current.I18nFinish_automaticTime), findsOneWidget);
      expect($(Localization.current.I18nCore_no), findsOneWidget);
    });

    patrolWidgetTest('Show different finish info', (PatrolTester $) async {
      finish = Finish(
        id: 1,
        stageId: 1,
        timestamp: DateTime.now(),
        ntpOffset: 111,
        finishTime: finishTime,
        isHidden: true,
        isManual: true,
      );
      await $.pumpWidgetAndSettle(await testWidget());
      await $(#button).tap();
      expect($(finish.finishTime), findsOneWidget);
      expect($(DateFormat(longTimeFormat).format(finish.timestamp)), findsOneWidget);
      expect($('${finish.ntpOffset}'), findsOneWidget);
      expect($('$number'), findsNothing);
      expect($(Localization.current.I18nFinish_manualTime), findsOneWidget);
      expect($(Localization.current.I18nCore_yes), findsOneWidget);
    });
  });
}
