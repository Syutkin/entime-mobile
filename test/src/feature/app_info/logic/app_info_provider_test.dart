import 'package:device_info_plus/device_info_plus.dart';
import 'package:entime/src/constants/pubspec.yaml.g.dart' as pubspec;
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAndroidDeviceInfo extends Mock implements AndroidDeviceInfo {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAndroidDeviceInfo deviceInfo;
  late AppInfoProvider appInfoProvider;

  setUpAll(() {
    deviceInfo = MockAndroidDeviceInfo();
  });

  setUp(() async {
    appInfoProvider = await AppInfoProvider.load(deviceInfo: deviceInfo);
  });

  group('AppInfoProvider:', () {
    test('Initialize', () async {
      expect(await AppInfoProvider.load(deviceInfo: deviceInfo), isA<AppInfoProvider>());
    });

    test('Get appName', () async {
      expect(appInfoProvider.appName, pubspec.name);
    });

    test('Get buildNumber', () async {
      expect(appInfoProvider.buildNumber, pubspec.build[0]);
    });

    test('Get version', () async {
      if (pubspec.pre.isEmpty) {
        expect(appInfoProvider.version, '${pubspec.major}.${pubspec.minor}.${pubspec.patch}');
      } else {
        expect(appInfoProvider.version, pubspec.version);
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
}
