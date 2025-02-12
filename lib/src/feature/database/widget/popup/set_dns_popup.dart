part of '../start_list_page.dart';

Future<bool?> setDnsPopup({required BuildContext context, required int number}) async => showDialog<bool>(
  context: context,
  builder:
      (context) => AlertDialog(
        title: Text(Localization.current.I18nCore_confirmation),
        content: Text(Localization.current.I18nStart_setDnsConfirmation(number)),
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
