import 'dart:io';

import 'package:flutter/foundation.dart';

abstract interface class PlatformInfo {
  bool get isAndroid;
  bool get isIOS;
  bool get isMacOS;
  bool get isWindows;
  bool get isLinux;
  bool get isFuchsia;
  bool get isWeb;
}

class DefaultPlatformInfo implements PlatformInfo {
  @override
  bool get isAndroid => Platform.isAndroid;

  @override
  bool get isIOS => Platform.isIOS;

  @override
  bool get isMacOS => Platform.isMacOS;

  @override
  bool get isWindows => Platform.isWindows;

  @override
  bool get isLinux => Platform.isLinux;

  @override
  bool get isFuchsia => Platform.isFuchsia;

  @override
  bool get isWeb => kIsWeb;
}
