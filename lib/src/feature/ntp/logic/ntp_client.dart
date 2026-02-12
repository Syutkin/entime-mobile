import 'package:flutter_ntp/flutter_ntp.dart';

abstract interface class INtpClient {
  /// Return NTP delay in microseconds
  Future<int> getNtpOffset({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration});

  /// Get current NTP time
  Future<DateTime> now({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration});
}

class FlutterNtpClient implements INtpClient {
  const FlutterNtpClient();

  @override
  Future<int> getNtpOffset({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration}) {
    return FlutterNTP.getNtpOffset(
      lookUpAddress: lookUpAddress,
      port: port,
      timeout: timeout ?? const Duration(seconds: 5),
      cacheDuration: cacheDuration ?? const Duration(hours: 1),
    );
  }

  @override
  Future<DateTime> now({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration}) {
    return FlutterNTP.now(
      lookUpAddress: lookUpAddress,
      port: port,
      timeout: timeout ?? const Duration(seconds: 5),
      cacheDuration: cacheDuration ?? const Duration(hours: 1),
    );
  }
}
