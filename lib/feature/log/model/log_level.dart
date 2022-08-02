import 'package:flutter/foundation.dart';

enum LogLevel {
  error,
  warning,
  information,
  debug,
  verbose,
}

extension LogLevelString on LogLevel {
  String get toStr => describeEnum(this);
}
