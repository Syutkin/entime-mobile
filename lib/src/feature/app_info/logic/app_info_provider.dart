import 'package:device_info_plus/device_info_plus.dart';

import '../../../constants/pubspec.yaml.g.dart';

class AppInfoProvider {
  final AndroidDeviceInfo _deviceInfo;
  final List<String> _supportedAbis = ['armeabi-v7a', 'arm64-v8a', 'x86_64'];

  AppInfoProvider._(
    AndroidDeviceInfo deviceInfo,
  ) : _deviceInfo = deviceInfo;

  static Future<AppInfoProvider> load({
    required AndroidDeviceInfo deviceInfo,
  }) async =>
      AppInfoProvider._(deviceInfo);

  // => AppInfoProvider(
  // final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  // logger.(Platform.version);
  // logger.(Platform.executable);
  // logger.(Platform.localeName);
  // logger.(Platform.localHostname);
  // logger.(Platform.numberOfProcessors);
  // logger.(Platform.operatingSystem);
  // logger.(Platform.operatingSystemVersion);
  // logger.(Platform.packageConfig);
  // logger.(Platform.resolvedExecutable);
  //
  // var build = await deviceInfoPlugin.androidInfo;
  // logger.('version.securityPatch: ${build.version.securityPatch}');
  // logger.('version.sdkInt: ${build.version.sdkInt}');
  // logger.('version.release: ${build.version.release}');
  // logger.('version.previewSdkInt: ${build.version.previewSdkInt}');
  // logger.('version.incremental: ${build.version.incremental}');
  // logger.('version.codename: ${build.version.codename}');
  // logger.('version.baseOS: ${build.version.baseOS}');
  // logger.('board: ${build.board}');
  // logger.('bootloader: ${build.bootloader}');
  // logger.('brand: ${build.brand}');
  // logger.('device: ${build.device}');
  // logger.('display: ${build.display}');
  // logger.('fingerprint: ${build.fingerprint}');
  // logger.('hardware: ${build.hardware}');
  // logger.('host: ${build.host}');
  // logger.('id: ${build.id}');
  // logger.('manufacturer: ${build.manufacturer}');
  // logger.('model: ${build.model}');
  // logger.('product: ${build.product}');
  // logger.('supported32BitAbis: ${build.supported32BitAbis}');
  // logger.('supported64BitAbis: ${build.supported64BitAbis}');
  // logger.('supportedAbis: ${build.supportedAbis}');
  // logger.('tags: ${build.tags}');
  // logger.('type: ${build.type}');
  // logger.('isPhysicalDevice: ${build.isPhysicalDevice}');
  // logger.('androidId: ${build.androidId}');
  // logger.('systemFeatures: ${build.systemFeatures}');
  //   await PackageInfo.fromPlatform(),
  //   await DeviceInfoPlugin().androidInfo,
  // );

  String get appName => Pubspec.name;

  String get buildNumber => Pubspec.version.build.first;

  String get version => Pubspec.version.preRelease.isEmpty
      ? '${Pubspec.version.major}.${Pubspec.version.minor}.${Pubspec.version.patch}'
      : Pubspec.version.canonical;

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
