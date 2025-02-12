import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/filesize.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:entime/src/feature/trails/widget/trail_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockTrailsBloc extends MockBloc<TrailsEvent, TrailsState> implements TrailsBloc {}

class MockQueryRow extends Mock implements QueryRow {}

void main() {
  late TrailInfo trail;
  late QueryRow row;
  late int id;
  late String name;
  late DateTime now;
  late int size;
  late DatabaseBloc databaseBloc;
  late TrailsBloc trailsBloc;

  Widget testWidget(TrailInfo trail) {
    initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Builder(
        builder: (context) {
          return Material(
            child: BlocProvider.value(
              value: databaseBloc,
              child: BlocProvider.value(value: trailsBloc, child: TrailItemTile(trail: trail)),
            ),
          );
        },
      ),
    );
  }

  setUp(() {
    row = MockQueryRow();
    id = 1;
    name = 'Trail name';
    now = DateTime.now();
    size = 12345;
    trail = TrailInfo(row: row, id: id, name: name);
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

  group('TrailItemTile tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(trail));
      expect($(trail.name), findsOneWidget);
      expect(($(ListTile).evaluate().single.widget as ListTile).subtitle, null);
      expect(($(Icon).at(0).evaluate().single.widget as Icon).icon, MdiIcons.mapMarkerOffOutline);
    });

    patrolWidgetTest('Trail with additional info', (PatrolTester $) async {
      trail = TrailInfo(row: row, id: id, name: name, fileSize: size, timestamp: now, fileId: 1);
      await $.pumpWidgetAndSettle(testWidget(trail));
      expect($(trail.name), findsOneWidget);
      expect(($(ListTile).evaluate().single.widget as ListTile).subtitle, isA<Text>());
      expect($('${DateFormat.yMMMd().format(now)}, ${filesize(size)}'), findsOneWidget);
      expect(($(Icon).at(0).evaluate().single.widget as Icon).icon, MdiIcons.mapMarkerOutline);
    });

    patrolWidgetTest('Tap PopupMenuButton', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(trail));
      await $(PopupMenuButton<void>).tap();
      expect($(PopupMenuItem<void>), findsNWidgets(2));
      expect($(Localization.current.I18nCore_edit), findsOneWidget);
      expect($(Localization.current.I18nCore_delete), findsOneWidget);
    });

    patrolWidgetTest('Tap delete then ok', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(trail));
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#okButton).tap();
      verify(() => trailsBloc.add(TrailsEvent.deleteTrail(trail.id))).called(1);
    });

    patrolWidgetTest('Tap delete then cancel', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(testWidget(trail));
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_delete).tap();
      await $(#cancelButton).tap();
      verifyNever(() => trailsBloc.add(TrailsEvent.deleteTrail(trail.id)));
    });

    patrolWidgetTest('Tap PopupMenuButton on trail with track', (PatrolTester $) async {
      trail = TrailInfo(row: row, id: id, name: name, fileSize: size, timestamp: now, fileId: id, fileExtension: 'gpx');
      await $.pumpWidgetAndSettle(testWidget(trail));
      await $(PopupMenuButton<void>).tap();
      expect($(PopupMenuItem<void>), findsNWidgets(3));
      expect($(Localization.current.I18nCore_share), findsOneWidget);
      expect($(Localization.current.I18nCore_edit), findsOneWidget);
      expect($(Localization.current.I18nCore_delete), findsOneWidget);
      await $(Localization.current.I18nCore_share).tap();
      verify(() => databaseBloc.add(DatabaseEvent.shareTrack(trail: trail))).called(1);
    });

    patrolWidgetTest('Tap share', (PatrolTester $) async {
      trail = TrailInfo(row: row, id: id, name: name, fileSize: size, timestamp: now, fileId: id, fileExtension: 'gpx');
      await $.pumpWidgetAndSettle(testWidget(trail));
      await $(PopupMenuButton<void>).tap();
      await $(Localization.current.I18nCore_share).tap();
      verify(() => databaseBloc.add(DatabaseEvent.shareTrack(trail: trail))).called(1);
    });
  });
}
