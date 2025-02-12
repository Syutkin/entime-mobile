part of '../stages_list_page.dart';

Future<void> addStagePopup(BuildContext context, {required Race race}) {
  return _upsertStagePopup(context, race: race);
}

Future<void> updateStagePopup(BuildContext context, {required Stage stage}) {
  return _upsertStagePopup(context, stage: stage);
}

Future<void> _upsertStagePopup(BuildContext context, {Stage? stage, Race? race}) async {
  late int raceId;
  if (stage == null) {
    raceId = race!.id;
  } else {
    raceId = stage.raceId;
  }

  var name = stage?.name ?? '';
  var description = stage?.description;
  var trailId = stage?.trailId;
  // Трейл у которого id = trailId
  TrailInfo? trail;
  var isActive = stage?.isActive ?? true;

  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder:
        (context) => ExpandedAlertDialog(
          title: stage == null ? Text(Localization.current.I18nDatabase_addStage) : Text(name),
          content: Form(
            key: formKey,
            child: ListView(
              // shrinkWrap: true,
              children: <Widget>[
                // Название этапа
                TextFormField(
                  autofocus: true,
                  initialValue: stage?.name,
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_stageName),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return Localization.current.I18nDatabase_enterStageName;
                    }
                    name = value;
                    return null;
                  },
                ),
                // Описание этапа
                TextFormField(
                  initialValue: description,
                  decoration: InputDecoration(labelText: Localization.current.I18nDatabase_stageDescription),
                  onChanged: (value) {
                    description = value;
                  },
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
                // Трейл этапа
                BlocBuilder<TrailsBloc, TrailsState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) {
                        return const SizedBox.shrink();
                      },
                      loadingTrack: (_) {
                        return const SizedBox.shrink();
                      },
                      initialized: (state) {
                        if (trailId != null) {
                          context.read<TrailsBloc>().state.mapOrNull(
                            initialized: (state) {
                              for (final t in state.trails) {
                                if (t.id == trailId) {
                                  trail = t;
                                  break;
                                }
                              }
                            },
                          );
                        }
                        return DropdownSearch<TrailInfo>(
                          selectedItem: trail,
                          items: (filter, loadProps) => state.trails,
                          itemAsString: (value) => value.name,
                          compareFn: (item1, item2) => item1.name == item2.name,
                          onChanged: (value) {
                            trail = value;
                            trailId = trail?.id;
                          },
                          decoratorProps: DropDownDecoratorProps(
                            decoration: InputDecoration(labelText: Localization.current.I18nDatabase_trail),
                          ),
                          suffixProps: const DropdownSuffixProps(clearButtonProps: ClearButtonProps(isVisible: true)),
                          popupProps: PopupProps.menu(
                            showSearchBox: true,
                            searchDelay: Duration.zero,
                            searchFieldProps: TextFieldProps(
                              decoration: InputDecoration(hintText: Localization.current.I18nDatabase_searchTrail),
                            ),
                            // fit: FlexFit.loose,
                          ),
                        );
                      },
                    );
                  },
                ),

                // Активен ли этап (если не активен, это может обозначать его отмену)
                FormField<bool>(
                  initialValue: isActive,
                  builder: (FormFieldState<bool> state) {
                    return SwitchListTile(
                      title: Text(Localization.current.I18nDatabase_trailIsActive),
                      value: isActive,
                      onChanged: (bool value) {
                        isActive = value;
                        state.didChange(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          actions: cancelOkButtons(
            context: context,
            onCancelPressed: () {
              Navigator.of(context).pop();
            },
            onOkPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<DatabaseBloc>().add(
                  DatabaseEvent.upsertStage(
                    id: stage?.id,
                    name: name,
                    description: description,
                    raceId: raceId,
                    trailId: trailId,
                    isActive: isActive,
                    removeTrailId: trailId == null,
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          ),
        ),
  );
}
