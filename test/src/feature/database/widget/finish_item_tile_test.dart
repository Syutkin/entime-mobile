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
          child: FinishItemTile(
            item: item,
          ),
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

    testWidgets('Show all basic info', (WidgetTester tester) async {
      when(() => settingsBloc.state)
          .thenReturn(SettingsState(settings: settings));

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

      await tester.pumpWidget(testWidget(item));
      await tester.pumpAndSettle();

      expect(find.text(number.toString()), findsOneWidget);
      expect(find.text(finishTime), findsOneWidget);
      expect(find.byType(Icon), findsOneWidget);
      final icon = (tester.firstWidget(find.byType(Icon)) as Icon).icon;
      expect(icon, MdiIcons.cpu64Bit);
    });

    testWidgets('Correct hand icon for manual time',
        (WidgetTester tester) async {
      when(() => settingsBloc.state)
          .thenReturn(SettingsState(settings: settings));

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

      await tester.pumpWidget(testWidget(item));
      await tester.pumpAndSettle();

      expect(
        (tester.firstWidget(find.byType(Icon)) as Icon).icon,
        MdiIcons.handBackLeft,
      );
    });

    testWidgets('Show difference if enabled at settings',
        (WidgetTester tester) async {
      settings = settings.copyWith(showFinishDifference: true);
      when(() => settingsBloc.state)
          .thenReturn(SettingsState(settings: settings));

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

      await tester.pumpWidget(testWidget(item));
      await tester.pumpAndSettle();

      expect(find.text(difference), findsOneWidget);
    });

    testWidgets(
        'Change color if difference more than threshold and enabled at settings',
        (WidgetTester tester) async {
      settings = settings.copyWith(
        showFinishDifference: false,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 1,
      );
      when(() => settingsBloc.state)
          .thenReturn(SettingsState(settings: settings));

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

      await tester.pumpWidget(testWidget(item));
      await tester.pumpAndSettle();

      final context = tester.element(find.byType(FinishItemTile));
      final cardColor = (tester.firstWidget(find.byType(Card)) as Card).color;
      final textColor =
          (tester.firstWidget(find.byType(Text)) as Text).style?.color;
      final iconColor = (tester.firstWidget(find.byType(Icon)) as Icon).color;

      expect(cardColor, Theme.of(context).colorScheme.error);
      expect(textColor, Theme.of(context).colorScheme.onError);
      expect(iconColor, Theme.of(context).colorScheme.onError);
      expect(find.text(difference), findsNothing);
      expect(find.byType(Flexible), findsNWidgets(3));
    });

    testWidgets('Change color and show difference if enabled at settings',
        (WidgetTester tester) async {
      settings = settings.copyWith(
        showFinishDifference: true,
        showColorFinishDifference: true,
        finishDifferenceThreshold: 1,
      );
      when(() => settingsBloc.state)
          .thenReturn(SettingsState(settings: settings));

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

      await tester.pumpWidget(testWidget(item));
      await tester.pumpAndSettle();

      final context = tester.element(find.byType(FinishItemTile));
      final cardColor = (tester.firstWidget(find.byType(Card)) as Card).color;
      final textColor =
          (tester.firstWidget(find.byType(Text)) as Text).style?.color;
      final iconColor = (tester.firstWidget(find.byType(Icon)) as Icon).color;

      expect(cardColor, Theme.of(context).colorScheme.error);
      expect(textColor, Theme.of(context).colorScheme.onError);
      expect(iconColor, Theme.of(context).colorScheme.onError);
      expect(find.text(difference), findsOneWidget);
      expect(find.byType(Flexible), findsNWidgets(4));
    });
  });
}
