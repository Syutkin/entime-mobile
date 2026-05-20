import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/logger/logger.dart';
import '../../../common/model/platform_info.dart';

class UpdateInstallException implements Exception {
  UpdateInstallException(this.message);

  final String message;

  @override
  String toString() => message;
}

abstract interface class IUpdateInstaller {
  Future<void> install(File file);
}

class UpdateInstaller implements IUpdateInstaller {
  UpdateInstaller({PlatformInfo? platformInfo}) : _platformInfo = platformInfo ?? DefaultPlatformInfo();

  final PlatformInfo _platformInfo;

  @override
  Future<void> install(File file) async {
    if (_platformInfo.isAndroid) {
      final status = await Permission.requestInstallPackages.request();
      if (!status.isGranted) {
        throw UpdateInstallException('Installing packages is denied');
      }
    }
    final result = await OpenFile.open(file.path);
    logger.d(result.message);
  }
}
