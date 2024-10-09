import 'package:flutter/material.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/helper.dart';
import '../drift/app_database.dart';

class StartItemTile extends StatelessWidget {
  final GestureTapCallback? onTap;
  final DismissDirectionCallback? onDismissed;
  final ParticipantAtStart item;
  final bool isHighlighted;
  final String? countdown;

  const StartItemTile({
    super.key,
    required this.item,
    this.isHighlighted = false,
    this.onTap,
    this.onDismissed,
    this.countdown,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          onTap?.call();
        },
        child: Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(5),
            child: Text(
              Localization.current.I18nStart_didNotStart,
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2),
            ),
          ),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            onDismissed?.call(direction);
          },
          child: Card(
            margin: const EdgeInsets.all(2),
            color: isHighlighted
                //TODO: test colors
                ? Theme.of(context).colorScheme.background
                : Theme.of(context).colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 20,
                    child: Align(
                      child: Text(
                        item.number.toString(),
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 2, fontWeightDelta: 2),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        countdown ?? item.startTime,
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 25,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(item.manualCorrection.toString().strip()),
                    ),
                  ),
                  Flexible(
                    flex: 25,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.automaticCorrection.toString().strip(),
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
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
