import 'package:flutter/foundation.dart';

enum LogSourceDirection {
  input,
  output,
  undefined,
}

extension LogSourceDirectionString on LogSourceDirection? {
  String get toStr => describeEnum(this ?? LogSourceDirection.undefined);
}
