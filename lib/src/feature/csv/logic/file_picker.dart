import 'package:file_picker/file_picker.dart';

Future<PlatformFile?> pickFile([List<String> extensions = const ['csv']]) async {
  final file = (await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: extensions,
    withData: true,
  ))?.files.first;

  if (file == null || file.bytes == null) {
    return null;
  }
  return file;
}
