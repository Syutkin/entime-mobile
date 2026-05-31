import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/extensions.dart';
import 'package:entime/src/constants/date_time_formats.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/settings/bloc/settings_bloc.dart';
import 'package:entime/src/feature/settings/model/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
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

  Future<Widget> testWidget(
    Finish item, {
    DismissDirectionCallback? onDismissed,
    DragTargetAcceptWithDetails<int>? onAccept,
  }) async {
    await initializeDateFormatting();
    final tile = FinishItemTile(item: item, onAccept: onAccept);
    final child = onDismissed == null
        ? tile
        : _DismissibleFinishTileTestHost(item: item, onDismissed: onDismissed, onAccept: onAccept);

    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: settingsCubit,
          child: child,
        ),
      ),
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

    patrolWidgetTest('Show all basic info', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

      expect($(number.toString()), findsOneWidget);
      expect($(finishTime), findsOneWidget);
      expect($(Icon), findsOneWidget);
      final icon = ($.tester.firstWidget($(Icon)) as Icon).icon;
      expect(icon, MdiIcons.cpu64Bit);
    });

    patrolWidgetTest('Correct hand icon for manual time', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

      expect(($.tester.firstWidget($(Icon)) as Icon).icon, MdiIcons.handBackLeft);
    });

    patrolWidgetTest('Correct cellphone icon if using local time for automatic stamps', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

      expect(($.tester.firstWidget($(Icon)) as Icon).icon, MdiIcons.cellphone);
    });

    patrolWidgetTest('Show timestamp if using local time for automatic stamps', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));
      expect($(timestampStr), findsOneWidget);
      expect($(finishTime), findsNothing);
    });

    patrolWidgetTest('Take into account ntpOffset for timestamp if using local time for automatic stamps', (
      $,
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

      await $.pumpWidgetAndSettle(await testWidget(item));
      expect($(result), findsOneWidget);
      expect($(finishTime), findsNothing);
    });

    patrolWidgetTest('Show difference if enabled at settings', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

      expect($(difference), findsOneWidget);
    });

    patrolWidgetTest('Change color if difference more than threshold and enabled at settings', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

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

    patrolWidgetTest('Change color and show difference if enabled at settings', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

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

    patrolWidgetTest(
      'Do not change color if difference more than threshold but useTimestampForAutomaticStamps enabled',
      ($) async {
        settings = settings.copyWith(
          showFinishDifference: false,
          showColorFinishDifference: true,
          finishDifferenceThreshold: 1,
          useTimestampForAutomaticStamps: true,
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

        await $.pumpWidgetAndSettle(await testWidget(item));

        final context = $.tester.element($(FinishItemTile));
        final cardColor = ($.tester.firstWidget($(Card)) as Card).color;
        final textColor = ($.tester.firstWidget($(Text)) as Text).style?.color;
        final iconColor = ($.tester.firstWidget($(Icon)) as Icon).color;

        expect(cardColor, null);
        expect(textColor, Theme.of(context).colorScheme.onSurface);
        expect(iconColor, Theme.of(context).colorScheme.onSurface);
        expect($(difference), findsNothing);
        expect($(Flexible), findsNWidgets(3));
      },
    );

    patrolWidgetTest('Take into account ntpOffset when show difference', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

      expect($(curDifference.toString()), findsOneWidget);
    });

    patrolWidgetTest('Calls onDismissed with dismiss direction', ($) async {
      when(() => settingsCubit.state).thenReturn(settings);
      DismissDirection? dismissedDirection;

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

      await $.pumpWidgetAndSettle(
        await testWidget(
          item,
          onDismissed: (direction) {
            dismissedDirection = direction;
          },
        ),
      );
      await $.tester.drag($(Dismissible), const Offset(-500, 0));
      await $.pumpAndSettle();

      expect(dismissedDirection, DismissDirection.endToStart);
      expect($(FinishItemTile), findsNothing);
    });

    patrolWidgetTest('Rejects dragged number when finish already has number', ($) async {
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

      await $.pumpWidgetAndSettle(await testWidget(item));

      final dragTarget = $.tester.widget<DragTarget<int>>(find.byType(DragTarget<int>));
      final details = DragTargetDetails<int>(data: 42, offset: Offset.zero);

      expect(dragTarget.onWillAcceptWithDetails?.call(details), false);
    });

    patrolWidgetTest('Accepts dragged number and forwards details when finish has no number', ($) async {
      when(() => settingsCubit.state).thenReturn(settings);
      DragTargetDetails<int>? acceptedDetails;

      final item = Finish(
        id: 1,
        stageId: 1,
        timestamp: timestamp,
        ntpOffset: 0,
        finishTime: finishTime,
        isHidden: false,
        isManual: false,
      );

      await $.pumpWidgetAndSettle(
        await testWidget(
          item,
          onAccept: (details) {
            acceptedDetails = details;
          },
        ),
      );

      final dragTarget = $.tester.widget<DragTarget<int>>(find.byType(DragTarget<int>));
      final details = DragTargetDetails<int>(data: 42, offset: const Offset(10, 20));

      expect(dragTarget.onWillAcceptWithDetails?.call(details), true);

      dragTarget.onAcceptWithDetails?.call(details);

      expect(acceptedDetails?.data, details.data);
      expect(acceptedDetails?.offset, details.offset);
    });
  });
}

class _DismissibleFinishTileTestHost extends StatefulWidget {
  const _DismissibleFinishTileTestHost({required this.item, this.onDismissed, this.onAccept});

  final Finish item;
  final DismissDirectionCallback? onDismissed;
  final DragTargetAcceptWithDetails<int>? onAccept;

  @override
  State<_DismissibleFinishTileTestHost> createState() => _DismissibleFinishTileTestHostState();
}

class _DismissibleFinishTileTestHostState extends State<_DismissibleFinishTileTestHost> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    if (!isVisible) {
      return const SizedBox.shrink();
    }

    return FinishItemTile(
      item: widget.item,
      onAccept: widget.onAccept,
      onDismissed: (direction) {
        widget.onDismissed?.call(direction);
        setState(() {
          isVisible = false;
        });
      },
    );
  }
}
