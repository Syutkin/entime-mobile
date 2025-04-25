part of 'connectivity_bloc.dart';

@freezed
sealed class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.state({required bool isConnected}) = State;
}
