import 'package:file_picker/file_picker.dart' as fp;

abstract interface class IFilePickerProvider {
  /// Pick file from filesystem
  Future<fp.PlatformFile?> pickFile({
    String? dialogTitle,
    String? initialDirectory,
    fp.FileType type = fp.FileType.any,
    List<String>? allowedExtensions,
    void Function(fp.FilePickerStatus)? onFileLoading,
    int compressionQuality = 0,
    bool lockParentWindow = false,
    bool cancelUploadOnWindowBlur = true,
    fp.AndroidSAFOptions? androidSafOptions,
  });
}

class FilePickerProvider implements IFilePickerProvider {
  @override
  Future<fp.PlatformFile?> pickFile({
    String? dialogTitle,
    String? initialDirectory,
    fp.FileType type = fp.FileType.any,
    List<String>? allowedExtensions,
    void Function(fp.FilePickerStatus)? onFileLoading,
    int compressionQuality = 0,
    bool lockParentWindow = false,
    bool cancelUploadOnWindowBlur = true,
    fp.AndroidSAFOptions? androidSafOptions,
  }) {
    return fp.FilePicker.pickFile(
      dialogTitle: dialogTitle,
      initialDirectory: initialDirectory,
      type: type,
      allowedExtensions: allowedExtensions,
      onFileLoading: onFileLoading,
      compressionQuality: compressionQuality,
      lockParentWindow: lockParentWindow,
      cancelUploadOnWindowBlur: cancelUploadOnWindowBlur,
      androidSafOptions: androidSafOptions,
    );
  }
}
