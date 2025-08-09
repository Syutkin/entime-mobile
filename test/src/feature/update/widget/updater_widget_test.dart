import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockUpdateBloc extends MockBloc<UpdateEvent, UpdateState> implements UpdateBloc {}

void main() {
  late UpdateBloc updateBloc;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: BlocProvider.value(value: updateBloc, child: const Updater()),
      ),
    );
  }

  setUpAll(() {
    updateBloc = MockUpdateBloc();
  });

  group('Updater widget tests', () {
    patrolWidgetTest('Initial state - shows check for updates', (PatrolTester $) async {
      when(() => updateBloc.state).thenReturn(const UpdateState.initial());

      await $.pumpWidgetAndSettle(testWidget());

      expect($(ListTile), findsOneWidget);
      expect($(Localization.current.I18nUpdate_checkForUpdates), findsOneWidget);
    });

    patrolWidgetTest('Initial state - tap triggers checkUpdate event', (PatrolTester $) async {
      when(() => updateBloc.state).thenReturn(const UpdateState.initial());

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();

      verify(() => updateBloc.add(const UpdateEvent.checkUpdate())).called(1);
    });

    patrolWidgetTest('Update available state - shows update version', (PatrolTester $) async {
      const version = '1.2.3';
      when(() => updateBloc.state).thenReturn(const UpdateState.updateAvailable(version: version));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(ListTile), findsOneWidget);
      expect($(Localization.current.I18nUpdate_updateToVersion(version)), findsOneWidget);
    });

    patrolWidgetTest('Update available state - tap triggers downloadUpdate event', (PatrolTester $) async {
      const version = '1.2.3';
      when(() => updateBloc.state).thenReturn(const UpdateState.updateAvailable(version: version));

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();

      verify(() => updateBloc.add(const UpdateEvent.downloadUpdate())).called(1);
    });

    patrolWidgetTest('Connecting state - shows progress indicator and text', (PatrolTester $) async {
      when(() => updateBloc.state).thenReturn(const UpdateState.connecting());

      await $.pumpWidget(testWidget());
      await $.pump(); // Один фрейм для рендеринга

      expect($(ListTile), findsOneWidget);
      expect($(LinearProgressIndicator), findsOneWidget);
      expect($(Localization.current.I18nUpdate_connecting), findsOneWidget);
      expect($(ListTile).$(Stack), findsOneWidget);
    });

    patrolWidgetTest('Downloading state - shows progress and download info', (PatrolTester $) async {
      const bytes = 1024;
      const total = 2048;
      when(() => updateBloc.state).thenReturn(const UpdateState.downloading(bytes: bytes, total: total));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(ListTile), findsOneWidget);
      expect($(LinearProgressIndicator), findsOneWidget);
      expect($(ListTile).$(Stack), findsOneWidget);

      // Проверяем, что отображается правильный текст с размерами файлов
      final progressIndicator = $.tester.widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator));
      expect(progressIndicator.value, equals(bytes / total));
    });

    patrolWidgetTest('Download error state - shows error message', (PatrolTester $) async {
      const errorMessage = 'Download failed';
      when(() => updateBloc.state).thenReturn(const UpdateState.downloadError(error: errorMessage));

      await $.pumpWidgetAndSettle(testWidget());

      expect($(ListTile), findsOneWidget);
      expect($(errorMessage), findsOneWidget);
    });

    patrolWidgetTest('Download error state - tap triggers checkUpdate event', (PatrolTester $) async {
      const errorMessage = 'Download failed';
      when(() => updateBloc.state).thenReturn(const UpdateState.downloadError(error: errorMessage));

      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();

      verify(() => updateBloc.add(const UpdateEvent.checkUpdate())).called(1);
    });

    patrolWidgetTest('All states use correct content padding', (PatrolTester $) async {
      const expectedPadding = EdgeInsets.fromLTRB(24, 0, 8, 0);

      // Test initial state
      when(() => updateBloc.state).thenReturn(const UpdateState.initial());
      await $.pumpWidgetAndSettle(testWidget());
      var listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.contentPadding, equals(expectedPadding));

      // Test update available state
      when(() => updateBloc.state).thenReturn(const UpdateState.updateAvailable(version: '1.0.0'));
      await $.pumpWidgetAndSettle(testWidget());
      listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.contentPadding, equals(expectedPadding));

      // Test download error state
      when(() => updateBloc.state).thenReturn(const UpdateState.downloadError(error: 'error'));
      await $.pumpWidgetAndSettle(testWidget());
      listTile = $.tester.widget<ListTile>(find.byType(ListTile));
      expect(listTile.contentPadding, equals(expectedPadding));
    });
  });
}
