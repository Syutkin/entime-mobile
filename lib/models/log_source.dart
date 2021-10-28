import 'package:flutter/foundation.dart';

enum LogSource {
  bluetooth,
  other,
  unknown,
}

extension LogSourceString on LogSource? {
  String get toStr => describeEnum(this ?? LogSource.unknown);
}