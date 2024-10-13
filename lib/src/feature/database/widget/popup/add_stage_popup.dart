part of '../stages_list_page.dart';

Future<void> addStagePopup(BuildContext context, {required int raceId}) async {
  String stageName = '';
  final formKey = GlobalKey<FormState>();
  int? trailId;
  return showDialog<void>(
    context: context,
    builder: (context) => ExpandedAlertDialog(
      title: Text(Localization.current.I18nDatabase_addStage),
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
                labelText: Localization.current.I18nDatabase_stageName,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return Localization.current.I18nDatabase_enterStageName;
                }
                stageName = value;
                return null;
              },
            ),
            //ToDo: Выбор трейла для спецучастка
            // TextFormField(
            //   decoration: InputDecoration(
            //     labelText: Localization.current.I18nDatabase_trail,
            //   ),
            //   keyboardType: TextInputType.none,
            // ),
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
                    DatabaseEvent.addStage(
                      raceId: raceId,
                      name: stageName,
                      trailId: trailId,
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
