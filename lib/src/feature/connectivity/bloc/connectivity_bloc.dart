import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_bloc.freezed.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final IConnectivityProvider _connectivityProvider;
  late StreamSubscription<bool> _onConnectionSubscription;

  ConnectivityBloc(IConnectivityProvider connectivityProvider)
      : _connectivityProvider = connectivityProvider,
        super(const ConnectivityState.state(false)) {
    _onConnectionSubscription =
        _connectivityProvider.onConnectivityChanged.listen((data) {
      add(ConnectivityEvent.emit(data));
    });

    on<ConnectivityEvent>(transformer: sequential(), (event, emit) {
      event.map(emit: (value) {
        emit(ConnectivityState.state(event.isConnected));
      });
    });
  }

  @override
  Future<void> close() {
    _onConnectionSubscription.cancel();
    return super.close();
  }
}
