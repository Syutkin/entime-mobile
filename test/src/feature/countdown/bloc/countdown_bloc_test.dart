import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/audio/audio.dart';
import 'package:entime/src/feature/countdown/bloc/countdown_bloc.dart';
import 'package:entime/src/feature/countdown/logic/countdown_at_start.dart';
import 'package:entime/src/feature/countdown/model/tick.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

class MockIAudioController extends Mock implements IAudioController {}

class MockCountdownAtStart extends Mock implements CountdownAtStart {}

void main() {
  late IAudioController audioController;
  late CountdownAtStart countdownAtStart;
  late int stageId;
  late int second;
  late String text;
  late Tick tick;
  late List<Tick> ticks;

  setUp(() {
    audioController = MockIAudioController();
    countdownAtStart = MockCountdownAtStart();
    stageId = 1;
    second = 0;
    text = 'text';

    tick = Tick(second: second, text: text);
    ticks = <Tick>[];

    when(() => countdownAtStart.start(stageId))
        .thenAnswer((_) => Future.value());

    when(() => countdownAtStart.ticks)
        .thenAnswer((_) => BehaviorSubject<Tick>());

    when(() => audioController.beep()).thenAnswer((_) => Future.value());

    when(
      () => audioController.callParticipant(
        time: any(named: 'time'),
        stageId: stageId,
      ),
    ).thenAnswer((_) => Future.value(''));
  });

  group(
    'CountdownBloc tests',
    () {
      test(
        'Initial state when stage not selected',
        () async {
          final bloc = CountdownBloc(
            audioController: audioController,
            countdown: countdownAtStart,
            stageId: -1,
          );
          expect(bloc.state, const CountdownState.initial());
        },
      );

      blocTest<CountdownBloc, CountdownState>(
        'State changes when ConnectivityProvider emit new state',
        setUp: () {
          when(() => countdownAtStart.ticks)
              .thenAnswer((_) => BehaviorSubject<Tick>.seeded(tick));
        },
        build: () => CountdownBloc(
          audioController: audioController,
          countdown: countdownAtStart,
          stageId: stageId,
        ),
        expect: () => [
          CountdownState.working(tick: tick),
        ],
      );

      blocTest<CountdownBloc, CountdownState>(
        'ConnectivityProvider states emits in order',
        setUp: () {
          for (var i = 0; i < 5; i++) {
            ticks.add(Tick(second: i, text: text));
          }
          when(() => countdownAtStart.ticks).thenAnswer(
            (_) =>
                BehaviorSubject<Tick>()..addStream(Stream.fromIterable(ticks)),
          );
        },
        build: () => CountdownBloc(
          audioController: audioController,
          countdown: countdownAtStart,
          stageId: stageId,
        ),
        expect: () => ticks.map((element) {
          return CountdownState.working(tick: element);
        }),
      );

      blocTest<CountdownBloc, CountdownState>(
        'ConnectivityProvider states emits in order and netStartTime not null',
        setUp: () {
          for (var i = 0; i < 5; i++) {
            ticks.add(
              Tick(
                second: i,
                text: text,
                nextStartTime: DateTime.now(),
                number: i,
              ),
            );
          }
          when(() => countdownAtStart.ticks).thenAnswer(
            (_) =>
                BehaviorSubject<Tick>()..addStream(Stream.fromIterable(ticks)),
          );
        },
        build: () => CountdownBloc(
          audioController: audioController,
          countdown: countdownAtStart,
          stageId: stageId,
        ),
        expect: () => ticks.map((element) {
          return CountdownState.working(tick: element);
        }),
      );

      blocTest<CountdownBloc, CountdownState>(
        'Add "start" event',
        act: (bloc) {
          bloc.add(CountdownEvent.start(stageId: stageId));
        },
        build: () => CountdownBloc(
          audioController: audioController,
          countdown: countdownAtStart,
          stageId: -1,
        ),
        verify: (_) {
          verify(() => countdownAtStart.start(stageId)).called(1);
        },
      );

      blocTest<CountdownBloc, CountdownState>(
        'Add "beep" event',
        act: (bloc) {
          bloc.add(const CountdownEvent.beep());
        },
        build: () => CountdownBloc(
          audioController: audioController,
          countdown: countdownAtStart,
          stageId: -1,
        ),
        verify: (_) {
          verify(() => audioController.beep()).called(1);
        },
      );

      blocTest<CountdownBloc, CountdownState>(
        'Add "callParticipant" event',
        act: (bloc) {
          bloc.add(CountdownEvent.callParticipant(stageId: stageId));
        },
        build: () => CountdownBloc(
          audioController: audioController,
          countdown: countdownAtStart,
          stageId: stageId,
        ),
        verify: (_) {
          verify(
            () => audioController.callParticipant(
              time: any(named: 'time'),
              stageId: stageId,
            ),
          ).called(1);
        },
      );
    },
  );
}
