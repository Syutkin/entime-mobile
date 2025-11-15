import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/countdown/countdown.dart';
import 'package:entime/src/feature/countdown/model/tick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockCountdownBloc extends MockBloc<CountdownEvent, CountdownState> implements CountdownBloc {}

void main() {
  late CountdownBloc countdownBloc;
  late int second;
  late String text;
  late int number;
  late Tick tick;

  Future<Widget> testWidget() async {
    await initializeDateFormatting();
    return MaterialApp(
      localizationsDelegates: const [Localization.delegate],
      supportedLocales: Localization.supportedLocales,
      home: Material(child: BlocProvider.value(value: countdownBloc, child: const CountdownPage())),
    );
  }

  setUpAll(() {
    countdownBloc = MockCountdownBloc();
  });

  setUp(() {
    second = 0;
    text = 'text';
    number = 99;

    tick = Tick(second: second, text: text, number: number);
    when(() => countdownBloc.state).thenReturn(CountdownState.working(tick: tick));
  });

  group('CountdownPage tests', () {
    patrolWidgetTest('Initial build', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());

      expect($(Localization.current.I18nCountdown_countdown), findsOneWidget);
      expect($(Center), findsOneWidget);
    });

    patrolWidgetTest('Initial bloc state', (PatrolTester $) async {
      when(() => countdownBloc.state).thenReturn(const CountdownState.initial());
      await $.pumpWidgetAndSettle(await testWidget());

      expect($(Row), findsNothing);
      expect($(Column), findsNothing);
      expect($(FittedBox), findsOneWidget);
      expect($(''), findsOneWidget);
    });

    patrolWidgetTest('Working bloc state, landscape (default for test) orientation', (PatrolTester $) async {
      await $.pumpWidgetAndSettle(await testWidget());

      expect($(Row), findsOneWidget);
      expect($(Column), findsNothing);
      expect($(text), findsOneWidget);
      expect($('$number'), findsOneWidget);
    });

    patrolWidgetTest('Working bloc state, portrait orientation', (PatrolTester $) async {
      $.tester.view.physicalSize = const Size(1024, 2400);
      await $.pumpWidgetAndSettle(await testWidget());

      expect($(Row), findsNothing);
      expect($(Column), findsOneWidget);
      expect($(text), findsOneWidget);
      expect($('$number'), findsOneWidget);
    });
  });
}
