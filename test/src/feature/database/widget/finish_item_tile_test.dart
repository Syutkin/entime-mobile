import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
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

class MockSettingsBloc extends MockBloc<SettingsEvent, SettingsState>
    implements SettingsBloc {}

void main() {
  late String finishTime;
  late DateTime timestamp;
  late String difference;
  late int number;
  late SettingsBloc settingsBloc;
  late AppSettings settings;

  Widget testWidget(Finish item) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: settingsBloc,
          child: FinishItemTile(item: item),
        ),
      ),
    );
  }

  group('FinishItemTile', () {
    setUp(() {
      number = 7;
      finishTime = '10:00:03,123';
      timestamp = '10:00:03.456'.toDateTime()!;
      difference = '-333';
      settingsBloc = MockSettingsBloc();
      settings = const AppSettings.defaults();
    });

    patrolWidgetTest('Show all basic info', (PatrolTester $) async {
      when(
        () => settingsBloc.state,
      ).thenReturn(SettingsState(settings: settings));

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

    patrolWidgetTest('Correct hand icon for manual time', (
      PatrolTester $,
    ) async {
      when(
        () => settingsBloc.state,
      ).thenReturn(SettingsState(settings: settings));

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

      expect(
        ($.tester.firstWidget($(Icon)) as Icon).icon,
        MdiIcons.handBackLeft,
      );
    });

    patrolWidgetTest('Show difference if enabled at settings', (
      PatrolTester $,
    ) async {
      settings = settings.copyWith(showFinishDifference: true);
      when(
        () => settingsBloc.state,
      ).thenReturn(SettingsState(settings: settings));

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

    patrolWidgetTest(
      'Change color if difference more than threshold and enabled at settings',
      (PatrolTester $) async {
        settings = settings.copyWith(
          showFinishDifference: false,
          showColorFinishDifference: true,
          finishDifferenceThreshold: 1,
        );
        when(
          () => settingsBloc.state,
        ).thenReturn(SettingsState(settings: settings));

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
      },
    );

    patrolWidgetTest(
      'Change color and show difference if enabled at settings',
      (PatrolTester $) async {
        settings = settings.copyWith(
          showFinishDifference: true,
          showColorFinishDifference: true,
          finishDifferenceThreshold: 1,
        );
        when(
          () => settingsBloc.state,
        ).thenReturn(SettingsState(settings: settings));

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
      },
    );

    patrolWidgetTest('Take into account ntpOffset when show difference', (
      PatrolTester $,
    ) async {
      settings = settings.copyWith(
        showFinishDifference: true,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 1,
      );
      when(
        () => settingsBloc.state,
      ).thenReturn(SettingsState(settings: settings));

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
