import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/bluetooth/bloc/bluetooth_bloc.dart';
import 'package:entime/src/feature/bluetooth/bloc/bluetooth_discovery_cubit.dart';
import 'package:entime/src/feature/bluetooth/logic/bluetooth_provider.dart';
import 'package:entime/src/feature/bluetooth/widget/select_device_screen.dart';
import 'package:entime/src/feature/countdown/bloc/countdown_bloc.dart';
import 'package:entime/src/feature/database/database.dart';
import 'package:entime/src/feature/home/model/home_menu_button.dart';
import 'package:entime/src/feature/home/widget/menu_button.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/tab/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockDatabaseBloc extends MockBloc<DatabaseEvent, DatabaseState> implements DatabaseBloc {}

class MockSettingsCubit extends MockCubit<AppSettings> implements SettingsCubit {}

class MockBluetoothBloc extends MockBloc<BluetoothEvent, BluetoothBlocState> implements BluetoothBloc {}

class MockBluetoothDiscoveryCubit extends MockCubit<BluetoothDiscoveryState> implements BluetoothDiscoveryCubit {}

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState> implements CountdownBloc {}

class MockBluetoothProvider extends Mock implements IBluetoothProvider {}

void main() {
  late DatabaseBloc databaseBloc;
  late SettingsCubit settingsCubit;
  late AppSettings settings;
  late BluetoothBloc btBloc;
  late BluetoothDiscoveryCubit bdCubit;
  late CountdownBloc countdownBloc;
  late MockBluetoothProvider bluetoothProvider;
  late StreamController<bool> scanningController;
  late StreamController<List<ScanResult>> resultsController;

  Widget testWidget(AppTab activeTab) {
    return BlocProvider.value(
      value: databaseBloc,
      child: BlocProvider.value(
        value: settingsCubit,
        child: BlocProvider.value(
          value: btBloc,
          child: BlocProvider.value(
            value: bdCubit,
            child: BlocProvider.value(
              value: countdownBloc,
              child: MaterialApp(
                localizationsDelegates: const [Localization.delegate],
                supportedLocales: Localization.supportedLocales,
                home: MenuButton(activeTab: activeTab),
              ),
            ),
          ),
        ),
      ),
    );
  }

  setUpAll(() {
    registerFallbackValue(const DatabaseEvent.getRaces());
    registerFallbackValue(const AppSettings.defaults());
  });

  setUp(() {
    databaseBloc = MockDatabaseBloc();
    settingsCubit = MockSettingsCubit();
    btBloc = MockBluetoothBloc();
    bdCubit = MockBluetoothDiscoveryCubit();
    countdownBloc = MockCountdownBloc();
    bluetoothProvider = MockBluetoothProvider();
    scanningController = StreamController<bool>.broadcast();
    resultsController = StreamController<List<ScanResult>>.broadcast();

    when(() => bluetoothProvider.isScanning).thenAnswer((_) => scanningController.stream);
    when(() => bluetoothProvider.scanResultsAggregated()).thenAnswer((_) => resultsController.stream);
    when(() => bluetoothProvider.requestPermissions()).thenAnswer((_) async {});
    when(() => bluetoothProvider.startScan()).thenAnswer((_) async {});
    when(() => bluetoothProvider.stopScan()).thenAnswer((_) async {});
    when(() => btBloc.bluetoothProvider).thenReturn(bluetoothProvider);
    when(() => btBloc.stream).thenAnswer((_) => const Stream<BluetoothBlocState>.empty());
    when(() => bdCubit.startDiscovery()).thenAnswer((_) async {});
    when(() => bdCubit.state).thenReturn(const BluetoothDiscoveryState.initial());
    settings = const AppSettings.defaults();
    when(() => settingsCubit.state).thenReturn(settings);
    when(() => settingsCubit.update(any())).thenAnswer((_) => Future.value());
    when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
    when(() => databaseBloc.state).thenReturn(
      const DatabaseState(
        races: [],
        stages: [],
        categories: [],
        riders: [],
        participants: [],
        finishes: [],
        numbersOnTrace: [],
        race: Race(id: 1, name: 'race', isDeleted: false),
        stage: Stage(id: 1, raceId: 1, name: 'stage', isActive: true, isDeleted: false),
      ),
    );
  });

  tearDown(() async {
    await scanningController.close();
    await resultsController.close();
  });

  group('MenuButton tests', () {
    group('Tests for init page', () {
      patrolWidgetTest('Initial build for init page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.init));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        expect($(PopupMenuItem<HomeMenuButton>), findsOneWidget);
        expect($(Localization.current.I18nHome_bluetooth), findsOneWidget);
      });

      patrolWidgetTest('Tap on bluetooth button', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.init));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_bluetooth).tap();
        expect($(SelectDeviceScreen), findsOneWidget);
      });
    });

    group('Tests for start page', () {
      patrolWidgetTest('Initial build for start page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        expect($(PopupMenuItem<HomeMenuButton>), findsNWidgets(5));
        expect($(Localization.current.I18nHome_addRacer), findsOneWidget);
        expect($(Localization.current.I18nHome_countdownPage), findsOneWidget);
        expect($(Localization.current.I18nHome_countdown), findsOneWidget);
        expect($(Localization.current.I18nHome_fab), findsOneWidget);
        expect($(Localization.current.I18nCore_share), findsOneWidget);
      });

      patrolWidgetTest('Tap on add racer button, show add racer popup', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_addRacer).tap();
        expect($(Localization.current.I18nStart_addParticipant), findsOneWidget);
      });

      patrolWidgetTest('Tap on disabled add racer button, because stage not selected', ($) async {
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
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_addRacer).tap();
        expect($(Localization.current.I18nHome_addRacer), findsOneWidget);
        expect($(Localization.current.I18nStart_addParticipant), findsNothing);
      });

      // I can't provide context with CountdownBloc:
      // Error: Could not find the correct Provider<CountdownBloc> above this BlocBuilder<CountdownBloc,CountdownState> Widget

      // patrolWidgetTest('Tap on countdown page button', (PatrolTester $) async {
      //   await $.pumpWidgetAndSettle(testWidget(AppTab.start));
      //   await $(PopupMenuButton<HomeMenuButton>).tap();
      //   await $(Localization.current.I18nHome_countdownPage).tap();
      // });

      patrolWidgetTest('Tap on disabled countdown page button, because stage not selected', ($) async {
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
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_countdownPage).tap();
        expect($(Localization.current.I18nHome_countdownPage), findsOneWidget);
        expect($(AppBar).$(Localization.current.I18nCountdown_countdown), findsNothing);
      });

      patrolWidgetTest('Tap on countdown button', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_countdown).tap();
        verify(() => settingsCubit.update(settings.copyWith(countdown: !settings.countdown))).called(1);
      });

      patrolWidgetTest('Tap on fab button at start page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_fab).tap();
        verify(() => settingsCubit.update(settings.copyWith(startFab: !settings.startFab))).called(1);
      });

      patrolWidgetTest('Tap on share button at start page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nCore_share).tap();
        verify(
          () => databaseBloc.add(
            any(
              that: isA<DatabaseEventShareStart>().having(
                (event) => event.starttimeName,
                'starttimeName',
                Localization.current.I18nHome_start,
              ),
            ),
          ),
        ).called(1);
      });

      patrolWidgetTest('Tap on disabled share button at start page, because stage not selected', (
        $,
      ) async {
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
        await $.pumpWidgetAndSettle(testWidget(AppTab.start));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nCore_share).tap();
        verifyNever(() => databaseBloc.add(any()));
      });
    });

    group('Tests for finish page', () {
      patrolWidgetTest('Initial build for finish page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.finish));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        expect($(PopupMenuItem<HomeMenuButton>), findsNWidgets(4));
        expect($(Localization.current.I18nHome_showFinishDifference), findsOneWidget);
        expect($(Localization.current.I18nHome_showColorFinishDifference), findsOneWidget);
        expect($(Localization.current.I18nHome_fab), findsOneWidget);
        expect($(Localization.current.I18nCore_share), findsOneWidget);
      });

      patrolWidgetTest('Tap on showColorFinishDifference button', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.finish));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_showColorFinishDifference).tap();
        verify(
          () => settingsCubit.update(settings.copyWith(showColorFinishDifference: !settings.showColorFinishDifference)),
        ).called(1);
      });

      patrolWidgetTest('Tap on showFinishDifference button', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.finish));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_showFinishDifference).tap();
        verify(
          () => settingsCubit.update(settings.copyWith(showFinishDifference: !settings.showFinishDifference)),
        ).called(1);
      });

      patrolWidgetTest('Tap on fab button at finish page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.finish));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nHome_fab).tap();
        verify(() => settingsCubit.update(settings.copyWith(finishFab: !settings.finishFab))).called(1);
      });

      patrolWidgetTest('Tap on share button at finish page', ($) async {
        await $.pumpWidgetAndSettle(testWidget(AppTab.finish));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nCore_share).tap();
        verify(
          () => databaseBloc.add(
            any(
              that: isA<DatabaseEventShareFinish>().having(
                (event) => event.finishtimeName,
                'starttimeName',
                Localization.current.I18nHome_finish,
              ),
            ),
          ),
        ).called(1);
      });

      patrolWidgetTest('Tap on disabled share button at finish page, because stage not selected', (
        $,
      ) async {
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
        await $.pumpWidgetAndSettle(testWidget(AppTab.finish));
        await $(PopupMenuButton<HomeMenuButton>).tap();
        await $(Localization.current.I18nCore_share).tap();
        verifyNever(() => databaseBloc.add(any()));
      });
    });
  });
}
