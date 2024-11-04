import 'package:flutter_ntp/flutter_ntp.dart';

abstract interface class INtpProvider {
  INtpProvider(
      // {
      // String? lookUpAddress,
      // int? port,
      // Duration? timeout,
      // Duration? cacheDuration,
      // }
      ) {
    // ToDo: start offset stream
  }

  Future<DateTime> now({
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
  });

  Future<int> getNtpOffset({
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
  });

  Stream<int> get offset;
}

class NtpProvider implements INtpProvider {
  @override
  // TODO: implement offset stream
  Stream<int> get offset => throw UnimplementedError();

  @override
  Future<int> getNtpOffset({
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
  }) {
    return FlutterNTP.getNtpOffset(
      lookUpAddress: lookUpAddress,
      port: port,
      timeout: timeout ?? const Duration(seconds: 5),
      cacheDuration: cacheDuration ?? const Duration(hours: 1),
    );
  }

  @override
  Future<DateTime> now({
    String? lookUpAddress,
    int? port,
    Duration? timeout,
    Duration? cacheDuration,
  }) {
    final now = FlutterNTP.now(
      lookUpAddress: lookUpAddress,
      port: port,
      timeout: timeout,
      cacheDuration: cacheDuration ?? const Duration(hours: 1),
    );

    return now;
  }
}
