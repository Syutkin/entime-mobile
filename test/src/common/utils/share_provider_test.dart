// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data';

import 'package:entime/src/common/utils/share_provider.dart';
import 'package:file_selector_platform_interface/file_selector_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:share_plus/share_plus.dart';

class FakeFileSelectorPlatform extends FileSelectorPlatform {
  FileSaveLocation? saveLocation;
  List<XTypeGroup>? lastAcceptedTypeGroups;
  SaveDialogOptions? lastOptions;

  @override
  Future<FileSaveLocation?> getSaveLocation({
    List<XTypeGroup>? acceptedTypeGroups,
    SaveDialogOptions options = const SaveDialogOptions(),
  }) async {
    lastAcceptedTypeGroups = acceptedTypeGroups;
    lastOptions = options;
    return saveLocation;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late FileSelectorPlatform originalPlatform;
  late FakeFileSelectorPlatform fakePlatform;

  setUp(() {
    originalPlatform = FileSelectorPlatform.instance;
    fakePlatform = FakeFileSelectorPlatform();
    FileSelectorPlatform.instance = fakePlatform;
  });

  tearDown(() {
    FileSelectorPlatform.instance = originalPlatform;
  });

  test(
    'share writes file to selected save location on desktop',
    () async {
      final tempDir = await Directory.systemTemp.createTemp('share_provider');
      addTearDown(() => tempDir.delete(recursive: true));

      final sourceFile = File('${tempDir.path}/source.csv');
      final bytes = Uint8List.fromList([1, 2, 3, 4, 5]);
      await sourceFile.writeAsBytes(bytes);

      final targetPath = '${tempDir.path}/export.csv';
      fakePlatform.saveLocation = FileSaveLocation(targetPath);

      await const ShareProvider().share(
        ShareParams(
          files: [XFile(sourceFile.path)],
          fileNameOverrides: const ['export.csv'],
        ),
      );

      final savedFile = File(targetPath);
      expect(savedFile.existsSync(), isTrue);
      expect(await savedFile.readAsBytes(), orderedEquals(bytes));
      expect(fakePlatform.lastOptions?.suggestedName, 'export.csv');
      expect(fakePlatform.lastAcceptedTypeGroups, hasLength(2));
      expect(fakePlatform.lastAcceptedTypeGroups?.first.extensions, ['csv']);
      expect(fakePlatform.lastAcceptedTypeGroups?.last.allowsAny, isTrue);
    },
    skip: Platform.isAndroid || Platform.isIOS ? 'Uses share_plus on mobile platforms.' : false,
  );

  test(
    'share returns early when no files are provided',
    () async {
      await const ShareProvider().share(
        ShareParams(text: 'no files'),
      );

      expect(fakePlatform.lastOptions, isNull);
      expect(fakePlatform.lastAcceptedTypeGroups, isNull);
    },
    skip: Platform.isAndroid || Platform.isIOS ? 'Uses share_plus on mobile platforms.' : false,
  );
}
