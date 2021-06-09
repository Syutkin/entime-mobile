import 'package:flutter/foundation.dart';

enum LogLevel {
  Error,
  Warning,
  Information,
  Debug,
  Verbose,
}

extension LogLevelString on LogLevel {
  String get toStr => describeEnum(this);
}
