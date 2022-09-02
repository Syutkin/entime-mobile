part of 'countdown_bloc.dart';

@freezed
class CountdownState with _$CountdownState {
  const factory CountdownState.initial() = CountdownInitialState;

  const factory CountdownState.working(
      {required String text, String? nextStartTime,}) = CountdownWorkingState;

}
