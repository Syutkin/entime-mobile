import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/utils/helper.dart';

class SelectFileScreen extends StatefulWidget {
  SelectFileScreen({Key? key}) : super(key: key);

  @override
  _SelectFileScreenState createState() => _SelectFileScreenState();
}

class _SelectFileScreenState extends State<SelectFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Выберите файл'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(MdiIcons.filePlusOutline),
            onPressed: () async {
              String? newFile = await _createFile(context);
              if (newFile != null) {
                BlocProvider.of<ProtocolBloc>(context)
                    .add(SelectProtocol(newFile));
                Navigator.of(context).pop();
              }
            },
          ),
          IconButton(
            icon: const Icon(MdiIcons.folderOpenOutline),
            onPressed: () async {
              FilePickerResult? result =
                  await FilePicker.platform.pickFiles(type: FileType.any);
              if (result != null && result.files.single.path != null) {
                File? file = File(result.files.single.path!);
                file = await _checkExists(context, file);
                // Если null - файл уже существовал и не перезаписываем,
                // то ничего делать не нужно
                if (file != null) {
                  BlocProvider.of<ProtocolBloc>(context)
                      .add(SelectProtocol(file.path));
                  Navigator.of(context).pop();
                }
              }
            },
          ),
        ],
      ),
      // ToDo: генерацию списка файлов в папке проги перекинуть в BLoC
      body: FutureBuilder<List<File>>(
          future: _getFiles(),
          builder: (context, AsyncSnapshot<List<File>> snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  File item = snapshot.data![index];
                  return ListTile(
                    leading: const Icon(MdiIcons.database),
                    title: Text(basename(item.path)),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 5,
                            child: Text(formatDate(item.statSync().accessed))),
                        Expanded(
                            flex: 5,
                            child: Text(filesize(item.statSync().size))),
                      ],
                    ),
                    trailing: _filePopup(item),
                    onTap: () {
                      BlocProvider.of<ProtocolBloc>(context)
                          .add(SelectProtocol(item.path));
                      Navigator.of(context).pop();
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  indent: 70,
                  endIndent: 10,
                  thickness: 1,
                ),
              );
            } else {
              return Text('No data');
            }
          }),
    );
  }

  Future<List<File>> _getFiles() async {
    List<File> files = [];

    Directory? externalStorageDirectory = await getExternalStorageDirectory();
    if (externalStorageDirectory != null) {
      List<FileSystemEntity> allFiles = externalStorageDirectory.listSync();
      for (var file in allFiles) {
        if (file is File &&
            (extension(file.path) == '.sqlite' ||
                extension(file.path) == '.db')) {
          files.add(file);
        }
      }
    }
    return files;
  }

  // Проверка на существование файла в рабочей директории перед копированием
  // выбранного файла
  Future<File?> _checkExists(BuildContext context, File file) async {
    String fileName = basename(file.path);
    Directory? externalStorageDirectory = await getExternalStorageDirectory();
    if (externalStorageDirectory != null) {
      String localFileName =
          join(externalStorageDirectory.path, basename(fileName));
      if (File(localFileName).existsSync()) {
        bool? overwrite = await _overwriteFile(context, localFileName);
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
      print('Error copying file: ' + e.toString());
      return sourceFile;
    }
  }

  Future<bool?> _overwriteFile(
      BuildContext context, String localFileName) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Предупреждение'),
          content: Text(
              'Соревнование с именем ${basename(localFileName)} уже существует и будет перезаписано'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child:
                  Text(MaterialLocalizations.of(context).continueButtonLabel),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
            ),
          ],
        );
      },
    );
  }

  Widget _filePopup(File item) => BlocBuilder<ProtocolBloc, ProtocolState>(
          builder: (context, protocolState) {
        return PopupMenuButton<int>(
          // child: PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 2,
              child: ListTile(
                leading: const Icon(Icons.share),
                title: Text('Поделиться'),
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: ListTile(
                leading: const Icon(Icons.delete),
                title: Text('Удалить'),
              ),
            ),
          ],
          onSelected: (value) {
            switch (value) {
              case 1:
                setState(() {
                  if (protocolState is ProtocolSelectedState &&
                      protocolState.databasePath == item.path) {
                    BlocProvider.of<ProtocolBloc>(context)
                        .add(DeselectProtocol());
                  }
                  final File shm = File('${item.path}-shm');
                  if (shm.existsSync()) shm.delete();
                  final File wal = File('${item.path}-wal');
                  if (wal.existsSync()) wal.delete();
                  item.delete();
                });
                break;
              case 2:
                // ShareExtend.share(item.path, 'file');
                Share.shareFiles([item.path], text: 'Файл базы данных');
                break;
              default:
                break;
            }
          },
        );
      });

  Future<String?> _createFile(BuildContext context) async {
    String? result;
    final _formKey = GlobalKey<FormState>();
    return showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          //scrollable: true,
          title: Text('Создать'),
          content: Form(
            key: _formKey,
            onChanged: () {
              Form.of(primaryFocus!.context!)!.validate();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'Название'),
                  validator: (value) {
                    result = value;
                    if (value == null) return null;
                    RegExp regExp = RegExp(r'^[а-яА-ЯёЁa-zA-Z0-9\-\+\.\_!]+$');
                    if (regExp.hasMatch(value)) return null;
                    return 'Недопустимый символ';
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
            ),
            TextButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  Directory? externalStorageDirectory =
                      await getExternalStorageDirectory();
                  String? localFileName;
                  if (externalStorageDirectory != null) {
                    localFileName = join(externalStorageDirectory.path,
                        basename('$result.sqlite'));
                  }
                  Navigator.of(context).pop(localFileName);
                }
              },
              child: Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        );
      },
    );
  }
}
