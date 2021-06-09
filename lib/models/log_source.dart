import 'package:flutter/foundation.dart';

enum LogSource {
  Bluetooth,
  Other,
  Unknown,
}

extension LogSourceString on LogSource {
  String get toStr => describeEnum(this ?? LogSource.Unknown);
}