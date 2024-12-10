import 'dart:async';
import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../common/localization/localization.dart';
import '../../../common/logger/logger.dart';
import '../../../common/utils/helper.dart';
import '../../../common/widget/sliver_sub_header_delegate.dart';
import '../../../constants/date_time_formats.dart';
import '../../bluetooth/bloc/bluetooth_bloc.dart';
import '../../ntp/bloc/ntp_bloc.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../database.dart';

enum FinishPopupMenu { clearNumber, hideAll }

class FinishListPage extends StatefulWidget {
  const FinishListPage({super.key});

  @override
  State<FinishListPage> createState() => _FinishListPage();
}

class _FinishListPage extends State<FinishListPage> {
  late Offset _tapPosition;

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  late Timer _timer;

  // _FinishListPage() {
  //   _startTimer(widget.stageId);
  // }

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<DatabaseBloc, DatabaseState>(
        listener: (context, state) {
          // toast с автоматически проставленным номером
          final autoFinishNumber = state.autoFinishNumber;
          logger.d('autoFinishNumber: $autoFinishNumber');
          if (autoFinishNumber != null) {
            final databaseBloc = context.read<DatabaseBloc>();
            BotToast.showAttachedWidget(
              verticalOffset: 36.0,
              attachedBuilder: (cancel) => Card(
                child: ListTile(
                  title: Text(
                    Localization.current.I18nProtocol_finishNumber(
                      '$autoFinishNumber',
                    ),
                  ),
                  trailing: TextButton(
                    onPressed: () {
                      final stage = state.stage;
                      if (stage != null) {
                        databaseBloc.add(
                          DatabaseEvent.clearNumberAtFinish(
                            stage: stage,
                            number: autoFinishNumber,
                          ),
                        );
                      }
                      cancel();
                    },
                    child: Text(
                      MaterialLocalizations.of(context).cancelButtonLabel,
                    ),
                  ),
                ),
              ),
              // enableSafeArea: false,
              animationDuration: const Duration(milliseconds: 300),
              duration: const Duration(seconds: 3),
              targetContext: context,
            );
          }
        },
        child: Scaffold(
          body: BlocBuilder<DatabaseBloc, DatabaseState>(
            builder: (context, state) {
              // ToDo: настройки? более интересное поведение?
              // ToDo: Перематывать только при первоначальном показе всех отсечек?
              // скролл на последнюю запись если показываем скрытые отсечки
              if (!BlocProvider.of<SettingsBloc>(context)
                  .state
                  .settings
                  .hideMarked) {
                SchedulerBinding.instance.addPostFrameCallback((_) {
                  scrollToEnd(_scrollController);
                });
              }
              // return const SizedBox.shrink();
              return _finishList(state.finishes);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (
              context,
              settingsState,
            ) {
              if (settingsState.settings.finishFab) {
                return SizedBox(
                  height: settingsState.settings.finishFabSize,
                  width: settingsState.settings.finishFabSize,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: _addFinishTimeManual,
                      child: Icon(MdiIcons.handBackLeft),
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          persistentFooterButtons: _getFooterButtons(context),
        ),
      );

  Widget _finishList(List<Finish> finishProtocol) => CustomScrollView(
        controller: _scrollController,
        // shrinkWrap: true,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverSubHeaderDelegate(
              minHeight: 40,
              maxHeight: 40,
              child: _SliverFinishSubHeader(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = finishProtocol[index];
                return FinishItemTile(
                  item: item,
                  onTap: () async {
                    await addFinishNumberPopup(context, item);
                  },
                  onLongPress: () async {
                    await _clearPopup(item.number);
                  },
                  onAccept: (details) {
                    final databaseBloc = context.read<DatabaseBloc>();
                    final stage = databaseBloc.state.stage;
                    final finishId = item.id;
                    final number = details.data;
                    final finishTime = item.finishTime;
                    if (stage != null) {
                      databaseBloc.add(
                        DatabaseEvent.addNumberToFinish(
                          stage: stage,
                          finishId: finishId,
                          number: number,
                          finishTime: finishTime,
                        ),
                      );
                    }
                  },
                  onTapDown: _storePosition,
                  onDismissed: (direction) {
                    final databaseBloc = context.read<DatabaseBloc>();
                    final id = item.id;
                    databaseBloc.add(DatabaseEvent.hideFinish(id: id));
                  },
                );
              },
              childCount: finishProtocol.length,
            ),
          ),
        ],
      );

  Widget _getNumbersOnTrace(BuildContext context) =>
      BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          return SizedBox(
            height: 50,
            width: double.maxFinite,
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.numbersOnTrace.length,
              padding: const EdgeInsets.only(left: 5),
              itemBuilder: (context, index) {
                final item = state.numbersOnTrace[index];
                final isSelected = item.number == state.awaitingNumber;
                return NumberOnTraceTile(
                  number: item.number,
                  onTap: () {
                    final databaseBloc = context.read<DatabaseBloc>();
                    isSelected
                        ? databaseBloc
                            .add(const DatabaseEvent.deselectAwaitingNumber())
                        : databaseBloc.add(
                            DatabaseEvent.selectAwaitingNumber(
                              number: item.number,
                            ),
                          );
                  },
                  onTapDown: _storePosition,
                  onLongPress: () async {
                    await _numberOnTracePopup(item.number);
                  },
                  isSelected: isSelected,
                );
              },
            ),
          );
        },
      );

  Future<void> _clearPopup(int? number) async {
    final databaseBloc = context.read<DatabaseBloc>();
    final stage = databaseBloc.state.stage;
    final overlay = Overlay.of(context).context.findRenderObject();
    if (overlay != null) {
      final result = await showMenu<FinishPopupMenu>(
        items: _getPopupMenu(context, number),
        context: context,
        position: RelativeRect.fromRect(
          _tapPosition & const Size(60, 60), // smaller rect, the touch area
          Offset.zero &
              overlay.semanticBounds.size, // Bigger rect, the entire screen
        ),
      );
      if (result != null && stage != null) {
        switch (result) {
          case FinishPopupMenu.clearNumber:
            if (number != null) {
              // if (!mounted) {
              //   return;
              // }
              databaseBloc.add(
                DatabaseEvent.clearNumberAtFinish(
                  stage: stage,
                  number: number,
                ),
              );
            }
          case FinishPopupMenu.hideAll:
            // if (!mounted) {
            //   return;
            // }
            final stageId = stage.id;
            databaseBloc.add(DatabaseEvent.hideAllFinises(stageId));
        }
      }
    }
  }

  List<PopupMenuEntry<FinishPopupMenu>> _getPopupMenu(
    BuildContext context,
    int? number,
  ) {
    final list = <PopupMenuEntry<FinishPopupMenu>>[];
    if (number != null) {
      list
        ..add(
          PopupMenuItem(
            value: FinishPopupMenu.clearNumber,
            child: Text(Localization.current.I18nProtocol_clearNumber),
          ),
        )
        ..add(
          const PopupMenuDivider(
            height: 5,
          ),
        );
    }
    list.add(
      PopupMenuItem(
        value: FinishPopupMenu.hideAll,
        child: Text(Localization.current.I18nProtocol_hideAll),
      ),
    );
    return list;
  }

  Future<void> _numberOnTracePopup(int number) async {
    final databaseBloc = context.read<DatabaseBloc>();
    final stage = databaseBloc.state.stage;
    final overlay = Overlay.of(context).context.findRenderObject();
    if (overlay != null) {
      final result = await showMenu(
        items: _getNumberOnTracePopupMenu(context, number),
        context: context,
        position: RelativeRect.fromRect(
          _tapPosition & const Size(40, 40), // smaller rect, the touch area
          Offset.zero &
              overlay.semanticBounds.size, // Bigger rect, the entire screen
        ),
      );
      if (result != null && stage != null) {
        switch (result) {
          case ParticipantStatus.active:
            break;
          case ParticipantStatus.dns:
            if (!mounted) {
              return;
            }
            databaseBloc.add(
              DatabaseEvent.setDNSForStage(stage: stage, number: number),
            );
          case ParticipantStatus.dnf:
            if (!mounted) {
              return;
            }
            databaseBloc.add(
              DatabaseEvent.setDNFForStage(stage: stage, number: number),
            );
          case ParticipantStatus.dsq:
            break;
          case ParticipantStatus.unknown:
            break;
        }
      }
    }
  }

  List<PopupMenuEntry<ParticipantStatus>> _getNumberOnTracePopupMenu(
    BuildContext context,
    int number,
  ) {
    final list = <PopupMenuEntry<ParticipantStatus>>[
      PopupMenuItem(
        value: ParticipantStatus.dns,
        child: Text(
          Localization.current.I18nProtocol_didNotStart,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      const PopupMenuDivider(
        height: 5,
      ),
      PopupMenuItem(
        value: ParticipantStatus.dnf,
        child: Text(
          Localization.current.I18nProtocol_didNotFinish,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    ];
    return list;
  }

  RelativeRect? buttonMenuPosition(BuildContext buildContext) {
    final bar = buildContext.findRenderObject() as RenderBox?;
    final overlay =
        Overlay.of(buildContext).context.findRenderObject() as RenderBox?;
    if (bar != null && overlay != null) {
      // ignore: omit_local_variable_types
      final RelativeRect position = RelativeRect.fromRect(
        Rect.fromPoints(
          bar.localToGlobal(
            bar.size.bottomRight(Offset.zero),
            ancestor: overlay,
          ),
          bar.localToGlobal(
            bar.size.bottomRight(Offset.zero),
            ancestor: overlay,
          ),
        ),
        Offset.zero & overlay.size,
      );
      return position;
    } else {
      return null;
    }
  }

  List<Widget> _getFooterButtons(BuildContext context) {
    final databaseBloc = context.read<DatabaseBloc>();
    final stage = databaseBloc.state.stage;
    if (!kReleaseMode) {
      return <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _getNumbersOnTrace(context),
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () async {
                    final rand = Random().nextInt(10000) - 5000;
                    // print(rand);
                    final duration = Duration(milliseconds: rand);
                    // print(duration);
                    final timestamp = DateTime.now();
                    final finishTime = timestamp.add(duration);
                    // print(finishTime);
                    databaseBloc.add(
                      DatabaseEvent.addFinishTime(
                        finishTime:
                            DateFormat(longTimeFormat).format(finishTime),
                        timestamp: timestamp,
                        stage: stage!,
                      ),
                    );
                  },
                  child: const Icon(Icons.person_add_alt_1),
                ),
                TextButton(
                  onPressed: () async {
                    // LogProvider.db.add(
                    //   LogLevel.Error,
                    //   LogSource.Other,
                    //   'rawData',
                    // );
                    // LogProvider.db.getLog(
                    //   level: [LogLevel.Error, LogLevel.Information, LogLevel.Debug],
                    // direction: [LogSourceDirection.In, LogSourceDirection.Out],
                    // source: [LogSource.Bluetooth]);
                    BlocProvider.of<BluetoothBloc>(context).add(
                      BluetoothEvent.messageReceived(
                        message:
                            'F12:12:12,121#\r\nF13:13:13,131#\r\nF14:14:14,141#\r\nF15:16:17,181#',
                        stageId: stage!.id,
                      ),
                    );
                    //_parseBT("F19:24:05,123#");
//            _parseBT("F19:25:57#");
//            var _deltas = List<int>();
//            _deltas.insert(0, -100);
//            logger.(_deltas);
                  },
                  child: const Icon(Icons.build),
                ),
                //TextButton(child: const Icon(Icons.add), onPressed: () => _addFinishTime(context)),
                TextButton(
                  onPressed: () async {
                    final stageId = stage?.id;
                    if (stageId != null) {
                      databaseBloc
                          .add(DatabaseEvent.clearFinishResultsDebug(stageId));
                    }
                  },
                  child: const Icon(Icons.clear_all),
                ),
              ],
            ),
          ],
        ),
      ];
    } else {
      return <Widget>[
        _getNumbersOnTrace(context),
      ];
    }
  }

  Future<void> _addFinishTimeManual() async {
    final timestamp = DateTime.now();
    final offset = context.read<NtpBloc>().state.offset;
    //добавляем ntp offset к ручному времени
    final manual = timestamp.add(Duration(microseconds: offset));
    final finishTime = DateFormat(longTimeFormat).format(manual);
    final databaseBloc = context.read<DatabaseBloc>();
    final stageId = databaseBloc.state.stage?.id;
    if (stageId != null) {
      databaseBloc.add(
        DatabaseEvent.addFinishTimeManual(
          stageId: stageId,
          finishTime: finishTime,
          timestamp: timestamp,
        ),
      );
    }
  }

// таймер для обновления участников на трассе
// Работает только на экране финиша
// Обновляется спустя секунду после нового открытия окна финиша,
// т.к. создаётся новый неинициализированный таймер
  void _startTimer() {
    int? prevMinute;
    final databaseBloc = context.read<DatabaseBloc>();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final stageId = databaseBloc.state.stage?.id;
      if (prevMinute != now.minute && now.second > 0 && stageId != null) {
        databaseBloc.add(
          DatabaseEvent.getNumbersOnTraceNow(
            stageId: stageId,
            dateTimeNow: now,
          ),
        );
        prevMinute = now.minute;
      }
    });
  }
}

class _SliverFinishSubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(2),
        color: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              final showDifference = state.settings.showFinishDifference;
              return Row(
                children: <Widget>[
                  Flexible(
                    flex: 15,
                    child: Align(
                      child: Text(Localization.current.I18nProtocol_type),
                    ),
                  ),
                  Flexible(
                    flex: showDifference ? 45 : 65,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(Localization.current.I18nProtocol_time),
                    ),
                  ),
                  if (showDifference)
                    Flexible(
                      flex: 20,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(Localization.current.I18nProtocol_difference),
                        // child: Text('Difference'),
                      ),
                    ),
                  Flexible(
                    flex: 20,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(Localization.current.I18nProtocol_number),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
}
