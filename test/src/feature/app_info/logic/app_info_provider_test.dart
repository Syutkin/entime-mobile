import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/constants/pubspec.yaml.g.dart';
import 'package:entime/src/feature/app_info/logic/app_info_provider.dart';
import 'package:entime/src/feature/app_info/logic/app_info_provider_io.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAndroidDeviceInfo extends Mock implements AndroidDeviceInfo {}

const _fakeAndroidBuildVersion = <String, dynamic>{
  'sdkInt': 16,
  'baseOS': 'baseOS',
  'previewSdkInt': 30,
  'release': 'release',
  'codename': 'codename',
  'incremental': 'incremental',
  'securityPatch': 'securityPatch',
};

const _fakeSupportedAbis = <String>['arm64-v8a', 'x86', 'x86_64'];
const _fakeSupported32BitAbis = <String?>['x86 (IA-32)', 'MMX'];
const _fakeSupported64BitAbis = <String?>['x86-64', 'MMX', 'SSSE3'];
const _fakeSystemFeatures = ['FEATURE_AUDIO_PRO', 'FEATURE_AUDIO_OUTPUT'];

const _fakeAndroidDeviceInfo = <String, dynamic>{
  'id': 'id',
  'host': 'host',
  'tags': 'tags',
  'type': 'type',
  'model': 'model',
  'board': 'board',
  'brand': 'Google',
  'device': 'device',
  'product': 'product',
  'name': 'Custom Device Name',
  'display': 'display',
  'hardware': 'hardware',
  'isPhysicalDevice': true,
  'freeDiskSize': 70729949184,
  'totalDiskSize': 113281839104,
  'bootloader': 'bootloader',
  'fingerprint': 'fingerprint',
  'manufacturer': 'manufacturer',
  'supportedAbis': _fakeSupportedAbis,
  'systemFeatures': _fakeSystemFeatures,
  'version': _fakeAndroidBuildVersion,
  'supported64BitAbis': _fakeSupported64BitAbis,
  'supported32BitAbis': _fakeSupported32BitAbis,
  'isLowRamDevice': false,
  'physicalRamSize': 8192,
  'availableRamSize': 4096,
};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAndroidDeviceInfo deviceInfo;
  late AndroidAppInfoProvider appInfoProvider;

  setUpAll(() {
    deviceInfo = MockAndroidDeviceInfo();
  });

  setUp(() async {
    appInfoProvider = AndroidAppInfoProvider(deviceInfo);
  });

  group('AppInfoProvider:', () {
    test('Initialize', () async {
      expect(AndroidAppInfoProvider(deviceInfo), isA<AndroidAppInfoProvider>());
    });

    test('Get appName', () async {
      expect(appInfoProvider.appName, Pubspec.name);
    });

    test('Get buildNumber', () async {
      expect(appInfoProvider.buildNumber, Pubspec.version.build[0]);
    });

    test('Get version', () async {
      if (Pubspec.version.preRelease.isEmpty) {
        expect(appInfoProvider.version, '${Pubspec.version.major}.${Pubspec.version.minor}.${Pubspec.version.patch}');
      } else {
        expect(appInfoProvider.version, Pubspec.version.canonical);
      }
    });

    test('Get supported abi', () async {
      when(() => deviceInfo.supportedAbis).thenAnswer((realInvocation) => ['arm64-v8a', 'armeabi-v7a', 'x86_64']);

      expect(appInfoProvider.abi, 'arm64-v8a');

      when(() => deviceInfo.supportedAbis).thenAnswer((realInvocation) => ['armeabi-v7a', 'arm64-v8a', 'x86_64']);

      expect(appInfoProvider.abi, 'armeabi-v7a');

      when(() => deviceInfo.supportedAbis).thenAnswer((realInvocation) => ['1', '2', '3']);

      expect(appInfoProvider.abi, null);
    });

    test('Get deviceSupported32BitAbis', () async {
      when(() => deviceInfo.supported32BitAbis).thenAnswer((realInvocation) => ['armeabi-v7a']);

      expect(appInfoProvider.deviceSupported32BitAbis, ['armeabi-v7a']);
    });

    test('Get deviceSupported64BitAbis', () async {
      when(() => deviceInfo.supported64BitAbis).thenAnswer((realInvocation) => ['arm64-v8a', 'x86_64']);

      expect(appInfoProvider.deviceSupported64BitAbis, ['arm64-v8a', 'x86_64']);
    });

    test('Get deviceSupportedAbis', () async {
      when(() => deviceInfo.supportedAbis).thenAnswer((realInvocation) => ['armeabi-v7a', 'arm64-v8a', 'x86_64']);

      expect(appInfoProvider.deviceSupportedAbis, ['armeabi-v7a', 'arm64-v8a', 'x86_64']);
    });
  });

  group('AppInfoProvider factory:', () {
    test('Returns expected provider for current platform', () async {
      if (Platform.isAndroid) {
        return;
      }

      final provider = await createAppInfoProvider();
      expect(provider, isA<DefaultAppInfoProvider>());
    });

    test('Returns AndroidAppInfoProvider when forced', () async {
      final androidInfo = AndroidDeviceInfo.fromMap(_fakeAndroidDeviceInfo);
      final plugin = DeviceInfoPlugin.setMockInitialValues(androidDeviceInfo: androidInfo);

      final provider = await createAppInfoProvider(
        deviceInfoPlugin: plugin,
        isAndroidOverride: true,
      );

      expect(provider, isA<AndroidAppInfoProvider>());
      expect((provider as AndroidAppInfoProvider).abi, 'arm64-v8a');
    });
  });

  group('DefaultAppInfoProvider:', () {
    test('Get appName', () {
      final provider = DefaultAppInfoProvider();
      expect(provider.appName, Pubspec.name);
    });

    test('Get buildNumber', () {
      final provider = DefaultAppInfoProvider();
      expect(provider.buildNumber, Pubspec.version.build[0]);
    });

    test('Get version', () {
      final provider = DefaultAppInfoProvider();
      if (Pubspec.version.preRelease.isEmpty) {
        expect(provider.version, '${Pubspec.version.major}.${Pubspec.version.minor}.${Pubspec.version.patch}');
      } else {
        expect(provider.version, Pubspec.version.canonical);
      }
    });
  });
}
