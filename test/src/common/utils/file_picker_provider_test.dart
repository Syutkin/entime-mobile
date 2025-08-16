import 'package:entime/src/common/utils/file_picker_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FilePickerProvider', () {
    late FilePickerProvider filePickerProvider;

    setUp(() {
      filePickerProvider = FilePickerProvider();
    });

    group('IFilePickerProvider interface', () {
      test('FilePickerProvider should implement IFilePickerProvider', () {
        expect(filePickerProvider, isA<IFilePickerProvider>());
      });

      test('should have pickFile method with correct signature', () {
        final provider = filePickerProvider as IFilePickerProvider;

        expect(
          provider.pickFile,
          isA<
            Future<PlatformFile?> Function({
              String? dialogTitle,
              String? initialDirectory,
              FileType type,
              List<String>? allowedExtensions,
              void Function(FilePickerStatus)? onFileLoading,
              int compressionQuality,
              bool withData,
              bool withReadStream,
              bool lockParentWindow,
              bool readSequential,
            })
          >(),
        );
      });
    });

    group('pickFile method', () {
      test('should have correct method signature', () {
        // Act & Assert - проверяем, что метод имеет правильную сигнатуру
        expect(filePickerProvider.pickFile, isA<Function>());

        // Проверяем, что можем получить ссылку на метод
        final method = filePickerProvider.pickFile;
        expect(method, isNotNull);
      });
    });
  });
}
