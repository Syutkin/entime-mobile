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
    // print(Platform.version);
    // print(Platform.executable);
    // print(Platform.localeName);
    // print(Platform.localHostname);
    // print(Platform.numberOfProcessors);
    // print(Platform.operatingSystem);
    // print(Platform.operatingSystemVersion);
    // print(Platform.packageConfig);
    // print(Platform.resolvedExecutable);
    //
    // var build = await deviceInfoPlugin.androidInfo;
    // print('version.securityPatch: ${build.version.securityPatch}');
    // print('version.sdkInt: ${build.version.sdkInt}');
    // print('version.release: ${build.version.release}');
    // print('version.previewSdkInt: ${build.version.previewSdkInt}');
    // print('version.incremental: ${build.version.incremental}');
    // print('version.codename: ${build.version.codename}');
    // print('version.baseOS: ${build.version.baseOS}');
    // print('board: ${build.board}');
    // print('bootloader: ${build.bootloader}');
    // print('brand: ${build.brand}');
    // print('device: ${build.device}');
    // print('display: ${build.display}');
    // print('fingerprint: ${build.fingerprint}');
    // print('hardware: ${build.hardware}');
    // print('host: ${build.host}');
    // print('id: ${build.id}');
    // print('manufacturer: ${build.manufacturer}');
    // print('model: ${build.model}');
    // print('product: ${build.product}');
    // print('supported32BitAbis: ${build.supported32BitAbis}');
    // print('supported64BitAbis: ${build.supported64BitAbis}');
    // print('supportedAbis: ${build.supportedAbis}');
    // print('tags: ${build.tags}');
    // print('type: ${build.type}');
    // print('isPhysicalDevice: ${build.isPhysicalDevice}');
    // print('androidId: ${build.androidId}');
    // print('systemFeatures: ${build.systemFeatures}');
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
