part of 'countdown_bloc.dart';

@freezed
sealed class CountdownState with _$CountdownState {
  const factory CountdownState.initial() = CountdownStateInitial;

  const factory CountdownState.working({required Tick tick}) = CountdownStateWorking;
}
