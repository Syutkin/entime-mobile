import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/logger/logger.dart';

abstract interface class IConnectivityProvider {
  Stream<bool> get onConnectivityChanged;

  bool get isConnected;

  Future<void> dispose();
}

class ConnectivityProvider implements IConnectivityProvider {
  ConnectivityProvider._(Connectivity connectivity) : _connectivity = connectivity {
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  factory ConnectivityProvider.init(Connectivity connectivity) {
    return ConnectivityProvider._(connectivity);
  }

  final Connectivity _connectivity;

  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  // final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  bool _currentConnection = false;
  final StreamController<bool> _connectionController = BehaviorSubject()..add(false);

  @override
  Stream<bool> get onConnectivityChanged => _connectionController.stream;

  @override
  bool get isConnected => _currentConnection;

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    _connectionStatus = result;
    logger.d('Connectivity changed: $_connectionStatus');

    late bool isConnected;

    if (result.contains(ConnectivityResult.none)) {
      isConnected = false;
    } else {
      isConnected = true;
    }

    if (isConnected != _currentConnection) {
      _currentConnection = isConnected;
      _connectionController.add(_currentConnection);
    }
  }

  @override
  Future<void> dispose() async {
    await _connectivitySubscription.cancel();
    await _connectionController.close();
  }
}
