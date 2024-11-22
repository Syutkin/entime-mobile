part of '../trails_list_page.dart';

Future<void> addTrailPopup(BuildContext context) {
  return _upsertTrailPopup(context);
}

Future<void> updateTrailPopup(BuildContext context, Trail trail) {
  return _upsertTrailPopup(context, trail);
}

Future<void> _upsertTrailPopup(BuildContext context, [Trail? trail]) async {
  var name = trail?.name ?? '';
  var distance = trail?.distance;
  var elevation = trail?.elevation;
  final gpxTrack = trail?.gpxTrack;
  final fileExtension = trail?.fileExtension;
  var url = trail?.url;
  var description = trail?.description;
  final formKey = GlobalKey<FormState>();
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
              initialValue: name,
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
            // ToDo: загрузка gpx трека
            TextFormField(
              // initialValue: location,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailGpxTrack,
              ),
              // onChanged: (value) {
              //   location = value;
              // },
            ),
            TextFormField(
              initialValue: url,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_trailUrl,
              ),
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
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              context.read<TrailsBloc>().add(
                    TrailsEvent.upsertTrail(
                      id: trail?.id,
                      name: name,
                      elevation: elevation,
                      distance: distance,
                      gpxTrack: gpxTrack,
                      url: url,
                      description: description,
                      fileExtension: fileExtension,
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
