part of 'connectivity_bloc.dart';

@freezed
sealed class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.emit({required bool isConnected}) = _Emit;
}
