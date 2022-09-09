part of 'countdown_bloc.dart';

@freezed
class CountdownEvent with _$CountdownEvent {
  const factory CountdownEvent.tick({required String text, DateTime? nextStartTime}) = _TickEvent;
  const factory CountdownEvent.start({required int stageId}) = _TickInit;
}
