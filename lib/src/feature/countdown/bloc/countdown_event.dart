part of 'countdown_bloc.dart';

@freezed
sealed class CountdownEvent with _$CountdownEvent {
  const factory CountdownEvent.tick(Tick tick) = _Tick;
  const factory CountdownEvent.start({required int stageId}) = _Start;
  const factory CountdownEvent.beep() = _Beep;
  const factory CountdownEvent.callParticipant({required int stageId}) = _CallParticipant;
}
