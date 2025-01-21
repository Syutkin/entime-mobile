import 'package:file_picker/file_picker.dart';

Future<PlatformFile?> pickCsvFile() async {
  final file = (await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['csv'],
    withData: true,
  ))?.files.first;

  if (file == null || file.bytes == null) {
    return null;
  }
  return file;
}
