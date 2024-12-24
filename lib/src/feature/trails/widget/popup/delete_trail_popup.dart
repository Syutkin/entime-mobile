part of '../trails_list_page.dart';

Future<bool?> deleteTrailPopup({
  required BuildContext context,
  required String trailName,
}) async =>
    showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(Localization.current.I18nCore_warning),
        content: Text(Localization.current.I18nDatabase_deleteTrail(trailName)),
        actions: cancelOkButtons(
          context: context,
          onCancelPressed: () {
            Navigator.of(context).pop(false);
          },
          onOkPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ),
    );
