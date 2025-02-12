import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/countdown/countdown.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockTrailsBloc extends MockBloc<TrailsEvent, TrailsState> implements TrailsBloc {}

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState> implements CountdownBloc {}

void main() {
  late Stage stage;
  late TrailsBloc trailsBloc;
  late DatabaseBloc databaseBloc;
  late CountdownBloc countdownBloc;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: BlocProvider.value(
          value: databaseBloc,
          child: BlocProvider.value(
            value: trailsBloc,
            child: BlocProvider.value(value: countdownBloc, child: StageItemTile(stage: stage)),
          ),
        ),
      ),
    );
  }

  setUp(() {
    stage = const Stage(id: 1, raceId: 1, name: 'Stage name', isActive: true, isDeleted: false);
    trailsBloc = MockTrailsBloc();
    databaseBloc = MockDatabaseBloc();
    countdownBloc = MockCountdownBloc();
  });

  group('StagesItemTile_test', () {
    patrolWidgetTest('Initial state', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      expect($(stage.name), findsOneWidget);
      expect($(ListTile), findsOneWidget);
    });

    patrolWidgetTest('Tap trailing icon', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
    });

    patrolWidgetTest('Can tap edit', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $.tester.tap($(Localization.current.I18nCore_edit));
      // await $(Localization.current.I18nCore_edit).tap(settlePolicy: SettlePolicy.noSettle);
    });

    patrolWidgetTest('Tap delete, than cancel', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#cancelButton).tap();
      verifyNever(() => databaseBloc.add(DatabaseEvent.deleteStage(stage.id)));
    });

    patrolWidgetTest('Tap delete, than ok', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#okButton).tap();
      verify(() => databaseBloc.add(DatabaseEvent.deleteStage(stage.id))).called(1);
    });

    patrolWidgetTest('Tap on widget', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget());
      await $(StageItemTile).tap();
      verify(() => databaseBloc.add(DatabaseEvent.selectStage(stage))).called(1);
      verify(() => countdownBloc.add(CountdownEvent.start(stageId: stage.id))).called(1);
      // pop
      expect($(Scaffold), findsNothing);
      expect($(MaterialApp), findsOneWidget);
    });
  });
}
