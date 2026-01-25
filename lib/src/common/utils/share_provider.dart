// ignore_for_file: avoid_catching_errors

import 'dart:async';
import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:share_plus/share_plus.dart';

abstract interface class IShareProvider {
  Future<void> share(ShareParams params);
}

class ShareProvider implements IShareProvider {
  const ShareProvider();

  @override
  Future<void> share(ShareParams params) async {
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      final file = params.files?.first;
      if (file == null) {
        return;
      }

      final fallbackName =
          file.path.split(Platform.pathSeparator).last;
      final fileName =
          params.fileNameOverrides?.firstOrNull ?? fallbackName;
      final extension = _fileExtension(fileName);
      final typeGroups = extension == null
          ? <XTypeGroup>[]
          : <XTypeGroup>[
              XTypeGroup(
                label: extension.toUpperCase(),
                extensions: [extension],
              ),
              const XTypeGroup(
                label: 'All Files',
                extensions: <String>[],
              ),
            ];

      final saveLocation = await getSaveLocation(
        suggestedName: fileName,
        acceptedTypeGroups: typeGroups,
      );
      if (saveLocation == null) {
        return;
      }

      final bytes = await file.readAsBytes();
      await File(saveLocation.path).writeAsBytes(bytes);
      return;
    }

    try {
      await SharePlus.instance.share(params);
    } on UnimplementedError {
      return;
    }
  }
}

String? _fileExtension(String fileName) {
  final dotIndex = fileName.lastIndexOf('.');
  if (dotIndex <= 0 || dotIndex == fileName.length - 1) {
    return null;
  }
  return fileName.substring(dotIndex + 1).toLowerCase();
}
