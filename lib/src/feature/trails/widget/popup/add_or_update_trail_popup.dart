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
  var url = trail?.url;
  var description = trail?.description;
  var deleteTrack = false;

  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController()..text = name;
  final filePickerController = TextEditingController()
    ..text = (trail?.fileName ?? '') + (trail?.fileExtension ?? '');

  IconButton addTrackIconButton(TrailsBloc bloc) {
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
            final name = (file?.name.split('.')?..removeLast())?.join('.');
            nameController.text = name ?? '';
          }
        }
      },
      icon: const Icon(Icons.add_location_alt_outlined),
    );
  }

  IconButton removeTrackIconButton(TrailsBloc bloc) {
    return IconButton(
      onPressed: () async {
        deleteTrack = true;
        bloc.add(const TrailsEvent.unloadTrack());
        filePickerController.text = '';
      },
      icon: const Icon(Icons.delete),
    );
  }

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
                        autovalidateMode: AutovalidateMode.always,
                        validator: (_) {
                          return state.maybeMap(
                            initialized: (state) {
                              final size = state.track?.size;
                              // max upload size in bytes
                              if (size != null && size > uploadMaxSize) {
                                return Localization.current
                                    .I18nDatabase_uploadLimit(
                                  uploadMaxSize / 1024 / 1024,
                                );
                              } else {
                                return null;
                              }
                            },
                            orElse: () => null,
                          );
                        },
                      ),
                    ),
                    state.map(
                      initial: (_) {
                        return const SizedBox.shrink();
                      },
                      initialized: (state) {
                        final bloc = context.read<TrailsBloc>();
                        // ToDo: При редактировании трейла, если есть трек
                        // ToDo: во время начальной загрузки сменить кнопку "выбрать" на "удалить"
                        if (state.track == null) {
                          return addTrackIconButton(bloc);
                        } else {
                          return removeTrackIconButton(bloc);
                        }
                      },
                      loadingTrack: (state) {
                        final size = Theme.of(context).iconTheme.size ?? 24;
                        return Padding(
                          padding: const EdgeInsets.all(12),
                          child: SizedBox(
                            height: size,
                            width: size,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
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
              // Создаём новую запись
              if (trail == null) {
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
              } else {
                context.read<TrailsBloc>().add(
                      TrailsEvent.updateTrail(
                        id: trail.id,
                        name: name,
                        elevation: elevation,
                        distance: distance,
                        url: url,
                        description: description,
                        fileId: trail.fileId,
                        deleteTrack: deleteTrack,
                        filePath: path,
                      ),
                    );
              }
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
