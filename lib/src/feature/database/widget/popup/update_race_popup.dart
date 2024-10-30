part of '../races_list_page.dart';

Future<void> updateRacePopup(BuildContext context, Race race) async {
  var name = race.name;
  var startDate =
      race.startDate != null ? DateTime.tryParse(race.startDate!) : null;
  var finishDate =
      race.finishDate != null ? DateTime.tryParse(race.finishDate!) : null;
  var location = race.location;
  var url = race.url;
  var description = race.description;
  final languageCode = Localizations.localeOf(context).languageCode;
  final DateFormat formatter = DateFormat.yMd(languageCode);
  final dateController = TextEditingController();
  if (startDate != null && finishDate != null) {
    dateController.text =
        '${formatter.format(startDate)} - ${formatter.format(finishDate)}';
  }
  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      // title: Text(Localization.current.I18nDatabase_editRace),
      title: Text(name),
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
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Название гонки
            TextFormField(
              initialValue: name,
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_raceName,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return Localization.current.I18nDatabase_enterRaceName;
                } else {
                  name = value;
                  return null;
                }
              },
            ),
            // Даты проведения
            TextFormField(
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_raceDates,
              ),
              controller: dateController,
              keyboardType: TextInputType.none,
              onTap: () async {
                final range = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(const Duration(days: 365)),
                  lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
                );

                startDate = range?.start;
                finishDate = range?.end;

                if (startDate != null && finishDate != null) {
                  dateController.text =
                      '${formatter.format(startDate!)} - ${formatter.format(finishDate!)}';
                }
              },
            ),
            TextFormField(
              initialValue: location,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_raceLocation,
              ),
              onChanged: (value) {
                location = value;
              },
            ),
            TextFormField(
              initialValue: url,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_raceUrl,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  url = '';
                  return null;
                } else {
                  RegExp regExp = RegExp(
                    // Простой валидатор домена
                    r'^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}$',
                    caseSensitive: false,
                    multiLine: false,
                  );
                  final isUrl = regExp.hasMatch(value);
                  if (isUrl) {
                    url = value;
                    return null;
                  } else {
                    return Localization.current.I18nDatabase_incorrectRaceUrl;
                  }
                }
              },
              autovalidateMode: AutovalidateMode.always,
            ),
            TextFormField(
              initialValue: description,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_raceDescription,
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
              context.read<DatabaseBloc>().add(
                    DatabaseEvent.updateRace(
                      id: race.id,
                      name: name,
                      startDate: startDate,
                      finishDate: finishDate,
                      location: location,
                      url: url,
                      description: description,
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
