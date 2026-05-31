import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockTrailsBloc extends MockBloc<TrailsEvent, TrailsState> implements TrailsBloc {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

void main() {
  late Stage stage;
  late TrailsBloc trailsBloc;
  late DatabaseBloc databaseBloc;

  Widget testWidget({ValueChanged<Stage>? onSelected}) {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(
            value: trailsBloc,
            child: StageItemTile(stage: stage, onSelected: onSelected ?? (_) {}),
          ),
        ),
      ),
    );
  }

  setUp(() {
    stage = const Stage(id: 1, raceId: 1, name: 'Stage name', isActive: true);
    trailsBloc = MockTrailsBloc();
    databaseBloc = MockDatabaseBloc();
  });

  group('StagesItemTile_test', () {
    patrolWidgetTest('Initial state', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(stage.name), findsOneWidget);
      expect($(ListTile), findsOneWidget);
    });

    patrolWidgetTest('Tap trailing icon', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
    });

    patrolWidgetTest('Can tap edit', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $.tester.tap($(Localization.current.I18nCore_edit));
      // await $(Localization.current.I18nCore_edit).tap(settlePolicy: SettlePolicy.noSettle);
    });

    patrolWidgetTest('Tap delete, than cancel', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#cancelButton).tap();
      verifyNever(() => databaseBloc.add(DatabaseEvent.deleteStage(stage.id)));
    });

    patrolWidgetTest('Tap delete, than ok', ($) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#okButton).tap();
      verify(() => databaseBloc.add(DatabaseEvent.deleteStage(stage.id))).called(1);
    });

    patrolWidgetTest('Tap on widget invokes callback', ($) async {
      Stage? selectedStage;

      await $.pumpWidgetAndSettle(
        testWidget(
          onSelected: (stage) {
            selectedStage = stage;
          },
        ),
      );
      await $(StageItemTile).tap();

      expect(selectedStage, stage);
      expect($(Scaffold), findsOneWidget);
    });
  });
}
