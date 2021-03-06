import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/protocol.dart';
import '../utils/helper.dart';

class FinishItemTile<T extends Object> extends StatelessWidget {
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureLongPressCallback? onLongPress;
  final DismissDirectionCallback? onDismissed;
  final DragTargetAccept<T>? onAccept;
  final FinishItem item;

  const FinishItemTile({
    Key? key,
    required this.item,
    this.onTap,
    this.onTapDown,
    this.onLongPress,
    this.onDismissed,
    this.onAccept,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
          color: Theme.of(context).colorScheme.secondary,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(5),
          child: Text('Скрыть',
              style: DefaultTextStyle.of(context).style.apply(
                  fontSizeFactor: 1.5,
                  color: Theme.of(context).colorScheme.onSecondary))),
      direction: DismissDirection.horizontal,
      onDismissed: (direction) {
        onDismissed?.call(direction);
      },
      child: GestureDetector(
        onTapDown: (details) {
          onTapDown?.call(details);
        },
        child: DragTarget(
          // не даёт переписать номер через drag'n'drop
          onWillAccept: (data) {
            if (item.number != null) {
              return false;
            } else {
              return true;
            }
          },
          onAccept: (data) {
            onAccept?.call(data! as T);
          },
          builder: (context, candidateData, rejectedData) {
            return Card(
              margin: const EdgeInsets.all(2),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  onTap?.call();
                },
                onLongPress: () {
                  onLongPress?.call();
                },
                title: Row(children: <Widget>[
                  Flexible(
                    flex: 15,
                    child: Align(
                      alignment: Alignment.center,
                      child: _addIcon(item.manual), //Icon(Icons.add_circle),
                    ),
                  ),
                  Flexible(
                    flex: 65,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(strip(item.finishtime),
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 2)),
                    ),
                  ),
                  Flexible(
                    flex: 20,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                          candidateData.isEmpty
                              ? strip(item.number.toString())
                              : candidateData.first.toString(),
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 2)),
                    ),
                  ),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _addIcon(int? manual) {
    if (manual == 1) {
      return const Icon(MdiIcons.handBackLeft);
    } else {
      return const Icon(MdiIcons.cpu64Bit);
    }
  }
}
