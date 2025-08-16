import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/file_picker_provider.dart';
import 'package:entime/src/common/widget/expanded_alert_dialog.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:entime/src/feature/trails/widget/trail_item_tile.dart';
import 'package:entime/src/feature/trails/widget/trails_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockTrailsBloc extends MockBloc<TrailsEvent, TrailsState> implements TrailsBloc {}

class MockFilePicker extends Mock implements IFilePickerProvider {}

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late DatabaseBloc databaseBloc;
  late TrailsBloc trailsBloc;
  late IFilePickerProvider filePicker;
  late List<TrailInfo> trails;
  late TrailInfo trail1;
  late TrailInfo trail2;

  Widget testWidget() {
    initializeDateFormatting();
    return BlocProvider.value(
      value: databaseBloc,
      child: BlocProvider.value(
        value: trailsBloc,
        child: RepositoryProvider.value(
          value: filePicker,
          child: MaterialApp(
            localizationsDelegates: const [Localization.delegate],
            supportedLocales: Localization.supportedLocales,
            home: TrailsListPage(),
          ),
        ),
      ),
    );
  }

  setUp(() {
    final row1 = MockQueryRow();
    final row2 = MockQueryRow();
    filePicker = MockFilePicker();

    trail1 = TrailInfo(
      row: row1,
      id: 1,
      name: 'Trail 1',
      distance: 1000,
      elevation: 100,
      fileId: 1,
      fileName: 'trail1.gpx',
      fileExtension: '.gpx',
      fileSize: 12345,
      timestamp: DateTime.now(),
    );

    trail2 = TrailInfo(
      row: row2,
      id: 2,
      name: 'Trail 2',
      distance: 2000,
      elevation: 200,
    );

    trails = [trail1, trail2];

    databaseBloc = MockDatabaseBloc();
    trailsBloc = MockTrailsBloc();

    when(() => databaseBloc.state).thenReturn(
      const DatabaseState(
        races: [],
        stages: [],
        categories: [],
        riders: [],
        participants: [],
        finishes: [],
        numbersOnTrace: [],
      ),
    );
  });

  group('TrailsListPage tests', () {
    patrolWidgetTest('Initial page with loading state', (PatrolTester $) async {
      when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

      await $.pumpWidget(testWidget());

      expect($(AppBar).$(Localization.current.I18nDatabase_trails), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(CircularProgressIndicator), findsOneWidget);
      expect($(TrailItemTile), findsNothing);
    });

    patrolWidgetTest('Page with trails list', (PatrolTester $) async {
      when(() => trailsBloc.state).thenReturn(TrailsState.initialized(trails: trails));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(AppBar).$(Localization.current.I18nDatabase_trails), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(TrailItemTile), findsNWidgets(2));
      expect($(trail1.name), findsOneWidget);
      expect($(trail2.name), findsOneWidget);
      expect($(CircularProgressIndicator), findsNothing);
    });

    patrolWidgetTest('Empty trails list', (PatrolTester $) async {
      when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(AppBar).$(Localization.current.I18nDatabase_trails), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(TrailItemTile), findsNothing);
      expect($(CircularProgressIndicator), findsNothing);
    });

    patrolWidgetTest('Loading track state', (PatrolTester $) async {
      when(() => trailsBloc.state).thenReturn(TrailsState.loadingTrack(trails: trails));

      await $.pumpWidget(testWidget());

      expect($(AppBar).$(Localization.current.I18nDatabase_trails), findsOneWidget);
      expect($(FloatingActionButton), findsOneWidget);
      expect($(CircularProgressIndicator), findsOneWidget);
      expect($(TrailItemTile), findsNothing);
    });

    patrolWidgetTest('Tap floating action button', (PatrolTester $) async {
      when(() => trailsBloc.state).thenReturn(TrailsState.initialized(trails: trails));

      await $.pumpWidgetAndSettle(testWidget());
      await $(FloatingActionButton).tap();

      expect($(ExpandedAlertDialog), findsOneWidget);
    });

    patrolWidgetTest('Scroll through trails list', (PatrolTester $) async {
      // Create more trails to test scrolling
      final manyTrails = List.generate(20, (index) {
        final row = MockQueryRow();
        return TrailInfo(
          row: row,
          id: index + 1,
          name: 'Trail ${index + 1}',
          distance: (index + 1) * 1000,
          elevation: (index + 1) * 100,
        );
      });

      when(() => trailsBloc.state).thenReturn(TrailsState.initialized(trails: manyTrails));

      await $.pumpWidgetAndSettle(testWidget());

      expect($('Trail 1'), findsOneWidget);
      expect(await $('Trail 20').scrollTo(), findsOneWidget);

      // Verify that getTrails event was dispatched when widget was built
      verify(() => trailsBloc.add(const TrailsEvent.getTrails())).called(1);
    });

    patrolWidgetTest('Trails with different states', (PatrolTester $) async {
      final trailWithFile = TrailInfo(
        row: MockQueryRow(),
        id: 3,
        name: 'Trail with file',
        fileId: 1,
        fileName: 'trail.gpx',
        fileExtension: '.gpx',
        fileSize: 54321,
        timestamp: DateTime.now(),
      );

      final trailWithoutFile = TrailInfo(
        row: MockQueryRow(),
        id: 4,
        name: 'Trail without file',
      );

      final mixedTrails = [trailWithFile, trailWithoutFile];
      when(() => trailsBloc.state).thenReturn(TrailsState.initialized(trails: mixedTrails));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(TrailItemTile), findsNWidgets(2));
      expect($('Trail with file'), findsOneWidget);
      expect($('Trail without file'), findsOneWidget);
    });
  });
}
