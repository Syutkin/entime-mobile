import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/helper/helper.dart';
import '../../protocol/bloc/protocol_bloc.dart';

// ToDo: get rid of this ignore
// ignore_for_file: use_build_context_synchronously

Future<void> routeToSelectFileScreen(BuildContext context) async {
  await Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
    return const SelectFileScreen();
  }));
}

class SelectFileScreen extends StatefulWidget {
  const SelectFileScreen({Key? key}) : super(key: key);

  @override
  State<SelectFileScreen> createState() => _SelectFileScreenState();
}

class _SelectFileScreenState extends State<SelectFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выберите файл'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(MdiIcons.filePlusOutline),
            onPressed: () async {
              if (await createNewProtocolFile(context) != null) {
                Navigator.of(context).pop();
              }
            },
          ),
          IconButton(
            icon: const Icon(MdiIcons.folderOpenOutline),
            onPressed: () async {
              await loadFile(context);
              Navigator.of(context).pop();
            },
            // onPressed:() async {
            //   FilePickerResult? result =
            //       await FilePicker.platform.pickFiles(type: FileType.any);
            //   if (result != null && result.files.single.path != null) {
            //     File? file = File(result.files.single.path!);
            //     file = await _checkExists(context, file);
            //     // Если null - файл уже существовал и не перезаписываем,
            //     // то ничего делать не нужно
            //     if (file != null) {
            //       BlocProvider.of<ProtocolBloc>(context)
            //           .add(SelectProtocol(file.path));
            //       Navigator.of(context).pop();
            //     }
            //   }
            // },
          ),
        ],
      ),
      // ToDo: генерацию списка файлов в папке проги перекинуть в BLoC
      body: FutureBuilder<List<File>>(
          future: _getFiles(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final File item = snapshot.data![index];
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
                separatorBuilder: (context, index) => const Divider(
                  indent: 70,
                  endIndent: 10,
                  thickness: 1,
                ),
              );
            } else {
              return const Text('No data');
            }
          }),
    );
  }

  Future<List<File>> _getFiles() async {
    final List<File> files = [];

    final Directory? externalStorageDirectory =
        await getExternalStorageDirectory();
    if (externalStorageDirectory != null) {
      final List<FileSystemEntity> allFiles =
          externalStorageDirectory.listSync();
      for (final file in allFiles) {
        if (file is File &&
            (extension(file.path) == '.sqlite' ||
                extension(file.path) == '.db')) {
          files.add(file);
        }
      }
    }
    return files;
  }

  Widget _filePopup(File item) => BlocBuilder<ProtocolBloc, ProtocolState>(
          builder: (context, protocolState) {
        return PopupMenuButton<int>(
          // child: PopupMenuButton<int>(
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 2,
              child: ListTile(
                leading: Icon(Icons.share),
                title: Text('Поделиться'),
              ),
            ),
            const PopupMenuItem(
              value: 1,
              child: ListTile(
                leading: Icon(Icons.delete),
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
                  if (shm.existsSync()) {
                    shm.delete();
                  }
                  final File wal = File('${item.path}-wal');
                  if (wal.existsSync()) {
                    wal.delete();
                  }
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
}
