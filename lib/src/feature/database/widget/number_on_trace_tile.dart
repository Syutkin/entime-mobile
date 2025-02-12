import 'package:flutter/material.dart';

class NumberOnTraceTile extends StatelessWidget {
  const NumberOnTraceTile({
    required this.number,
    super.key,
    this.onTap,
    this.onTapDown,
    this.onLongPress,
    this.isSelected = false,
  });
  final int number;
  final bool isSelected;
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureLongPressCallback? onLongPress;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 3, right: 3),
    child: Draggable(
      feedback: _dragTile(context),
      childWhenDragging: ConstrainedBox(constraints: const BoxConstraints(minWidth: 50, minHeight: 50)),
      data: number,
      child: _tile(context),
    ),
  );

  Material _tile(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        onTap: () {
          onTap?.call();
        },
        onTapDown: (details) {
          onTapDown?.call(details);
        },
        onLongPress: () {
          onLongPress?.call();
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 50, minHeight: 50),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color:
                  isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: DefaultTextStyle.of(context).style.apply(
                  fontSizeFactor: 2,
                  color:
                      isSelected
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
        ),
        // child: _colorButton(context, number),
      ),
    );
  }

  Material _dragTile(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primaryContainer,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 50, minHeight: 50),
        child: Center(
          child: Text(
            number.toString(),
            style: DefaultTextStyle.of(context).style.apply(
              fontSizeFactor: 2,
              color:
                  isSelected
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }

  // Widget _numberOnTrace(BuildContext context, int number) => ConstrainedBox(
  //   constraints: const BoxConstraints(minWidth: 50, minHeight: 50),
  //   child: Ink(
  //     decoration: BoxDecoration(
  //       borderRadius: const BorderRadius.all(Radius.circular(12)),
  //       color: isSelected
  //           ? Theme.of(context).colorScheme.primary
  //           : Theme.of(context).colorScheme.primaryContainer,
  //     ),
  //     child: Center(
  //       child: Text(
  //         number.toString(),
  //         style: DefaultTextStyle.of(context).style.apply(
  //               fontSizeFactor: 2,
  //               color: isSelected
  //                   ? Theme.of(context).colorScheme.onPrimary
  //                   : Theme.of(context).colorScheme.onPrimaryContainer,
  //             ),
  //       ),
  //     ),
  //   ),
  // );
}
