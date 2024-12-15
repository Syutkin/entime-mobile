part of '../races_list_page.dart';

Future<bool?> deleteRacePopup({
  required BuildContext context,
  required String raceName,
}) async =>
    showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(Localization.current.I18nCore_warning),
        content: Text(Localization.current.I18nDatabase_deleteRace(raceName)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(MaterialLocalizations.of(context).okButtonLabel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
          ),
        ],
      ),
    );