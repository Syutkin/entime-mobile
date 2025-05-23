part of '../../feature/database/widget/start_list_page.dart';

Future<bool?> warningCancelOkPopup({required BuildContext context, required String text}) async => showDialog<bool>(
  context: context,
  builder: (context) => AlertDialog(
    title: Text(Localization.current.I18nCore_warning),
    content: Text(text),
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
