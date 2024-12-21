import 'package:flutter/material.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/extensions.dart';
import '../database.dart';

class StartItemTile extends StatelessWidget {
  const StartItemTile({
    required this.item,
    super.key,
    this.isHighlighted = false,
    this.onTap,
    this.onLongPress,
    this.onDismissed,
    this.countdown,
  });
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final DismissDirectionCallback? onDismissed;
  final ParticipantAtStart item;
  final bool isHighlighted;
  final String? countdown;

  @override
  Widget build(BuildContext context) {
    final cardColor =
        isHighlighted ? Theme.of(context).colorScheme.primaryContainer : null;

    final textColor =
        isHighlighted ? Theme.of(context).colorScheme.onPrimaryContainer : null;

    final isNotActive = item.statusId != ParticipantStatus.active.index ||
        item.participantStatusId != ParticipantStatus.active.index;

    var status = '';
    if (isNotActive) {
      if (item.participantStatusId == ParticipantStatus.dsq.index) {
        status = Localization.current.I18nCore_dsq;
      } else if (item.statusId == ParticipantStatus.dns.index) {
        status = Localization.current.I18nCore_dns;
      } else if (item.statusId == ParticipantStatus.dnf.index) {
        status = Localization.current.I18nCore_dnf;
      }
    }

    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      onTap: onTap?.call,
      onLongPress: onLongPress?.call,
      child: Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Theme.of(context).colorScheme.primaryContainer,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(5),
          child: Text(
            Localization.current.I18nStart_didNotStart,
            style: DefaultTextStyle.of(context).style.apply(
                  fontSizeFactor: 1.5,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          onDismissed?.call(direction);
        },
        child: Card(
          margin: const EdgeInsets.all(2),
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 20,
                  child: Align(
                    child: Text(
                      item.number.toString(),
                      style: DefaultTextStyle.of(context).style.apply(
                            fontSizeFactor: 2,
                            fontWeightDelta: 2,
                            color: textColor,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 30,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      countdown ?? item.startTime,
                      style: DefaultTextStyle.of(context).style.apply(
                            fontSizeFactor: 1.5,
                            color: textColor,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 25,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      isNotActive
                          ? status
                          : item.manualCorrection.toString().strip(),
                      style: DefaultTextStyle.of(context).style.apply(
                            color: textColor,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 25,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item.automaticCorrection.toString().strip(),
                      style: DefaultTextStyle.of(context).style.apply(
                            fontSizeFactor: 1.5,
                            color: textColor,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
