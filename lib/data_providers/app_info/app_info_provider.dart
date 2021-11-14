// import 'dart:io';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';

class AppInfoProvider {
  final PackageInfo _packageInfo;
  final AndroidDeviceInfo _deviceInfo;
  final List<String> _supportedAbis = ['armeabi-v7a', 'arm64-v8a', 'x86_64'];

  AppInfoProvider(
    this._packageInfo,
    this._deviceInfo,
  );

  static Future<AppInfoProvider> load() async {
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
    return AppInfoProvider(
      await PackageInfo.fromPlatform(),
      await DeviceInfoPlugin().androidInfo,
    );
  }

  String get appName => _packageInfo.appName;

  String get buildNumber => _packageInfo.buildNumber;

  String get packageName => _packageInfo.packageName;

  String get version => _packageInfo.version;

  String? get abi {
    for (var deviceSupportedAbi in _deviceInfo.supportedAbis) {
      for (var abi in _supportedAbis) {
        if (deviceSupportedAbi == abi) {
          return deviceSupportedAbi;
        }
      }
    }
  }

  List<String?> get deviceSupported32BitAbis => _deviceInfo.supported32BitAbis;

  List<String?> get deviceSupported64BitAbis => _deviceInfo.supported64BitAbis;

  List<String?> get deviceSupportedAbis => _deviceInfo.supportedAbis;
}
