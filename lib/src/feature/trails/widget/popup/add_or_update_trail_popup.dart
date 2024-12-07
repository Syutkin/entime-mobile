part of '../trails_list_page.dart';

Future<void> addTrailPopup(BuildContext context) {
  return _upsertTrailPopup(context);
}

Future<void> updateTrailPopup(BuildContext context, TrailInfo trail) {
  return _upsertTrailPopup(context, trail);
}

Future<void> _upsertTrailPopup(BuildContext context, [TrailInfo? trail]) async {
  var name = trail?.name ?? '';
  var distance = trail?.distance;
  var elevation = trail?.elevation;
  PlatformFile? file;
  // var gpxTrack = trail?.gpxTrack;
  var fileExtension = trail?.fileExtension;
  var url = trail?.url;
  var description = trail?.description;
  // var isTrackDeleted = false;

  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController()..text = name;
  final filePickerController = TextEditingController()
    ..text = fileExtension ?? '';

  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      title: trail == null
          ? Text(Localization.current.I18nDatabase_editRace)
          : Text(name),
      content: Form(
        key: formKey,
        child: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            // Название трейла
            TextFormField(
              controller: nameController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailName,
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return Localization.current.I18nDatabase_enterTrailName;
                } else {
                  name = value;
                  return null;
                }
              },
            ),
            // ToDo: загрузка gpx трека
            // ToDo: при загрузке даже 30Мб уже ощутимо лагает
            // ToDo: 1. не загружать сам трек в списке трейлов
            // ToDo: 2. сделать поле "есть ли трек"?
            // ToDo: 3. загружать только при шаринге
            // ToDo: 4. шаринг убрать из UI
            // ToDo: 5. при загрузке тоже ощутимо тормозит, может загружать как-то по другому в бд?
            BlocBuilder<TrailsBloc, TrailsState>(
              builder: (context, state) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: filePickerController,
                        decoration: InputDecoration(
                          labelText:
                              Localization.current.I18nDatabase_trailGpxTrack,
                        ),
                        keyboardType: TextInputType.none,
                      ),
                    ),
                    state.map(
                      initial: (_) {
                        return const SizedBox.shrink();
                      },
                      initialized: (state) {
                        final bloc = context.read<TrailsBloc>();
                        if (state.track == null) {
                          return IconButton(
                            onPressed: () async {
                              file = (await FilePicker.platform.pickFiles(
                                      // type: FileType.custom,
                                      // allowedExtensions: ['csv'],
                                      // withData: true,
                                      ))
                                  ?.files
                                  .first;
                              final path = file?.path;
                              if (file != null && path != null) {
                                bloc.add(TrailsEvent.loadTrack(filePath: path));
                                filePickerController.text = file?.name ?? '';
                                if (nameController.text.isEmpty) {
                                  final name = (file?.name.split('.')
                                        ?..removeLast())
                                      ?.join('.');
                                  nameController.text = name ?? '';
                                }
                              }
                            },
                            icon: const Icon(Icons.add_location_alt_outlined),
                          );
                        } else {
                          return IconButton(
                            onPressed: () async {
                              bloc.add(const TrailsEvent.unloadTrack());
                              filePickerController.text = '';
                            },
                            icon: const Icon(Icons.delete),
                          );
                        }
                      },
                      loadingTrack: (state) {
                        final size = Theme.of(context).iconTheme.size ?? 24;
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: size,
                            width: size,
                            child: const Center(
                                child: CircularProgressIndicator()),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
            // distance
            TextFormField(
              initialValue: (distance ?? '').toString(),
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailDistance,
              ),
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  distance = null;
                  return null;
                } else {
                  final number = int.tryParse(value);
                  if (number != null) {
                    distance = number;
                    return null;
                  } else {
                    return Localization
                        .current.I18nDatabase_incorrectTrailDistance;
                  }
                }
              },
            ),
            // elevation
            TextFormField(
              initialValue: (elevation ?? '').toString(),
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailElevation,
              ),
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  elevation = null;
                  return null;
                } else {
                  final number = int.tryParse(value);
                  if (number != null) {
                    elevation = number;
                    return null;
                  } else {
                    return Localization
                        .current.I18nDatabase_incorrectTrailElevation;
                  }
                }
              },
            ),
            TextFormField(
              initialValue: url,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailUrl,
              ),
              keyboardType: TextInputType.url,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  url = '';
                  return null;
                } else {
                  if (value.isUrl) {
                    url = value;
                    return null;
                  } else {
                    return Localization.current.I18nDatabase_incorrectTrailUrl;
                  }
                }
              },
            ),
            TextFormField(
              initialValue: description,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailDescription,
              ),
              onChanged: (value) {
                description = value;
              },
              keyboardType: TextInputType.multiline,
              maxLines: null,
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
          onPressed: () {
            if (formKey.currentState!.validate()) {
              final path = file?.path;
              // ToDo: вот тут планируется добавлять/удалять трейл и трек
              // Надо наверно забить на апсерт, и добавление/обновление определять по
              // trail == null
              // Создаём новую запись

              if (trail == null) {
                if (path == null) {
                  // Новый трейл без трека
                  context.read<TrailsBloc>().add(
                        TrailsEvent.addTrail(
                          name: name,
                          elevation: elevation,
                          distance: distance,
                          url: url,
                          description: description,
                        ),
                      );
                } else {
                  // Новый трейл с файлом
                  context.read<TrailsBloc>().add(
                        TrailsEvent.addTrail(
                          name: name,
                          elevation: elevation,
                          distance: distance,
                          url: url,
                          description: description,
                          filePath: path,
                        ),
                      );
                }
              }

              if (path != null) {
                try {
                  context.read<TrailsBloc>().add(
                        TrailsEvent.upsertTrail(
                          id: trail?.id,
                          name: name,
                          elevation: elevation,
                          distance: distance,
                          // filePath: path,
                          // gpxTrack: File(path).readAsBytesSync(),
                          url: url,
                          description: description,
                          // fileExtension: path.split('.').last,
                        ),
                      );
                } on FileSystemException catch (e) {
                  logger.e('Trails -> Can not load gpx file: $e');
                }
              }
              // context.read<TrailsBloc>().add(
              //       TrailsEvent.upsertTrail(
              //         id: trail?.id,
              //         name: name,
              //         elevation: elevation,
              //         distance: distance,
              //         // gpxTrack: gpxTrack,
              //         url: url,
              //         description: description,
              //         // fileExtension: fileExtension,
              //       ),
              //     );
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
