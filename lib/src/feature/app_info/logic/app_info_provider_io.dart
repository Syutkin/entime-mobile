import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

import 'app_info_provider.dart';

class AndroidAppInfoProvider extends IAppInfoProvider {
  AndroidAppInfoProvider(this._deviceInfo);

  final AndroidDeviceInfo _deviceInfo;
  final List<String> _supportedAbis = ['armeabi-v7a', 'arm64-v8a'];

  String? get abi {
    for (final deviceSupportedAbi in _deviceInfo.supportedAbis) {
      for (final abi in _supportedAbis) {
        if (deviceSupportedAbi == abi) {
          return deviceSupportedAbi;
        }
      }
    }
    return null;
  }

  List<String?> get deviceSupported32BitAbis => _deviceInfo.supported32BitAbis;

  List<String?> get deviceSupported64BitAbis => _deviceInfo.supported64BitAbis;

  List<String?> get deviceSupportedAbis => _deviceInfo.supportedAbis;
}

Future<IAppInfoProvider> createAppInfoProvider({
  DeviceInfoPlugin? deviceInfoPlugin,
  bool? isAndroidOverride,
}) async {
  final isAndroid = isAndroidOverride ?? Platform.isAndroid;
  if (!isAndroid) {
    return DefaultAppInfoProvider();
  }

  final plugin = deviceInfoPlugin ?? DeviceInfoPlugin();
  final deviceInfo = await plugin.androidInfo;
  return AndroidAppInfoProvider(deviceInfo);
}
