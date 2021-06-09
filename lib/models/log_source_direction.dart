import 'package:flutter/foundation.dart';

enum LogSourceDirection {
  In,
  Out,
  Undefined,
}

extension LogSourceDirectionString on LogSourceDirection? {
  String get toStr => describeEnum(this ?? LogSourceDirection.Undefined);
}
