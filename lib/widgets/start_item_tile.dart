import 'package:flutter/material.dart';

import 'package:entime/models/protocol.dart';
import 'package:entime/utils/helper.dart';

class StartItemTile extends StatelessWidget {
  final GestureTapCallback? onTap;
  final DismissDirectionCallback? onDismissed;
  final StartItem item;
  final String? activeStartTime;

  const StartItemTile({
    Key? key,
    required this.item,
    this.activeStartTime,
    this.onTap,
    this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Dismissible(
        key: UniqueKey(),
        background: Container(
            color: Theme.of(context).colorScheme.secondary,
            alignment: const Alignment(1.0, 0.0),
            padding: const EdgeInsets.all(5.0),
            child: Text('Не стартовал',
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0))),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          onDismissed?.call(direction);
        },
        child: Card(
          margin: const EdgeInsets.all(2),
          color: item.starttime == activeStartTime
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(children: <Widget>[
              Flexible(
                flex: 15,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    item.number.toString(),
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 2.0, fontWeightDelta: 2),
                  ),
                ),
              ),
              Flexible(
                flex: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(item.starttime ?? '',
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 1.5)),
                ),
              ),
              Flexible(
                flex: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(strip(item.manualcorrection.toString())),
                ),
              ),
              Flexible(
                flex: 15,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(strip(item.automaticcorrection.toString()),
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 1.5)),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
