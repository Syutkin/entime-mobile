part of 'countdown_bloc.dart';

@freezed
class CountdownEvent with _$CountdownEvent {
  const factory CountdownEvent.tick({required String text}) = TickEvent;
  const factory CountdownEvent.reload() = TickInit;
}
