part of 'connectivity_bloc.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.state({required bool isConnected}) = _ConnectivityState;
}
