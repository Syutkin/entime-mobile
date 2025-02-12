import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/connectivity/bloc/connectivity_bloc.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/ntp/widget/ntp_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockConnectivityBloc extends MockBloc<ConnectivityEvent, ConnectivityState> implements ConnectivityBloc {}

class MockNtpBloc extends MockBloc<NtpEvent, NtpState> implements NtpBloc {}

void main() {
  late ConnectivityBloc connectivityBloc;
  late NtpBloc ntpBloc;

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(
        child: BlocProvider.value(
          value: connectivityBloc,
          child: BlocProvider.value(value: ntpBloc, child: const NtpTile()),
        ),
      ),
    );
  }

  setUp(() {
    connectivityBloc = MockConnectivityBloc();
    ntpBloc = MockNtpBloc();
  });

  group('Test NtpTile', () {
    patrolWidgetTest('No internet connection, ListTile disabled', (PatrolTester $) async {
      when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: false));
      when(() => ntpBloc.state).thenReturn(const NtpState.initial(0));
      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nNtp_ntpOffset), findsOneWidget);
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, false);
    });

    patrolWidgetTest('Internet enabled, initial ntp state', (PatrolTester $) async {
      when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: true));
      when(() => ntpBloc.state).thenReturn(const NtpState.initial(0));
      await $.pumpWidgetAndSettle(testWidget());
      expect(($(ListTile).evaluate().single.widget as ListTile).enabled, true);
      expect($(Localization.current.I18nNtp_sync), findsOneWidget);
    });
    patrolWidgetTest('Sync in progress', (PatrolTester $) async {
      when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: true));
      when(() => ntpBloc.state).thenReturn(const NtpState.loading(0));
      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nNtp_syncing), findsOneWidget);
    });
    patrolWidgetTest('Sync error', (PatrolTester $) async {
      when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: true));
      when(() => ntpBloc.state).thenReturn(const NtpState.failure(0));
      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nNtp_syncError), findsOneWidget);
    });
    patrolWidgetTest('Ntp synced', (PatrolTester $) async {
      const offset = 111;
      when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: true));
      when(() => ntpBloc.state).thenReturn(const NtpState.success(offset));
      await $.pumpWidgetAndSettle(testWidget());
      expect($(Localization.current.I18nNtp_offsetInMilliseconds(offset)), findsOneWidget);
    });
    patrolWidgetTest('Press sync', (PatrolTester $) async {
      when(() => connectivityBloc.state).thenReturn(const ConnectivityState.state(isConnected: true));
      when(() => ntpBloc.state).thenReturn(const NtpState.initial(0));
      await $.pumpWidgetAndSettle(testWidget());
      await $(ListTile).tap();
      await $.pumpAndSettle();
      await $(IconButton).tap();
      await $.pumpAndSettle();
      verify(() => ntpBloc.add(const NtpEvent.getNtpOffset())).called(2);
    });
  });
}
