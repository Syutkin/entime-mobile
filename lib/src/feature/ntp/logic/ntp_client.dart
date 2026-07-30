import 'package:flutter_ntp/flutter_ntp.dart';

abstract interface class INtpClient {
  /// Return NTP delay
  Future<Duration> getNtpOffset({
    NtpServer server = NtpServer.google,
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
  });

  /// Get current NTP time
  Future<DateTime> now({
    NtpServer server = NtpServer.google,
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
    bool forceRefresh = false,
    bool allowFallback = false,
  });
}

class FlutterNtpClient implements INtpClient {
  const FlutterNtpClient();

  @override
  Future<Duration> getNtpOffset({
    NtpServer server = NtpServer.google,
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
  }) {
    // FlutterNTP.sync() always refreshes the offset
    return FlutterNTP.sync(
      server: server,
      lookUpAddress: lookUpAddress,
      port: port ?? 123,
      timeout: timeout ?? const Duration(seconds: 5),
    );
  }

  @override
  Future<DateTime> now({
    NtpServer server = NtpServer.google,
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
    bool forceRefresh = false,
    bool allowFallback = false,
  }) {
    return FlutterNTP.now(
      server: server,
      lookUpAddress: lookUpAddress,
      port: port ?? 123,
      timeout: timeout ?? const Duration(seconds: 5),
      cacheDuration: cacheDuration ?? const Duration(hours: 1),
      forceRefresh: forceRefresh,
      allowFallback: allowFallback,
    );
  }
}
