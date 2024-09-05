part of '../races_list_page.dart';

Future<void> addRacePopup(BuildContext context) async {
  String raceName = '';
  final dateController = TextEditingController();
  DateTime? startDate;
  DateTime? finishDate;
  final languageCode = Localizations.localeOf(context).languageCode;
  final formKey = GlobalKey<FormState>();
  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      title: Text(Localization.current.I18nDatabase_addRace),
      content: Form(
        key: formKey,
        onChanged: () {
          final formState = primaryFocus?.context;
          if (formState != null) {
            Form.of(formState).validate();
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: Localization.current.I18nDatabase_raceName,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return Localization.current.I18nDatabase_enterRaceName;
                }
                raceName = value;
                return null;
              },
            ),
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
                final DateFormat formatter = DateFormat.yMd(languageCode);
                if (startDate != null && finishDate != null) {
                  dateController.text =
                      '${formatter.format(startDate!)} - ${formatter.format(finishDate!)}';
                }
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
                    DatabaseEvent.addRace(
                      Race(
                        name: raceName,
                        startDate: startDate?.toIso8601String(),
                        finishDate: finishDate?.toIso8601String(),
                        isDeleted: false,
                      ),
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
