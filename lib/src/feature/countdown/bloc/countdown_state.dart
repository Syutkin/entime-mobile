part of 'countdown_bloc.dart';

@freezed
class CountdownState with _$CountdownState {
  const factory CountdownState.initial() = _CountdownInitialState;

  const factory CountdownState.working({
    required Tick tick,
  }) = _CountdownWorkingState;
}
