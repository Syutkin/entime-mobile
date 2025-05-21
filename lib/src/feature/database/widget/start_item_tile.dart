import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/utils/extensions.dart';
import '../../settings/settings.dart';
import '../database.dart';

class StartItemTile extends StatelessWidget {
  const StartItemTile({
    required this.item,
    super.key,
    this.isHighlighted = false,
    this.onTap,
    this.onTapDown,
    this.onLongPress,
    this.onDismissed,
    this.countdown,
  });
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureLongPressCallback? onLongPress;
  final DismissDirectionCallback? onDismissed;
  final ParticipantAtStart item;
  final bool isHighlighted;
  final String? countdown;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, state) {
        var difference = Duration.zero;
        var cardColor = isHighlighted ? Theme.of(context).colorScheme.primaryContainer : null;
        var textColor = isHighlighted ? Theme.of(context).colorScheme.onPrimaryContainer : null;

        if (item.timestamp != null) {
          difference =
              item.automaticStartTime.toDateTime()?.difference(
                // При подсчёте разницы учитываем записанный NTP офсет
                item.timestamp!.add(Duration(milliseconds: item.ntpOffset ?? 0)),
              ) ??
              Duration.zero;
          // ToDo: показывать разницу в числах?
          // final showDifference = state.settings.showStartDifference;

          final isBigDifference = difference.inMilliseconds.abs() > state.startDifferenceThreshold;

          if (isBigDifference && state.showColorStartDifference) {
            cardColor = Theme.of(context).colorScheme.error;
            textColor = Theme.of(context).colorScheme.onError;
          }
        }

        final isNotActive =
            item.statusId != ParticipantStatus.active.index ||
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
          onTapDown: onTapDown?.call,
          onLongPress: onLongPress?.call,
          child: Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                Localization.current.I18nCore_dns,
                style: DefaultTextStyle.of(
                  context,
                ).style.apply(fontSizeFactor: 1.5, color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
            ),
            direction: DismissDirection.endToStart,
            confirmDismiss: (_) {
              return setDnsPopup(context: context, number: item.number);
            },
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
                          style: DefaultTextStyle.of(
                            context,
                          ).style.apply(fontSizeFactor: 2, fontWeightDelta: 2, color: textColor),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 30,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          countdown ?? item.startTime,
                          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5, color: textColor),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 20,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          isNotActive ? status : item.manualCorrection.toString().strip(),
                          style: DefaultTextStyle.of(context).style.apply(color: textColor),
                        ),
                      ),
                    ),
                    if (state.useTimestampForAutomaticStamps)
                      Flexible(
                        flex: 5,
                        child: Align(alignment: Alignment.centerLeft, child: Icon(MdiIcons.cellphone, size: 20)),
                      ),
                    Flexible(
                      flex: state.useTimestampForAutomaticStamps ? 25 : 30,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.useTimestampForAutomaticStamps
                              ? item.timestampCorrection.toString().strip()
                              : item.automaticCorrection.toString().strip(),
                          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5, color: textColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
