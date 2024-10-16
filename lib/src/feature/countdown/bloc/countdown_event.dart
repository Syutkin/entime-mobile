part of 'countdown_bloc.dart';

@freezed
class CountdownEvent with _$CountdownEvent {
  const factory CountdownEvent.tick(Tick tick) = _TickEvent;
  const factory CountdownEvent.start({required int stageId}) = _TickInit;
}
