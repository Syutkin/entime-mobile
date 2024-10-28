part of 'countdown_bloc.dart';

@freezed
class CountdownEvent with _$CountdownEvent {
  const factory CountdownEvent.tick(Tick tick) = _CountdownTick;
  const factory CountdownEvent.start({required int stageId}) = _CountdownStart;
  const factory CountdownEvent.beep() = _CountdownBeep;
  const factory CountdownEvent.callParticipant({required int stageId}) = _CountdownCallParticipant;
}
