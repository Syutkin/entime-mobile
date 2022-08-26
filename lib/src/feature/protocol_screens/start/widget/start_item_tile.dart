import 'package:flutter/material.dart';

import '../../../../common/utils/helper.dart';
import '../../../protocol/protocol.dart';

class StartItemTile extends StatelessWidget {
  final GestureTapCallback? onTap;
  final DismissDirectionCallback? onDismissed;
  final StartItem item;
  final bool isHighlighted;
  final String? countdown;

  const StartItemTile({
    Key? key,
    required this.item,
    this.isHighlighted = false,
    this.onTap,
    this.onDismissed,
    this.countdown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
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
              'Не стартовал',
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
                        countdown ?? item.starttime ?? '',
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
                      child: Text(strip(item.manualcorrection.toString())),
                    ),
                  ),
                  Flexible(
                    flex: 25,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        strip(item.automaticcorrection.toString()),
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
