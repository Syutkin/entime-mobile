part of '../stages_list_page.dart';

Future<bool?> deleteStagePopup({
  required BuildContext context,
  required String stageName,
}) async => showDialog<bool>(
  context: context,
  builder:
      (context) => AlertDialog(
        title: Text(Localization.current.I18nCore_warning),
        content: Text(Localization.current.I18nDatabase_deleteStage(stageName)),
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
