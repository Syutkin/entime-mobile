import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/widget/expanded_alert_dialog.dart';
import '../../../../constants/date_time_formats.dart';
import '../../database.dart';

Future<void> finishDetails(BuildContext context, Finish item) async =>
    showDialog<void>(
      context: context,
      builder: (context) => FinishDetailsPopup(item),
    );

class FinishDetailsPopup extends StatelessWidget {
  const FinishDetailsPopup(
    this.item, {
    super.key,
  });

  final Finish item;

  @override
  Widget build(BuildContext context) {
    return ExpandedAlertDialog(
      title: Text(Localization.current.I18nProtocol_finishTimeCutoff),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputDecorator(
            decoration: InputDecoration(
              labelText: Localization.current.I18nFinish_finishTime,
              border: InputBorder.none,
            ),
            child: Text(item.finishTime),
          ),
          InputDecorator(
            decoration: InputDecoration(
              labelText: Localization.current.I18nFinish_finishTimestamp,
              border: InputBorder.none,
            ),
            child: Text(DateFormat(longTimeFormat).format(item.timestamp)),
          ),
          InputDecorator(
            decoration: InputDecoration(
              labelText: Localization.current.I18nNtp_ntpOffset,
              border: InputBorder.none,
            ),
            child: Text('${item.ntpOffset}'),
          ),
          InputDecorator(
            decoration: InputDecoration(
              labelText: Localization.current.I18nProtocol_number,
              border: InputBorder.none,
            ),
            child: Text('${item.number ?? ""}'),
          ),
          InputDecorator(
            decoration: InputDecoration(
              labelText: Localization.current.I18nProtocol_type,
              border: InputBorder.none,
            ),
            child: item.isManual
                ? Text(Localization.current.I18nFinish_manualTime)
                : Text(Localization.current.I18nFinish_automaticTime),
          ),
          InputDecorator(
            decoration: InputDecoration(
              labelText: Localization.current.I18nFinish_hiddenCutoff,
              border: InputBorder.none,
            ),
            child: item.isHidden
                ? Text(Localization.current.I18nCore_yes)
                : Text(Localization.current.I18nCore_no),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    );
  }
}
