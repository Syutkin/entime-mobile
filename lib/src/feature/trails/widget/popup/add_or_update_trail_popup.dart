part of '../trails_list_page.dart';

Future<void> addTrailPopup(BuildContext context) {
  return _upsertTrailPopup(context);
}

Future<void> updateTrailPopup(BuildContext context, TrailInfo trail) {
  // Если у трейла есть трек, то для показа начальной кнопки "удалить" трек,
  // эмитим стейт с "dummy" треком
  if (trail.fileId != null) {
    context.read<TrailsBloc>().add(
      TrailsEvent.emitTrack(
        track: TrackFile(
          id: -1,
          name: '',
          size: 0,
          hashSha1: '',
          data: Uint8List(0),
          timestamp: DateTime.parse('2000-01-01'),
        ),
      ),
    );
  }
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
  var fileName = trail?.fileName ?? '';
  final fileExtension = trail?.fileExtension ?? '';
  if (fileExtension.isNotEmpty) {
    fileName += '.$fileExtension';
  }
  final filePickerController = TextEditingController()..text = fileName;

  IconButton addTrackIconButton(TrailsBloc bloc, IFilePickerProvider filePicker) {
    return IconButton(
      key: const Key('addTrackIconButton'),
      onPressed: () async {
        file = await filePicker.pickFile();
        // file =
        //     (await FilePicker.platform.pickFiles(
        //       // type: FileType.custom,
        //       // allowedExtensions: ['csv'],
        //       // withData: true,
        //     ))?.files.first;
        final path = file?.path;
        if (file != null && path != null) {
          deleteTrack = false;
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
      key: const Key('removeTrackIconButton'),
      onPressed: () async {
        deleteTrack = true;
        file = null;
        bloc.add(const TrailsEvent.unloadTrack());
        filePickerController.text = '';
      },
      icon: const Icon(Icons.delete),
    );
  }

  var waitingForSave = false;
  var saveCompleted = false;

  return showDialog<void>(
    context: context,
    builder: (context) => BlocConsumer<TrailsBloc, TrailsState>(
      listener: (context, state) {
        if (state case SavingTrack(:final progress) when progress >= 1.0) {
          saveCompleted = true;
        }
        if (waitingForSave && saveCompleted && state is Initialized) {
          waitingForSave = false;
          saveCompleted = false;
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        final bloc = context.read<TrailsBloc>();
        final filepicker = context.read<IFilePickerProvider>();
        final size = Theme.of(context).iconTheme.size ?? 24;
        final isBusy = state is LoadingTrack || state is SavingTrack;
        final canClose = state is! SavingTrack;
        return ExpandedAlertDialog(
          title: trail == null ? Text(Localization.current.I18nDatabase_editRace) : Text(name),
          content: Form(
            key: formKey,
            child: ListView(
              // shrinkWrap: true,
              children: <Widget>[
                // Название трейла
                TextFormField(
                  controller: nameController,
                  autofocus: true,
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trailName),
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: filePickerController,
                        decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trailGpxTrack),
                        keyboardType: TextInputType.none,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (_) {
                          final size = switch (state) {
                            Initialized(:final track) => track?.size,
                            _ => null,
                          };
                          // max upload size in bytes
                          if (size != null && size > uploadMaxSize) {
                            return Localization.current.I18nDatabase_uploadLimit(uploadMaxSize / 1024 / 1024);
                          }
                          return null;
                        },
                      ),
                    ),

                    switch (state) {
                      Initial() => const SizedBox.shrink(),
                      Initialized() =>
                        state.track == null ? addTrackIconButton(bloc, filepicker) : removeTrackIconButton(bloc),
                      LoadingTrack() => Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          height: size,
                          width: size,
                          child: _FilledCircularProgress(progress: state.progress),
                        ),
                      ),
                      SavingTrack() => Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          height: size,
                          width: size,
                          child: _FilledCircularProgress(progress: state.progress),
                        ),
                      ),
                    },
                  ],
                ),
                // distance
                TextFormField(
                  initialValue: (distance ?? '').toString(),
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trailDistance),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      distance = null;
                      return null;
                    } else {
                      final number = int.tryParse(value);
                      if (number != null && number > 0) {
                        distance = number;
                        return null;
                      } else {
                        return Localization.current.I18nDatabase_incorrectTrailDistance;
                      }
                    }
                  },
                ),
                // elevation
                TextFormField(
                  initialValue: (elevation ?? '').toString(),
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trailElevation),
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
                        return Localization.current.I18nDatabase_incorrectTrailElevation;
                      }
                    }
                  },
                ),
                TextFormField(
                  initialValue: url,
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trailUrl),
                  keyboardType: TextInputType.url,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      url = null;
                      return null;
                    } else {
                      if (value.isValidUrl) {
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
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trailDescription),
                  onChanged: (value) {
                    description = value;
                  },
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ],
            ),
          ),
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: canClose
                ? () {
                    Navigator.of(context).pop();
                  }
                : null,
            onOkPressed: isBusy
                ? null
                : () {
                    if (formKey.currentState!.validate()) {
                      final path = file?.path;
                      final hasNewFile = path != null && path.isNotEmpty;
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
                      if (hasNewFile) {
                        waitingForSave = true;
                        saveCompleted = false;
                        return;
                      }
                      Navigator.of(context).pop();
                    }
                  },
          ),
        );
      },
    ),
  );
}

class _FilledCircularProgress extends StatelessWidget {
  const _FilledCircularProgress({required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.primary;
    final backgroundColor = color.withValues(alpha: 0.2);

    return CustomPaint(
      painter: _FilledCircularProgressPainter(
        progress: progress,
        color: color,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class _FilledCircularProgressPainter extends CustomPainter {
  const _FilledCircularProgressPainter({
    required this.progress,
    required this.color,
    required this.backgroundColor,
  });

  final double progress;
  final Color color;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final clamped = progress.isNaN ? 0.0 : progress.clamp(0.0, 1.0);
    final rect = Offset.zero & size;
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = backgroundColor;
    canvas.drawOval(rect, paint);

    if (clamped <= 0) {
      return;
    }

    paint.color = color;
    canvas.drawArc(rect, -math.pi / 2, 2 * math.pi * clamped, true, paint);
  }

  @override
  bool shouldRepaint(_FilledCircularProgressPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.color != color ||
        oldDelegate.backgroundColor != backgroundColor;
  }
}
