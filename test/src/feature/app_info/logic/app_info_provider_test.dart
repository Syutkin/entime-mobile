import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/constants/pubspec.yaml.g.dart' as pubspec;
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_info_provider_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([AndroidDeviceInfo])
void main() {
  group('AppInfoProvider:', () {
    test('Initialize', () async {
      final deviceInfo = MockAndroidDeviceInfo();

      expect(
        await AppInfoProvider.load(
          deviceInfo: deviceInfo,
        ),
        isA<AppInfoProvider>(),
      );
    });

    test('Get appName', () async {
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
      );

      expect(
        appInfoProvider.appName,
        pubspec.name,
      );
    });

    test('Get buildNumber', () async {
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
      );

      expect(
        appInfoProvider.buildNumber,
        pubspec.build.toString(),
      );
    });

    test('Get version', () async {
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
      );

      expect(
        appInfoProvider.version,
        pubspec.version,
      );
    });

    test('Get supported abi', () async {
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
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
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
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
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
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
      final deviceInfo = MockAndroidDeviceInfo();

      final appInfoProvider = await AppInfoProvider.load(
        deviceInfo: deviceInfo,
      );

      when(
        deviceInfo.supportedAbis,
      ).thenAnswer((realInvocation) => ['armeabi-v7a', 'arm64-v8a', 'x86_64']);

      expect(
        appInfoProvider.deviceSupportedAbis,
        ['armeabi-v7a', 'arm64-v8a', 'x86_64'],
      );
    });
  });
}
