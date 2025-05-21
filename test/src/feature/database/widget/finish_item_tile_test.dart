import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/constants/date_time_formats.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

void main() {
  late String finishTime;
  late String timestampStr;
  late DateTime timestamp;
  late String difference;
  late int number;
  late SettingsCubit settingsCubit;
  late AppSettings settings;

  Widget testWidget(Finish item) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: settingsCubit, child: FinishItemTile(item: item))),
    );
  }

  group('FinishItemTile', () {
    setUp(() {
      number = 7;
      finishTime = '10:00:03,123';
      timestampStr = '10:00:03,456';
      timestamp = timestampStr.toDateTime()!;
      difference = '-333';
      settingsCubit = MockSettingsCubit();
      settings = const AppSettings.defaults();
    });

    patrolWidgetTest('Show all basic info', (PatrolTester $) async {
      when(() => settingsCubit.state).thenReturn(settings);

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: false,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      expect($(number.toString()), findsOneWidget);
      expect($(finishTime), findsOneWidget);
      expect($(Icon), findsOneWidget);
      final icon = ($.tester.firstWidget($(Icon)) as Icon).icon;
      expect(icon, MdiIcons.cpu64Bit);
    });

    patrolWidgetTest('Correct hand icon for manual time', (PatrolTester $) async {
      when(() => settingsCubit.state).thenReturn(settings);

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: true,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      expect(($.tester.firstWidget($(Icon)) as Icon).icon, MdiIcons.handBackLeft);
    });

    patrolWidgetTest('Correct cellphone icon if using local time for automatic stamps', (PatrolTester $) async {
      when(
        () => settingsCubit.state,
      ).thenReturn(const AppSettings.defaults().copyWith(useTimestampForAutomaticStamps: true));

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: false,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      expect(($.tester.firstWidget($(Icon)) as Icon).icon, MdiIcons.cellphone);
    });

    patrolWidgetTest('Show timestamp if using local time for automatic stamps', (PatrolTester $) async {
      when(
        () => settingsCubit.state,
      ).thenReturn(const AppSettings.defaults().copyWith(useTimestampForAutomaticStamps: true));

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: false,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));
      expect($(timestampStr), findsOneWidget);
      expect($(finishTime), findsNothing);
    });

    patrolWidgetTest('Take into account ntpOffset for timestamp if using local time for automatic stamps', (
      PatrolTester $,
    ) async {
      when(
        () => settingsCubit.state,
      ).thenReturn(const AppSettings.defaults().copyWith(useTimestampForAutomaticStamps: true));

      const ntpOffset = -4378;

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: ntpOffset,
        finishTime: finishTime,
        isHidden: false,
        isManual: false,
        number: number,
      );

      final result = timestampStr.toDateTime()?.add(const Duration(milliseconds: ntpOffset)).format(longTimeFormat);

      await $.pumpWidgetAndSettle(testWidget(item));
      expect($(result), findsOneWidget);
      expect($(finishTime), findsNothing);
    });

    patrolWidgetTest('Show difference if enabled at settings', (PatrolTester $) async {
      settings = settings.copyWith(showFinishDifference: true);
      when(() => settingsCubit.state).thenReturn(settings);

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: true,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      expect($(difference), findsOneWidget);
    });

    patrolWidgetTest('Change color if difference more than threshold and enabled at settings', (PatrolTester $) async {
      settings = settings.copyWith(
        showFinishDifference: false,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 1,
      );
      when(() => settingsCubit.state).thenReturn(settings);

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: true,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      final context = $.tester.element($(FinishItemTile));
      final cardColor = ($.tester.firstWidget($(Card)) as Card).color;
      final textColor = ($.tester.firstWidget($(Text)) as Text).style?.color;
      final iconColor = ($.tester.firstWidget($(Icon)) as Icon).color;

      expect(cardColor, Theme.of(context).colorScheme.error);
      expect(textColor, Theme.of(context).colorScheme.onError);
      expect(iconColor, Theme.of(context).colorScheme.onError);
      expect($(difference), findsNothing);
      expect($(Flexible), findsNWidgets(3));
    });

    patrolWidgetTest('Change color and show difference if enabled at settings', (PatrolTester $) async {
      settings = settings.copyWith(
        showFinishDifference: true,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 1,
      );
      when(() => settingsCubit.state).thenReturn(settings);

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: true,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      final context = $.tester.element($(FinishItemTile));
      final cardColor = ($.tester.firstWidget($(Card)) as Card).color;
      final textColor = ($.tester.firstWidget($(Text)) as Text).style?.color;
      final iconColor = ($.tester.firstWidget($(Icon)) as Icon).color;

      expect(cardColor, Theme.of(context).colorScheme.error);
      expect(textColor, Theme.of(context).colorScheme.onError);
      expect(iconColor, Theme.of(context).colorScheme.onError);
      expect($(difference), findsOneWidget);
      expect($(Flexible), findsNWidgets(4));
    });

    patrolWidgetTest('Take into account ntpOffset when show difference', (PatrolTester $) async {
      settings = settings.copyWith(
        showFinishDifference: true,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 1,
      );
      when(() => settingsCubit.state).thenReturn(settings);

      const offset = -300;
      final curDifference = int.parse(difference) - offset;

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: offset,
        finishTime: finishTime,
        isHidden: false,
        isManual: true,
        number: number,
      );

      await $.pumpWidgetAndSettle(testWidget(item));

      expect($(curDifference.toString()), findsOneWidget);
    });
  });
}
