import 'dart:math';

import 'package:entime/src/common/widget/cancel_ok_buttons.dart';
import 'package:entime/src/feature/database/logic/validators.dart';
import 'package:entime/src/feature/database/widget/popup/edit_racer_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/widget/expanded_alert_dialog.dart';
import '../../../common/widget/sliver_sub_header_delegate.dart';
import '../../../constants/date_time_formats.dart';
import '../../bluetooth/bluetooth.dart';
import '../../countdown/countdown.dart';
import '../../ntp/bloc/ntp_bloc.dart';
import '../../settings/settings.dart';
import '../database.dart';
import '../logic/filter_start_list.dart';

part 'popup/add_racer_popup.dart';
part 'popup/edit_start_time_popup.dart';
part 'popup/overwrite_start_time_popup.dart';
part 'popup/shift_starts_time.dart';
part 'popup/set_dns_popup.dart';

enum StartPopupMenu { /*detail,*/ edit, shift }

class StartListPage extends StatefulWidget {
  const StartListPage({super.key});

  @override
  State<StartListPage> createState() => _StartListPage();
}

class _StartListPage extends State<StartListPage> {
  final GlobalKey _stackKey = GlobalKey();
  final GlobalKey _countdownKey = GlobalKey();

  late Offset _tapPosition;

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  Widget _startList(List<ParticipantAtStart> startList) => CustomScrollView(
    slivers: [
      SliverPersistentHeader(
        pinned: true,
        delegate: SliverSubHeaderDelegate(minHeight: 56, maxHeight: 56, child: _SliverStartSubHeader()),
      ),
      BlocBuilder<SettingsCubit, AppSettings>(
        buildWhen:
            (previous, current) =>
                previous.showDNS != current.showDNS ||
                previous.showDNF != current.showDNF ||
                previous.showDSQ != current.showDSQ,
        builder: (context, state) {
          final filteredList = filterStartList(
            startList,
            showDNS: state.showDNS,
            showDNF: state.showDNF,
            showDSQ: state.showDSQ,
          );
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: filteredList.length,
              (context, index) {
                final item = filteredList[index];
                var isHighlighted = false;
                return BlocBuilder<CountdownBloc, CountdownState>(
                  buildWhen: (previous, current) {
                    final previousIsHighlighted = item.startTime == _activeStartTime(previous);
                    isHighlighted = item.startTime == _activeStartTime(current);
                    // Обновлять при сдвигании следующего старта (убирать подсветку)
                    if (previousIsHighlighted && !isHighlighted) {
                      return true;
                    } else {
                      // Обновлять только там, где есть обратный отсчёт
                      return isHighlighted &&
                          (switch (previous) {
                                CountdownStateInitial() => null,
                                CountdownStateWorking() => previous.tick.text,
                              } !=
                              switch (current) {
                                CountdownStateInitial() => null,
                                CountdownStateWorking() => current.tick.text,
                              });
                    }
                  },
                  builder:
                      (context, countdownState) => BlocBuilder<SettingsCubit, AppSettings>(
                        buildWhen: (previous, current) => previous.countdownAtStartTime != current.countdownAtStartTime,
                        builder:
                            (context, settingsState) => StartItemTile(
                              item: item,
                              onTap: () async {
                                await editStartTime(context, item);
                              },
                              onTapDown: _storePosition,
                              onLongPress: () async {
                                await _startTilePopup(item);
                              },

                              /// Set DNS on dismissed
                              onDismissed: (direction) {
                                BlocProvider.of<DatabaseBloc>(context).add(
                                  DatabaseEvent.setStatusForStartId(
                                    startId: item.startId,
                                    status: ParticipantStatus.dns,
                                  ),
                                );
                              },
                              isHighlighted: isHighlighted,
                              countdown:
                                  settingsState.countdownAtStartTime && isHighlighted
                                      ? _countdownFromState(countdownState)
                                      : null,
                            ),
                      ),
                );
              },
              // childCount: startList.length,
            ),
          );
        },
      ),
    ],
  );

  Widget _showCountdown() => BlocBuilder<SettingsCubit, AppSettings>(
    //ребилдим, только если изменяются настройки, касаемые обратного отсчёта в круге
    buildWhen:
        (previous, current) =>
            previous.countdown != current.countdown ||
            previous.countdownTop != current.countdownTop ||
            previous.countdownLeft != current.countdownLeft ||
            previous.countdownSize != current.countdownSize,
    builder: (context, settingsState) {
      if (settingsState.countdown) {
        return Positioned(
          left: settingsState.countdownLeft,
          top: settingsState.countdownTop,
          child: BlocBuilder<CountdownBloc, CountdownState>(
            builder: (context, state) {
              switch (state) {
                case CountdownStateInitial():
                  final countdownWidget = CountdownWidget(key: _countdownKey, size: settingsState.countdownSize);
                  return Draggable(
                    feedback: countdownWidget,
                    childWhenDragging: const SizedBox.shrink(),
                    onDragEnd: _placeCountdownWidget,
                    child: countdownWidget,
                  );
                case CountdownStateWorking():
                  final countdownWidget = CountdownWidget(
                    key: _countdownKey,
                    size: settingsState.countdownSize,
                    text: state.tick.text,
                  );
                  return Draggable(
                    feedback: countdownWidget,
                    childWhenDragging: const SizedBox.shrink(),
                    onDragEnd: _placeCountdownWidget,
                    child: countdownWidget,
                  );
              }
            },
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    },
  );

  void _placeCountdownWidget(DraggableDetails dragDetails) {
    final stackRenderBox = _getRenderBox(_stackKey);
    final countdownRenderBox = _getRenderBox(_countdownKey);
    if (stackRenderBox != null && countdownRenderBox != null) {
      final stackOffset = stackRenderBox.localToGlobal(Offset.zero);
      final stackSize = stackRenderBox.size;

      var dx = dragDetails.offset.dx;
      var dy = dragDetails.offset.dy - stackOffset.dy;

      if (dx < stackOffset.dx) {
        dx = stackOffset.dx;
      }
      if (dx > stackSize.width - countdownRenderBox.size.width) {
        dx = stackSize.width - countdownRenderBox.size.width;
      }
      if (dy < 0) {
        dy = 0;
      }
      if (dy > stackSize.height - countdownRenderBox.size.height) {
        dy = stackSize.height - countdownRenderBox.size.height;
      }

      final settingsCubit = context.read<SettingsCubit>();
      final settings = settingsCubit.state;
      settingsCubit.update(settings.copyWith(countdownLeft: dx, countdownTop: dy));
    }
  }

  RenderBox? _getRenderBox(GlobalKey key) => key.currentContext!.findRenderObject() as RenderBox?;

  Future<void> _addManualStartTime(DatabaseBloc bloc, DateTime now, int offset) async {
    final stageId = bloc.state.stage?.id;
    if (stageId != null) {
      final deltaInSeconds = context.read<SettingsCubit>().state.deltaInSeconds;
      bloc.add(
        DatabaseEvent.updateManualStartTime(
          stageId: stageId,
          timestamp: now,
          ntpOffset: offset,
          deltaInSeconds: deltaInSeconds,
        ),
      );
    }
  }

  String? _activeStartTime(CountdownState countdownState) => switch (countdownState) {
    CountdownStateInitial() => null,
    CountdownStateWorking(tick: final tick) =>
      tick.nextStartTime != null ? DateFormat(shortTimeFormat).format(tick.nextStartTime!) : '',
  };

  String? _countdownFromState(CountdownState countdownState) => switch (countdownState) {
    CountdownStateInitial() => null,
    CountdownStateWorking() => countdownState.tick.text,
  };

  @override
  Widget build(BuildContext context) {
    return BlocListener<DatabaseBloc, DatabaseState>(
      listener: (context, state) async {
        final databaseBloc = context.read<DatabaseBloc>();
        {
          // Добавление нового стартового времени
          // Если стартовое время уже присвоено другому номеру
          switch (state.notification) {
            case NotificationUpdateStartNumber(
              existedStartingParticipants: final existedStartingParticipants,
              number: final number,
              startTime: final startTime,
            ):
              var text = '';
              for (final element in existedStartingParticipants) {
                if (element.automaticStartTime == null && element.manualStartTime == null) {
                  text += Localization.current.I18nHome_equalStartTime(startTime, element.number, number);
                } else {
                  if (element.automaticStartTime != null) {
                    text += Localization.current.I18nHome_updateAutomaticStartCorrection(
                      number,
                      element.automaticStartTime!,
                    );
                  } else if (element.manualStartTime != null) {
                    text += Localization.current.I18nHome_updateAutomaticStartCorrection(
                      number,
                      element.manualStartTime!,
                    );
                  } else {
                    text += Localization.current.I18nHome_errorAddParticipant(
                      MaterialLocalizations.of(context).cancelButtonLabel,
                    );
                  }
                }
              }
              final update = await overwriteStartTimePopup(context: context, text: text);

              if (update ?? false) {
                final stage = state.stage;
                if (stage != null) {
                  databaseBloc.add(
                    DatabaseEvent.addStartNumber(
                      stage: stage,
                      // stage: widget.stage,
                      number: number,
                      startTime: startTime,
                      forceAdd: true,
                    ),
                  );
                }
              }
            default:
          }
        }
      },
      child: BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          final databaseBloc = context.read<DatabaseBloc>();
          return Scaffold(
            body: Stack(key: _stackKey, children: [_startList(state.participants), _showCountdown()]),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: BlocBuilder<SettingsCubit, AppSettings>(
              buildWhen: (previous, current) => previous.startFab != current.startFab,
              builder: (context, settingsState) {
                if (settingsState.startFab) {
                  return SizedBox(
                    height: settingsState.startFabSize,
                    width: settingsState.startFabSize,
                    child: FittedBox(
                      child: FloatingActionButton(
                        onPressed: () {
                          final now = DateTime.now();
                          final offset = context.read<NtpBloc>().state.offset;
                          _addManualStartTime(databaseBloc, now, offset);
                        },
                        child: Icon(MdiIcons.handBackLeft),
                      ),
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            persistentFooterButtons:
                kReleaseMode ? null : _persistentFooterButtons(context),
          );
        },
      ),
    );
  }

  List<Widget> _persistentFooterButtons(BuildContext context) {
    final databaseBloc = context.read<DatabaseBloc>();
    final stage = databaseBloc.state.stage;
    final stageId = stage!.id;
    return <Widget>[
      // TextButton(
      //   onPressed: () {
      //     BlocProvider.of<DatabaseBloc>(context).add(DatabaseEvent.clearStartResultsDebug(stageId));
      //   },
      //   child: const Icon(Icons.clear_all),
      // ),
      // TextButton(
      //   onPressed: () {
      //     BlocProvider.of<BluetoothBloc>(context).add(
      //       BluetoothEvent.messageReceived(
      //         message: 'V${DateFormat(shortTimeFormat).format(DateTime.now())}#',
      //         stageId: stageId,
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.record_voice_over_rounded),
      // ),
      // TextButton(
      //   onPressed: () {
      //     BlocProvider.of<BluetoothBloc>(context).add(
      //       BluetoothEvent.messageReceived(
      //         message: 'B${DateFormat(shortTimeFormat).format(DateTime.now())}#',
      //         stageId: stageId,
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.volume_up),
      // ),
      // TextButton(
      //   onPressed: () {
      //     databaseBloc.add(
      //       DatabaseEvent.updateAutomaticCorrection(
      //         stageId: stageId,
      //         correction: 1234,
      //         timestamp: DateTime.timestamp(),
      //         startTime: DateFormat(longTimeFormat).format(DateTime.now()),
      //         ntpOffset: 2345,
      //         // deltaInSeconds: ,
      //         // forceUpdate: ,
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.play_arrow),
      // ),
      TextButton(
        onPressed: () {
          databaseBloc.add(
            DatabaseEvent.addStartNumber(stage: stage, number: 111, startTime: '15:31:00', forceAdd: true),
          );
          final automaticStart = AutomaticStart(
            DateFormat(longTimeFormat).format(DateTime.now()),
            1234,
            DateTime.now(),
          );
          BlocProvider.of<DatabaseBloc>(context).add(
            DatabaseEvent.updateAutomaticCorrection(
              stageId: stageId,
              startTime: automaticStart.time,
              correction: automaticStart.correction,
              timestamp: automaticStart.timestamp,
              ntpOffset: 0,
              deltaInSeconds: 2000,
              forceUpdate: automaticStart.updating,
            ),
            // DatabaseEvent.updateAutomaticCorrection(
            //   forceUpdate: true,
            //   automaticStart: AutomaticStart('15:31:00', Random().nextInt(9999) - 5000, DateTime.now()),
            // ),
          );
          final cor = Random().nextInt(9999) - 5000;
          BlocProvider.of<BluetoothBloc>(context).add(
            BluetoothEvent.messageReceived(
              message:
                  r'$'
                  '15:31:01,121;$cor#',
              stageId: stageId,
            ),
          );
          final cor2 = Random().nextInt(9999) - 5000;
          BlocProvider.of<BluetoothBloc>(context).add(
            BluetoothEvent.messageReceived(
              message:
                  r'$'
                  '15:31:01,121;$cor2#',
              stageId: stageId,
            ),
          );
        },
        child: const Icon(Icons.bluetooth),
      ),
    ];
  }

  Future<void> _startTilePopup(ParticipantAtStart item) async {
    final overlay = Overlay.of(context).context.findRenderObject();
    if (overlay != null) {
      final result = await showMenu<StartPopupMenu>(
        items: _getPopupMenu(context, item),
        context: context,
        position: RelativeRect.fromRect(
          _tapPosition & const Size(60, 60), // smaller rect, the touch area
          Offset.zero & overlay.semanticBounds.size, // Bigger rect, the entire screen
        ),
      );
      if (result != null) {
        switch (result) {
          case StartPopupMenu.edit:
            final currentContext = context;
            if (currentContext.mounted) {
              await editRacerPopup(
                context: currentContext,
                participantAtStart: item,
                riders: currentContext.read<DatabaseBloc>().state.riders,
                categories: currentContext.read<DatabaseBloc>().state.categories,
              );
            }
          case StartPopupMenu.shift:
            final currentContext = context;
            if (currentContext.mounted) {
              await shiftStartsTime(context: currentContext, item: item);
            }
        }
      }
    }
  }

  List<PopupMenuEntry<StartPopupMenu>> _getPopupMenu(BuildContext context, ParticipantAtStart item) {
    return <PopupMenuEntry<StartPopupMenu>>[
      PopupMenuItem(value: StartPopupMenu.edit, child: Text(Localization.current.I18nCore_edit)),
      const PopupMenuDivider(),
      PopupMenuItem(value: StartPopupMenu.shift, child: Text(Localization.current.I18nStart_shiftStartsTime)),
    ];
  }
}

class _SliverStartSubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
    margin: const EdgeInsets.all(2),
    color: Theme.of(context).colorScheme.surface,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          Flexible(flex: 20, child: Align(child: Text(Localization.current.I18nStart_sliverNumber))),
          Flexible(
            flex: 30,
            child: Align(alignment: Alignment.centerLeft, child: Text(Localization.current.I18nStart_sliverStart)),
          ),
          Flexible(
            flex: 25,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(Localization.current.I18nStart_sliverManualCorrection),
            ),
          ),
          Flexible(
            flex: 25,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(Localization.current.I18nStart_sliverAutomaticCorrection),
            ),
          ),
        ],
      ),
    ),
  );
}
