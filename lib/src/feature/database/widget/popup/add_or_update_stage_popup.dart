part of '../stages_list_page.dart';

Future<void> addStagePopup(BuildContext context, {required Race race}) {
  return _upsertStagePopup(context, race: race);
}

Future<void> updateStagePopup(BuildContext context, {required Stage stage}) {
  return _upsertStagePopup(context, stage: stage);
}

Future<void> _upsertStagePopup(
  BuildContext context, {
  Stage? stage,
  Race? race,
}) async {
  late int raceId;
  if (stage == null) {
    raceId = race!.id;
  } else {
    raceId = stage.raceId;
  }

  var name = stage?.name ?? '';
  var description = stage?.description;
  var trailId = stage?.trailId;
  var isActive = stage?.isActive ?? true;

  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      title: stage == null
          ? Text(Localization.current.I18nDatabase_addStage)
          : Text(name),
      content: Form(
        key: formKey,
        onChanged: () {
          final formState = primaryFocus?.context;
          if (formState != null) {
            Form.of(formState).validate();
          }
        },
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            // Название этапа
            TextFormField(
              autofocus: true,
              initialValue: stage?.name,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_stageName,
              ),
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
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_stageDescription,
              ),
              onChanged: (value) {
                description = value;
              },
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
            //ToDo: Выбор трейла для спецучастка
            // Трейл этапа
            DropdownButtonFormField<int?>(
              value: trailId,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trail,
              ),
              onChanged: (value) {
                trailId = value;
              },
              items: [],
            ),

            // Активен ли этап (если не активен, это может обозначать его отмену)
            FormField<bool>(
              initialValue: isActive,
              builder: (FormFieldState<bool> state) {
                return SwitchListTile(
                  title: Text('Активен'),
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
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              context.read<DatabaseBloc>().add(
                    DatabaseEvent.upsertStage(
                      id: stage?.id,
                      name: name,
                      description: description,
                      raceId: raceId,
                      trailId: trailId,
                      isActive: isActive,
                    ),
                  );
              Navigator.of(context).pop();
            }
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );

  
}

// List<DropdownMenuItem<int?>>? _builder(BuildContext context) {
//   final bloc = context.read<DatabaseBloc>();
//   final trails = bloc.state.trails;
//   return trails.map<DropdownMenuItem<int>>((value) { }).toList();
// }