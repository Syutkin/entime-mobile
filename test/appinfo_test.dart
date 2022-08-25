import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'appinfo_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([PackageInfo, AndroidDeviceInfo])
void main() {
  group('AppInfoProvider:', () {
    test('Initialize', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      expect(
        await AppInfoProvider.load(
          deviceInfo: deviceInfo,
          packageInfo: packageInfo,
        ),
        isA<AppInfoProvider>(),
      );
    });

    test('Get appName', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        packageInfo.appName,
      ).thenAnswer((realInvocation) => 'Entime');

      expect(
        appInfoProvider.appName,
        'Entime',
      );
    });

    test('Get buildNumber', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        packageInfo.buildNumber,
      ).thenAnswer((realInvocation) => '1');

      expect(
        appInfoProvider.buildNumber,
        '1',
      );
    });

    test('Get packageName', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        packageInfo.packageName,
      ).thenAnswer((realInvocation) => 'site.syutkin.entime');

      expect(
        appInfoProvider.packageName,
        'site.syutkin.entime',
      );
    });

    test('Get version', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        packageInfo.version,
      ).thenAnswer((realInvocation) => '1.0.0');

      expect(
        appInfoProvider.version,
        '1.0.0',
      );
    });

    test('Get supported abi', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        deviceInfo.supportedAbis,
      ).thenAnswer((realInvocation) => ['arm64-v8a', 'armeabi-v7a', 'x86_64']);

      expect(
        appInfoProvider.abi,
        'arm64-v8a',
      );

      when(
        deviceInfo.supportedAbis,
      ).thenAnswer((realInvocation) => ['armeabi-v7a', 'arm64-v8a', 'x86_64']);

      expect(
        appInfoProvider.abi,
        'armeabi-v7a',
      );

      when(
        deviceInfo.supportedAbis,
      ).thenAnswer((realInvocation) => ['1', '2', '3']);

      expect(
        appInfoProvider.abi,
        null,
      );
    });

    test('Get deviceSupported32BitAbis', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        deviceInfo.supported32BitAbis,
      ).thenAnswer((realInvocation) => ['armeabi-v7a']);

      expect(
        appInfoProvider.deviceSupported32BitAbis,
        ['armeabi-v7a'],
      );
    });

    test('Get deviceSupported64BitAbis', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        deviceInfo.supported64BitAbis,
      ).thenAnswer((realInvocation) => ['arm64-v8a', 'x86_64']);

      expect(
        appInfoProvider.deviceSupported64BitAbis,
        ['arm64-v8a', 'x86_64'],
      );
    });

    test('Get deviceSupportedAbis', () async {
      final packageInfo = MockPackageInfo();
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
        packageInfo: packageInfo,
      );

      when(
        deviceInfo.supportedAbis,
      ).thenAnswer((realInvocation) => ['armeabi-v7a', 'arm64-v8a', 'x86_64']);

      expect(
        appInfoProvider.deviceSupportedAbis,
        ['armeabi-v7a', 'arm64-v8a', 'x86_64'],
      );
    });

    // List<String?> get deviceSupported32BitAbis => _deviceInfo.supported32BitAbis;

    // List<String?> get deviceSupported64BitAbis => _deviceInfo.supported64BitAbis;

    // List<String?> get deviceSupportedAbis => _deviceInfo.supportedAbis;
  });
}
