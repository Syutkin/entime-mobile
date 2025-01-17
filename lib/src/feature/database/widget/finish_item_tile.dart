import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/extensions.dart';
import '../../settings/settings.dart';
import '../database.dart';

class FinishItemTile extends StatelessWidget {
  const FinishItemTile({
    required this.item,
    super.key,
    this.onTap,
    this.onTapDown,
    this.onLongPress,
    this.onDismissed,
    this.onAccept,
  });
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureLongPressCallback? onLongPress;
  final DismissDirectionCallback? onDismissed;
  final DragTargetAcceptWithDetails<int>? onAccept;
  final Finish item;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(2),
        child: Text(
          Localization.current.I18nProtocol_hide,
          style: DefaultTextStyle.of(context).style.apply(
                fontSizeFactor: 1.5,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      onDismissed: (direction) {
        onDismissed?.call(direction);
      },
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        onTapDown: (details) {
          onTapDown?.call(details);
        },
        onTap: () {
          onTap?.call();
        },
        onLongPress: () {
          onLongPress?.call();
        },
        child: DragTarget<int>(
          // не даёт переписать номер через drag'n'drop
          onWillAcceptWithDetails: (details) {
            if (item.number != null) {
              return false;
            } else {
              return true;
            }
          },
          onAcceptWithDetails: (details) {
            onAccept?.call(details);
          },
          builder: (context, candidateData, rejectedData) {
            return BlocBuilder<SettingsCubit, AppSettings>(
              builder: (context, state) {
                final difference = item.finishTime.toDateTime()?.difference(
                          item.timestamp
                              // При подсчёте разницы учитываем записанный NTP офсет
                              .add(Duration(milliseconds: item.ntpOffset)),
                        ) ??
                    Duration.zero;
                final showDifference = state.showFinishDifference;
                Color? cardColor;
                Color? textColor;
                final isBigDifference = difference.inMilliseconds.abs() >
                    state.finishDifferenceThreshold;

                if (isBigDifference &&
                    state.showColorFinishDifference) {
                  cardColor = Theme.of(context).colorScheme.error;
                  textColor = Theme.of(context).colorScheme.onError;
                }
                // if (state.settings.showFinishDifference) {
                //   final isBigDifference = difference.inMilliseconds.abs() >
                //       state.settings.finishDifferenceThreshold;
                //   if (isBigDifference &&
                //       state.settings.showColorFinishDifference) {
                //     cardColor = Theme.of(context).colorScheme.error;
                //     textColor = Theme.of(context).colorScheme.onError;
                //   }
                // }
                return Card(
                  color: cardColor,
                  margin: const EdgeInsets.all(2),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 15,
                          child: Align(
                            child: _addIcon(
                              context,
                              item.isManual,
                              textColor,
                            ), //Icon(Icons.add_circle),
                          ),
                        ),
                        Flexible(
                          flex: showDifference ? 45 : 65,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              item.finishTime.strip(),
                              style: DefaultTextStyle.of(context).style.apply(
                                    fontSizeFactor: 1.5,
                                    color: textColor,
                                  ),
                            ),
                          ),
                        ),
                        if (showDifference)
                          Flexible(
                            flex: 20,
                            child: Align(
                              child: Text(
                                '${difference.inMilliseconds}',
                                style: DefaultTextStyle.of(
                                  context,
                                ).style.apply(color: textColor),
                              ),
                            ),
                          ),
                        Flexible(
                          flex: 20,
                          child: Align(
                            child: Text(
                              candidateData.isEmpty
                                  ? item.number.toString().strip()
                                  : candidateData.first.toString(),
                              style: DefaultTextStyle.of(context).style.apply(
                                    fontSizeFactor: 2,
                                    color: textColor,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _addIcon(BuildContext context, bool manual, Color? color) {
    if (manual) {
      return Icon(
        MdiIcons.handBackLeft,
        color: color ?? Theme.of(context).colorScheme.onSurface,
      );
    } else {
      return Icon(
        MdiIcons.cpu64Bit,
        color: color ?? Theme.of(context).colorScheme.onSurface,
      );
    }
  }
}
