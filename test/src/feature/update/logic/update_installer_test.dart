// ignore_for_file: depend_on_referenced_packages, avoid_redundant_argument_values

import 'dart:io';

import 'package:entime/src/feature/update/logic/update_installer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_file_platform_interface/open_file_platform_interface.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../../../../helpers/fake_platform_info.dart';

class FakeOpenFilePlatform extends OpenFilePlatform with MockPlatformInterfaceMixin {
  String? openedPath;

  @override
  Future<OpenResult> open(
    String? filePath, {
    String? type,
    bool isIOSAppOpen = false,
    String linuxDesktopName = 'xdg',
    bool linuxUseGio = false,
    bool linuxByProcess = false,
  }) async {
    openedPath = filePath;
    return OpenResult(message: 'ok');
  }
}

class FakePermissionHandlerPlatform extends PermissionHandlerPlatform with MockPlatformInterfaceMixin {
  FakePermissionHandlerPlatform(this.status);

  PermissionStatus status;
  List<Permission> requestedPermissions = <Permission>[];

  @override
  Future<Map<Permission, PermissionStatus>> requestPermissions(List<Permission> permissions) async {
    requestedPermissions = permissions;
    return <Permission, PermissionStatus>{
      for (final permission in permissions) permission: status,
    };
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Directory tempDir;
  late File file;
  late FakeOpenFilePlatform openFilePlatform;
  late OpenFilePlatform originalOpenFilePlatform;
  late PermissionHandlerPlatform originalPermissionPlatform;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('update_installer_test_');
    file = File('${tempDir.path}/entime.apk');
    await file.writeAsString('apk');

    originalOpenFilePlatform = OpenFilePlatform.platform;
    originalPermissionPlatform = PermissionHandlerPlatform.instance;
    openFilePlatform = FakeOpenFilePlatform();
    OpenFilePlatform.platform = openFilePlatform;
  });

  tearDown(() async {
    OpenFilePlatform.platform = originalOpenFilePlatform;
    PermissionHandlerPlatform.instance = originalPermissionPlatform;
    await tempDir.delete(recursive: true);
  });

  group('UpdateInstaller.install', () {
    test('Opens file on non-Android without requesting permission', () async {
      final permissionPlatform = FakePermissionHandlerPlatform(PermissionStatus.denied);
      PermissionHandlerPlatform.instance = permissionPlatform;

      final installer = UpdateInstaller(
        platformInfo: FakePlatformInfo(isAndroid: false, isIOS: true),
      );

      await installer.install(file);

      expect(openFilePlatform.openedPath, file.path);
      expect(permissionPlatform.requestedPermissions, isEmpty);
    });

    test('Requests permission and opens file on Android when granted', () async {
      final permissionPlatform = FakePermissionHandlerPlatform(PermissionStatus.granted);
      PermissionHandlerPlatform.instance = permissionPlatform;

      final installer = UpdateInstaller(
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      await installer.install(file);

      expect(permissionPlatform.requestedPermissions, <Permission>[Permission.requestInstallPackages]);
      expect(openFilePlatform.openedPath, file.path);
    });

    test('Throws when permission denied on Android', () async {
      final permissionPlatform = FakePermissionHandlerPlatform(PermissionStatus.denied);
      PermissionHandlerPlatform.instance = permissionPlatform;

      final installer = UpdateInstaller(
        platformInfo: FakePlatformInfo(isAndroid: true),
      );

      await expectLater(
        installer.install(file),
        throwsA(
          isA<UpdateInstallException>().having(
            (e) => e.message,
            'message',
            'Installing packages is denied',
          ),
        ),
      );

      expect(permissionPlatform.requestedPermissions, <Permission>[Permission.requestInstallPackages]);
      expect(openFilePlatform.openedPath, isNull);
    });
  });
}
