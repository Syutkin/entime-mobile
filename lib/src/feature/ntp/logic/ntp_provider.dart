import 'dart:async';

import '../../../common/logger/logger.dart';
import 'ntp_client.dart';

abstract interface class INtpProvider {
  /// Get current NTP time
  Future<DateTime> now({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration});

  /// Return NTP delay in milliseconds
  Future<int> getNtpOffset({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration});

  /// Stream of NTP offsets in milliseconds that updates periodically.
  Stream<int> get offset;
}

class NtpProvider implements INtpProvider {
  NtpProvider({
    INtpClient? ntpClient,
    Duration offsetRefreshInterval = const Duration(minutes: 5),
  })  : assert(offsetRefreshInterval > Duration.zero, 'offsetRefreshInterval must be positive'),
        _ntpClient = ntpClient ?? const FlutterNtpClient(),
        _offsetRefreshInterval = offsetRefreshInterval {
    _offsetController = StreamController<int>.broadcast(
      onListen: _startOffsetUpdates,
      onCancel: _stopOffsetUpdates,
    );
  }

  final INtpClient _ntpClient;
  final Duration _offsetRefreshInterval;
  late final StreamController<int> _offsetController;
  Timer? _offsetTimer;
  bool _offsetInFlight = false;

  @override
  Stream<int> get offset => _offsetController.stream;

  @override
  Future<int> getNtpOffset({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration}) async {
    final offset = await _ntpClient.getNtpOffset(
      lookUpAddress: lookUpAddress,
      port: port,
      timeout: timeout,
      cacheDuration: cacheDuration,
    );
    return offset ~/ 1000;
  }

  @override
  Future<DateTime> now({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration}) {
    final now = _ntpClient.now(
      lookUpAddress: lookUpAddress,
      port: port,
      timeout: timeout,
      cacheDuration: cacheDuration,
    );

    return now;
  }

  void _startOffsetUpdates() {
    if (_offsetTimer != null) {
      return;
    }
    unawaited(_emitOffset());
    _offsetTimer = Timer.periodic(_offsetRefreshInterval, (_) => unawaited(_emitOffset()));
  }

  void _stopOffsetUpdates() {
    if (_offsetController.hasListener) {
      return;
    }
    _offsetTimer?.cancel();
    _offsetTimer = null;
  }

  Future<void> _emitOffset() async {
    if (_offsetInFlight) {
      return;
    }
    _offsetInFlight = true;
    try {
      final value = await getNtpOffset();
      if (!_offsetController.isClosed) {
        _offsetController.add(value);
      }
    } catch (e, st) {
      logger.e('Can not get ntp offset for stream', error: e, stackTrace: st);
    } finally {
      _offsetInFlight = false;
      _stopOffsetUpdates();
    }
  }
}
