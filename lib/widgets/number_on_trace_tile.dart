import 'package:flutter/material.dart';

class NumberOnTraceTile extends StatelessWidget {
  final int number;
  final bool isSelected;
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureLongPressCallback? onLongPress;

  const NumberOnTraceTile({
    Key? key,
    required this.number,
    this.onTap,
    this.onTapDown,
    this.onLongPress,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      feedback: _numberOnTrace(context, number),
      childWhenDragging: Container(
        margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        constraints: const BoxConstraints(minWidth: 50, minHeight: 50),
      ),
      data: number,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        onTapDown: (details) {
          onTapDown?.call(details);
        },
        onLongPress: () {
          onLongPress?.call();
        },
        child: _numberOnTrace(context, number),
      ),
    );
  }

  Widget _numberOnTrace(BuildContext context, int number) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      constraints: const BoxConstraints(minWidth: 50, minHeight: 50),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: isSelected
            ? Theme.of(context).colorScheme.background
            : Theme.of(context).colorScheme.secondary,
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: DefaultTextStyle.of(context).style.apply(
              fontSizeFactor: 2,
              color: isSelected
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.onSecondary),
        ),
      ),
    );
  }
}
