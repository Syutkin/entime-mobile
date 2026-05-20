import 'package:entime/src/common/model/platform_info.dart';

class FakePlatformInfo implements PlatformInfo {
  FakePlatformInfo({
    this.isAndroid = false,
    this.isIOS = false,
    this.isMacOS = false,
    this.isWindows = false,
    this.isLinux = false,
    this.isFuchsia = false,
    this.isWeb = false,
  });

  @override
  final bool isAndroid;

  @override
  final bool isIOS;

  @override
  final bool isMacOS;

  @override
  final bool isWindows;

  @override
  final bool isLinux;

  @override
  final bool isFuchsia;

  @override
  final bool isWeb;
}
