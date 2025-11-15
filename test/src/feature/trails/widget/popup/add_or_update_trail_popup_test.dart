import 'package:bloc_test/bloc_test.dart';
import 'package:drift/drift.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/common/utils/file_picker_provider.dart';
import 'package:entime/src/common/widget/expanded_alert_dialog.dart';
import 'package:entime/src/constants/config.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/trails/bloc/trails_bloc.dart';
import 'package:entime/src/feature/trails/widget/trails_list_page.dart';
import 'package:file_picker/file_picker.dart';
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
  late TrailInfo trail;
  late IFilePickerProvider filePicker;
  late QueryRow row;

  const addTrailButton = 'Add Trail';
  const updateTrailButton = 'Update Trail';

  late int id;
  late String name;
  late int distance;
  late int elevation;
  late String url;
  late String description;
  late int fileId;
  late String fileName;
  late String fileExtension;
  late int fileSize;
  late DateTime timestamp;

  late TrackFile dummyTrack;

  Future<Widget> testAddWidget() async {
    await initializeDateFormatting();
    return BlocProvider.value(
      value: databaseBloc,
      child: BlocProvider.value(
        value: trailsBloc,
        child: RepositoryProvider.value(
          value: filePicker,
          child: MaterialApp(
            localizationsDelegates: const [Localization.delegate],
            supportedLocales: Localization.supportedLocales,
            home: Builder(
              builder: (context) => Scaffold(
                body: ElevatedButton(
                  onPressed: () => addTrailPopup(context),
                  child: const Text(addTrailButton),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<Widget> testUpdateWidget(TrailInfo trail) async {
    await initializeDateFormatting();
    return BlocProvider.value(
      value: databaseBloc,
      child: BlocProvider.value(
        value: trailsBloc,
        child: RepositoryProvider.value(
          value: filePicker,
          child: MaterialApp(
            localizationsDelegates: const [Localization.delegate],
            supportedLocales: Localization.supportedLocales,
            home: Builder(
              builder: (context) => Scaffold(
                body: ElevatedButton(
                  onPressed: () => updateTrailPopup(context, trail),
                  child: const Text(updateTrailButton),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const TrailsEvent.getTrails());
  });

  setUp(() {
    id = 1;
    name = 'Test Trail';
    distance = 1000;
    elevation = 100;
    url = 'https://example.com';
    description = 'Test description';
    fileId = 1;
    fileName = 'test.gpx';
    fileExtension = '.gpx';
    fileSize = 12345;
    timestamp = DateTime.now();

    row = MockQueryRow();
    trail = TrailInfo(
      row: row,
      id: id,
      name: name,
      distance: distance,
      elevation: elevation,
      url: url,
      description: description,
      fileId: fileId,
      fileName: fileName,
      fileExtension: fileExtension,
      fileSize: fileSize,
      timestamp: timestamp,
    );

    dummyTrack = TrackFile(
      id: -1,
      name: '',
      size: 0,
      hashSha1: '',
      data: Uint8List(0),
      timestamp: DateTime.parse('2000-01-01'),
    );

    databaseBloc = MockDatabaseBloc();
    trailsBloc = MockTrailsBloc();
    filePicker = MockFilePicker();

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

  group('AddOrUpdateTrailPopup tests', () {
    group('addTrailPopup tests', () {
      patrolWidgetTest('Shows add trail dialog', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
      });

      patrolWidgetTest('Fields are visible', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        expect($(Localization.current.I18nDatabase_trailName), findsOneWidget);
        expect($(Localization.current.I18nDatabase_trailGpxTrack), findsOneWidget);
        expect($(Localization.current.I18nDatabase_trailDistance), findsOneWidget);
        expect($(Localization.current.I18nDatabase_trailElevation), findsOneWidget);
        expect($(Localization.current.I18nDatabase_trailUrl), findsOneWidget);
        expect($(Localization.current.I18nDatabase_trailDescription), findsOneWidget);

        expect($(#cancelButton), findsOneWidget);
        expect($(#okButton), findsOneWidget);
      });

      patrolWidgetTest('When adding trail shows "edit race"', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        expect($(Localization.current.I18nDatabase_editRace), findsOneWidget);
      });

      patrolWidgetTest('Do not show icons when state is initial at GPX track field', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        expect(
          $(Row).$(Flexible).$(TextFormField).containing($(Localization.current.I18nDatabase_trailGpxTrack)),
          findsOneWidget,
        );
        final sizedBox =
            $(Row)
                    .$(Flexible)
                    .containing($(TextFormField))
                    .containing($(Localization.current.I18nDatabase_trailGpxTrack))
                    .$(SizedBox)
                    .evaluate()
                    .single
                    .widget
                as SizedBox;
        expect(sizedBox.height, 0);
        expect(sizedBox.width, 0);
      });

      patrolWidgetTest('Show icons when state is initialized at GPX track field', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        expect(
          $(Row).$(Flexible).$(TextFormField).containing($(Localization.current.I18nDatabase_trailGpxTrack)),
          findsOneWidget,
        );
        final iconButton =
            $(Row).containing($(Localization.current.I18nDatabase_trailGpxTrack)).$(IconButton).evaluate().single.widget
                as IconButton;
        expect((iconButton.icon as Icon).icon, (const Icon(Icons.add_location_alt_outlined)).icon);
      });

      patrolWidgetTest('Show loading indicator when state is loading track at GPX track field', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.loadingTrack(trails: []));

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        expect(
          $(Row).$(Flexible).$(TextFormField).containing($(Localization.current.I18nDatabase_trailGpxTrack)),
          findsOneWidget,
        );
        expect(
          $(Row).containing($(Localization.current.I18nDatabase_trailGpxTrack)).$(CircularProgressIndicator),
          findsOneWidget,
        );
      });

      patrolWidgetTest('Enter trail description', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDescription));
        await textField.enterText('Trail description');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name', description: 'Trail description'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Handles correct file picker when adding new trail', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));
        when(() => filePicker.pickFile()).thenAnswer(
          (_) async => PlatformFile(path: '/mnt/sdcard/0/test.gpx', name: 'test.gpx', size: 100, bytes: Uint8List(100)),
        );
        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        await $(#addTrackIconButton).tap();

        verify(
          () => trailsBloc.add(
            const TrailsEvent.loadTrack(filePath: '/mnt/sdcard/0/test.gpx'),
          ),
        ).called(1);

        // Одно поле для ввода имени трека, было пустое и заменилось на имя файла без расширения
        expect($(TextFormField).containing('test'), findsOneWidget);
        // Поле показа имени файла
        expect($(TextFormField).containing('test.gpx'), findsOneWidget);
      });

      patrolWidgetTest('Handles file picker when adding two files', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));
        when(() => filePicker.pickFile()).thenAnswer(
          (_) async => PlatformFile(path: '/mnt/sdcard/0/test.gpx', name: 'test.gpx', size: 100, bytes: Uint8List(100)),
        );
        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        await $(#addTrackIconButton).tap();

        verify(
          () => trailsBloc.add(
            const TrailsEvent.loadTrack(filePath: '/mnt/sdcard/0/test.gpx'),
          ),
        ).called(1);

        // Одно поле для ввода имени трека, было пустое и заменилось на имя файла без расширения
        expect($(TextFormField).containing('test'), findsOneWidget);
        // Поле показа имени файла
        expect($(TextFormField).containing('test.gpx'), findsOneWidget);

        when(() => filePicker.pickFile()).thenAnswer(
          (_) async =>
              PlatformFile(path: '/mnt/sdcard/1/test2.gpx', name: 'test2.gpx', size: 100, bytes: Uint8List(100)),
        );

        await $(#addTrackIconButton).tap();

        verify(
          () => trailsBloc.add(
            const TrailsEvent.loadTrack(filePath: '/mnt/sdcard/1/test2.gpx'),
          ),
        ).called(1);

        // Одно поле для ввода имени трека, было не пустое и не заменилось на имя файла без расширения
        expect($(TextFormField).containing('test'), findsOneWidget);
        // Поле показа имени файла
        expect($(TextFormField).containing('test2.gpx'), findsOneWidget);
      });

      patrolWidgetTest('Handles file picker when adding new trail with null path file', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));
        when(() => filePicker.pickFile()).thenAnswer(
          (_) async => PlatformFile(name: 'test.gpx', size: 100, bytes: Uint8List(100)),
        );
        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        await $(#addTrackIconButton).tap();

        verifyNever(
          () => trailsBloc.add(
            any(),
          ),
        );
      });

      patrolWidgetTest('Handles file picker when adding new trail with null file', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));
        when(() => filePicker.pickFile()).thenAnswer(
          (_) async => null,
        );
        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        await $(#addTrackIconButton).tap();

        verifyNever(
          () => trailsBloc.add(
            any(),
          ),
        );
      });

      patrolWidgetTest('Submits form with valid data', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));

        when(() => filePicker.pickFile()).thenAnswer(
          (_) async => PlatformFile(path: '/mnt/sdcard/0/test.gpx', name: 'test.gpx', size: 100, bytes: Uint8List(100)),
        );

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();
        await $(#addTrackIconButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDistance));
        await textField.enterText('123');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailElevation));
        await textField.enterText('456');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailUrl));
        await textField.enterText('url.url');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDescription));
        await textField.enterText('Trail description');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(
              name: 'Trail name',
              distance: 123,
              elevation: 456,
              url: 'url.url',
              description: 'Trail description',
              filePath: '/mnt/sdcard/0/test.gpx',
            ),
          ),
        ).called(1);
      });

      patrolWidgetTest('Cancels dialog', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        await $(#cancelButton).tap();
        verifyNever(() => trailsBloc.add(any()));
        expect($(ExpandedAlertDialog), findsNothing);
      });
    });

    group('updateTrailPopup tests', () {
      patrolWidgetTest('Shows update trail dialog with existing data', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(TrailsState.initialized(trails: [trail]));

        await $.pumpWidgetAndSettle(await testUpdateWidget(trail));
        await $(updateTrailButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(TextFormField).containing($(name)), findsOneWidget);
        expect($(TextFormField).containing($(fileName + fileExtension)), findsOneWidget);
        expect($(TextFormField).containing($(distance.toString())), findsOneWidget);
        expect($(TextFormField).containing($(elevation.toString())), findsOneWidget);
        expect($(TextFormField).containing($(url)), findsOneWidget);
        expect($(TextFormField).containing($(description)), findsOneWidget);
        expect($(#cancelButton), findsOneWidget);
      });

      patrolWidgetTest('Emit "dummy" track when trail has track', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(
          TrailsState.initialized(trails: [trail]),
        );
        await $.pumpWidgetAndSettle(await testUpdateWidget(trail));
        await $(updateTrailButton).tap();

        verify(
          () => trailsBloc.add(
            TrailsEvent.emitTrack(
              track: dummyTrack,
            ),
          ),
        ).called(1);
      });

      patrolWidgetTest('Handles correct file picker when updating trail', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(
          TrailsState.initialized(trails: [trail]),
        );
        when(() => filePicker.pickFile()).thenAnswer(
          (_) async => PlatformFile(path: '/mnt/sdcard/0/test.gpx', name: 'test.gpx', size: 100, bytes: Uint8List(100)),
        );
        await $.pumpWidgetAndSettle(await testUpdateWidget(trail));
        await $(updateTrailButton).tap();

        await $(#addTrackIconButton).tap();

        verify(
          () => trailsBloc.add(
            const TrailsEvent.loadTrack(filePath: '/mnt/sdcard/0/test.gpx'),
          ),
        ).called(1);

        // Одно поле для ввода имени трека, было не пустое и не заменилось на имя файла без расширения
        expect($(TextFormField).containing('test'), findsNothing);
        expect($(TextFormField).containing(name), findsOneWidget);
        // Поле показа имени файла
        expect($(TextFormField).containing('test.gpx'), findsOneWidget);
      });

      patrolWidgetTest('Handles track removal', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(
          TrailsState.initialized(
            trails: [trail],
            track: dummyTrack,
          ),
        );

        await $.pumpWidgetAndSettle(await testUpdateWidget(trail));
        await $(updateTrailButton).tap();

        expect($(TextFormField).containing($(fileName + fileExtension)), findsOneWidget);

        await $(#removeTrackIconButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        verify(
          () => trailsBloc.add(const TrailsEvent.unloadTrack()),
        ).called(1);

        expect($(TextFormField).containing($(fileName + fileExtension)), findsNothing);
      });

      patrolWidgetTest('Updates trail with new data', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initialized(trails: []));

        await $.pumpWidgetAndSettle(await testUpdateWidget(trail));
        await $(updateTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDistance));
        await textField.enterText('123');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailElevation));
        await textField.enterText('456');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailUrl));
        await textField.enterText('url.url');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDescription));
        await textField.enterText('Trail description');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            TrailsEvent.updateTrail(
              id: id,
              name: 'Trail name',
              distance: 123,
              elevation: 456,
              url: 'url.url',
              description: 'Trail description',
              fileId: fileId,
            ),
          ),
        ).called(1);
      });
    });

    group('Form validation tests', () {
      patrolWidgetTest('Validates when entering empty trail name', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        final textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('');
        await $(#okButton).tap();

        expect($(Localization.current.I18nDatabase_enterTrailName), findsOneWidget);
        expect($(ExpandedAlertDialog), findsOneWidget);
      });

      patrolWidgetTest('Validates when entering correct trail name', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        final textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');
        await $(#okButton).tap();

        expect($(Localization.current.I18nDatabase_enterTrailName), findsNothing);
        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering empty trail distance', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDistance));
        await textField.enterText('');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering correct trail distance', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDistance));
        await textField.enterText('1000');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name', distance: 1000),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering incorrect trail distance', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDistance));
        await textField.enterText('Trail distance');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(Localization.current.I18nDatabase_incorrectTrailDistance), findsOneWidget);

        verifyNever(
          () => trailsBloc.add(any()),
        );
      });

      patrolWidgetTest('Validates when entering not positive trail distance', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailDistance));
        await textField.enterText('-1');
        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(Localization.current.I18nDatabase_incorrectTrailDistance), findsOneWidget);

        verifyNever(
          () => trailsBloc.add(any()),
        );

        await textField.enterText('0');
        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(Localization.current.I18nDatabase_incorrectTrailDistance), findsOneWidget);

        verifyNever(
          () => trailsBloc.add(any()),
        );
      });

      patrolWidgetTest('Validates when entering empty trail elevation', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailElevation));
        await textField.enterText('');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering correct trail elevation', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailElevation));
        await textField.enterText('1000');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name', elevation: 1000),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering incorrect trail elevation', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailElevation));
        await textField.enterText('Trail elevation');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(Localization.current.I18nDatabase_incorrectTrailElevation), findsOneWidget);

        verifyNever(
          () => trailsBloc.add(any()),
        );
      });

      patrolWidgetTest('Validates when entering empty trail url', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailUrl));
        await textField.enterText('');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering correct trail url', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailUrl));
        await textField.enterText('url.url');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);

        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name', url: 'url.url'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when entering incorrect trail url', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(const TrailsState.initial());

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        var textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailUrl));
        await textField.enterText('Trail url');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(Localization.current.I18nDatabase_incorrectTrailUrl), findsOneWidget);

        verifyNever(
          () => trailsBloc.add(any()),
        );
      });

      patrolWidgetTest('Validates when uploading file size is under limit', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(
          TrailsState.initialized(
            trails: [],
            track: TrackFile(
              id: -1,
              name: '',
              size: uploadMaxSize - 1,
              hashSha1: '',
              data: Uint8List(0),
              timestamp: DateTime.now(),
            ),
          ),
        );

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        final iconButton =
            $(Row).containing($(Localization.current.I18nDatabase_trailGpxTrack)).$(IconButton).evaluate().single.widget
                as IconButton;
        expect((iconButton.icon as Icon).icon, (const Icon(Icons.delete)).icon);

        final textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsNothing);
        verify(
          () => trailsBloc.add(
            const TrailsEvent.addTrail(name: 'Trail name'),
          ),
        ).called(1);
      });

      patrolWidgetTest('Validates when uploading file size is above limit', (PatrolTester $) async {
        when(() => trailsBloc.state).thenReturn(
          TrailsState.initialized(
            trails: [],
            track: TrackFile(
              id: -1,
              name: '',
              size: uploadMaxSize + 1,
              hashSha1: '',
              data: Uint8List(0),
              timestamp: DateTime.now(),
            ),
          ),
        );

        await $.pumpWidgetAndSettle(await testAddWidget());
        await $(addTrailButton).tap();

        final iconButton =
            $(Row).containing($(Localization.current.I18nDatabase_trailGpxTrack)).$(IconButton).evaluate().single.widget
                as IconButton;
        expect((iconButton.icon as Icon).icon, (const Icon(Icons.delete)).icon);

        final textField = $(TextFormField).containing($(Localization.current.I18nDatabase_trailName));
        await textField.enterText('Trail name');

        await $(#okButton).tap();

        expect($(ExpandedAlertDialog), findsOneWidget);
        expect($(Localization.current.I18nDatabase_uploadLimit(uploadMaxSize / 1024 / 1024)), findsOneWidget);
        verifyNever(
          () => trailsBloc.add(any()),
        );
      });
    });
  });
}
