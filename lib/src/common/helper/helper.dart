import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../feature/protocol/protocol.dart';
import '../logger/logger.dart';

export 'package:filesize/filesize.dart';

// ToDo: get rid of this ignore
// ignore_for_file: use_build_context_synchronously

String strip(String? str) {
  if (str == null || str == 'null') {
    return '';
  }
  return str;
}

DateTime? strTimeToDateTime(String time) {
  final now = DateTime.now();
  final dateFormatted = DateFormat('yyyy-MM-dd').format(now);
  final DateTime? result = DateTime.tryParse('$dateFormatted $time');
  return result;
}

//Difference diff = Difference();
//
//// Высчитываем разницу между локальным временем и временем в RTC
//class Difference {
//  List<int> _deltas;
//  static Duration _duration;
//
//  Difference() {
//    _deltas = List<int>();
//    _duration = Duration(milliseconds: 0);
//  }
//
//  Duration get duration => _duration;
//
//  void addDeltaAsString(String time) {
//    var now = DateTime.now();
//    var dateTime = strTimeToDateTime(time);
//    Duration diffDur = dateTime.difference(now);
//    _addDelta(diffDur.inMilliseconds);
//  }
//
//  void addDeltaAsDateTime(DateTime time) {
//    var now = DateTime.now();
//    Duration diffDur = time.difference(now);
//    _addDelta(diffDur.inMilliseconds);
//  }
//
//  void _addDelta(int value) {
//    _deltas.insert(0, value);
//    _duration = Duration(milliseconds: _getAverage());
//  }
//
//  // Считается как среднее арифметическое за последние 10 значений
//  int _getAverage() {
//    if (_deltas != null) {
//      int sum = 0;
//      if (_deltas.length > 10) {
//        _deltas.length = 10;
//      }
//      for (int n in _deltas) {
//        sum += n;
//      }
//      sum = (sum / _deltas.length).round();
//      return sum;
//    } else {
//      return 0;
//    }
//  }
//}

String formatDate(DateTime dateTime) {
  if (dateTime.year == DateTime.now().year) {
    return DateFormat('MMMMd', 'ru_RU').format(dateTime);
  } else {
    return DateFormat('yMMMMd', 'ru_RU').format(dateTime);
  }
}

/// Scrolls lists to end
void scrollToEnd(ScrollController scrollController) {
  scrollController.animateTo(
    scrollController.position.maxScrollExtent,
    duration: const Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
  );
}

Future<String?> createNewProtocolFile(
  BuildContext context, [
  PlatformFile? csv,
]) async {
  String? fileName;
  final bloc = BlocProvider.of<ProtocolBloc>(context);
  if (csv != null) {
    fileName = basenameWithoutExtension(csv.name);
  }
  final String? newFile = await _createFile(context, fileName);
  if (newFile != null) {
    bloc.add(SelectProtocol(file: newFile, csv: csv));
  }
  return newFile;
}

Future<String?> _createFile(BuildContext context, [String? initialName]) async {
  String? result;
  final formKey = GlobalKey<FormState>();
  final navigator = Navigator.of(context);
  return showDialog<String>(
    context: context,
    barrierDismissible: true,
    builder: (context) => AlertDialog(
      //scrollable: true,
      title: const Text('Создать'),
      content: Form(
        key: formKey,
        onChanged: () {
          Form.of(primaryFocus!.context!)!.validate();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              initialValue: initialName,
              keyboardType: TextInputType.text,
              autofocus: true,
              decoration: const InputDecoration(labelText: 'Название'),
              validator: (value) {
                result = value;
                if (value == null) {
                  return null;
                }
                final RegExp regExp =
                    RegExp(r'^[а-яА-ЯёЁa-zA-Z0-9\-\+\.\_! ]+$');
                if (regExp.hasMatch(value)) {
                  return null;
                }
                return 'Недопустимый символ';
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: navigator.pop,
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              final Directory? externalStorageDirectory =
                  await getExternalStorageDirectory();
              String? localFileName;
              if (externalStorageDirectory != null) {
                localFileName = join(
                  externalStorageDirectory.path,
                  basename('$result.sqlite'),
                );
              }
              navigator.pop(localFileName);
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}

Future<void> loadFile(BuildContext context) async {
  final protocolBloc = BlocProvider.of<ProtocolBloc>(context);
  final PlatformFile? platformFile = await _pickFile();
  if (platformFile != null && platformFile.path != null) {
    if (platformFile.extension == 'sqlite' || platformFile.extension == 'db') {
      File? file = File(platformFile.path!);
      file = await _checkExists(context, file);
      // Если null - файл уже существовал и не перезаписываем,
      // то ничего делать не нужно
      if (file != null) {
        protocolBloc.add(SelectProtocol(file: file.path));
        // Navigator.of(context).pop();
      }
    } else if (platformFile.extension == 'csv') {
      if (protocolBloc is ProtocolSelectedState) {
        protocolBloc.add(ProtocolLoadStartFromCsv(csv: platformFile));
      } else if (protocolBloc is! ProtocolSelectedState) {
        await createNewProtocolFile(context, platformFile);
      }
    }
  }
}

Future<PlatformFile?> _pickFile() async {
  final result = await FilePicker.platform.pickFiles(
    withData: true,
  );
  return result?.files.first;
}

// Проверка на существование файла в рабочей директории перед копированием
// выбранного файла
Future<File?> _checkExists(BuildContext context, File file) async {
  final String fileName = basename(file.path);
  final Directory? externalStorageDirectory =
      await getExternalStorageDirectory();
  if (externalStorageDirectory != null) {
    final String localFileName =
        join(externalStorageDirectory.path, basename(fileName));
    if (File(localFileName).existsSync()) {
      final bool? overwrite = await _overwriteFile(context, localFileName);
      if (overwrite != null && overwrite) {
        return _copyFile(file, localFileName);
      } else {
        return null;
      }
    } else {
      return _copyFile(file, localFileName);
    }
  } else {
    return null;
  }
}

File _copyFile(File sourceFile, String newPath) {
  try {
    return sourceFile.copySync(newPath);
  } on FileSystemException catch (e) {
    logger.e('Error copying file: $e');
    return sourceFile;
  }
}

Future<bool?> _overwriteFile(BuildContext context, String localFileName) =>
    showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Предупреждение'),
        content: Text(
          'Соревнование с именем ${basename(localFileName)} уже существует и будет перезаписано',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(MaterialLocalizations.of(context).continueButtonLabel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
          ),
        ],
      ),
    );

TextStyle dBmTextStyle(int rssi) {
  /*  */ if (rssi >= -35) {
    return TextStyle(color: Colors.greenAccent[700]);
  } else if (rssi >= -45) {
    return TextStyle(
      color: Color.lerp(
        Colors.greenAccent[700],
        Colors.lightGreen,
        -(rssi + 35) / 10,
      ),
    );
  } else if (rssi >= -55) {
    return TextStyle(
      color: Color.lerp(Colors.lightGreen, Colors.lime[600], -(rssi + 45) / 10),
    );
  } else if (rssi >= -65) {
    return TextStyle(
      color: Color.lerp(Colors.lime[600], Colors.amber, -(rssi + 55) / 10),
    );
  } else if (rssi >= -75) {
    return TextStyle(
      color: Color.lerp(
        Colors.amber,
        Colors.deepOrangeAccent,
        -(rssi + 65) / 10,
      ),
    );
  } else if (rssi >= -85) {
    return TextStyle(
      color: Color.lerp(
        Colors.deepOrangeAccent,
        Colors.redAccent,
        -(rssi + 75) / 10,
      ),
    );
  } else {
    return const TextStyle(color: Colors.redAccent);
  }
}
