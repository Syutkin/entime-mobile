import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../common/helper/helper.dart';
import '../../../../common/widget/sliver_sub_header_delegate.dart';
import '../../../bluetooth/bloc/bluetooth_bloc.dart';
import '../../../init/widget/select_file_screen.dart';
import '../../../protocol/protocol.dart';
import '../../../settings/bloc/settings_bloc.dart';
import 'add_finish_number_popup.dart';
import 'finish_item_tile.dart';
import 'number_on_trace_tile.dart';

enum FinishPopupMenu { clearNumber, hideAll }

class FinishScreen extends StatefulWidget {
  const FinishScreen({Key? key}) : super(key: key);

  @override
  State<FinishScreen> createState() => _FinishPage();
}

class _FinishPage extends State<FinishScreen> {
  late Offset _tapPosition;

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  late Timer _timer;

  _FinishPage() {
    _startTimer();
  }

  final _scrollController = ScrollController();

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProtocolBloc, ProtocolState>(builder: (context, state) {
        if (state is ProtocolSelectedState) {
          // toast с автоматичски проставленным номером
          if (state.autoFinishNumber != null) {
            // BotToast.showSimpleNotification(
            //   title: 'Финишировал номер ${state.autoFinishNumber}',
            //   onTap: () => BlocProvider.of<ProtocolBloc>(context).add(
            //       ProtocolClearNumberAtFinish(number: state.autoFinishNumber)),
            //   hideCloseButton: true,
            //   duration: const Duration(seconds: 3),
            // );
            BotToast.showAttachedWidget(
              verticalOffset: 36,
              attachedBuilder: (cancel) => Card(
                child: ListTile(
                  title: Text('Финишировал номер ${state.autoFinishNumber}'),
                  trailing: TextButton(
                    onPressed: () {
                      BlocProvider.of<ProtocolBloc>(context).add(
                          ProtocolClearNumberAtFinish(
                              number: state.autoFinishNumber!));
                      cancel();
                    },
                    child: Text(
                        MaterialLocalizations.of(context).cancelButtonLabel),
                  ),
                ),
              ),
              // enableSafeArea: false,
              animationDuration: const Duration(milliseconds: 300),
              duration: const Duration(seconds: 3),
              targetContext: context,
            );
          }

          // ToDo: настройки? более интересное поведение?
          // ToDo: Перематывать только при первоначальном показе всех отсечек?
          // скролл на последнюю запись если показываем скрытые отсечки
          if (!BlocProvider.of<SettingsBloc>(context).state.hideMarked) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              scrollToEnd(_scrollController);
            });
          }
          return _finishList(state.finishProtocol);
        } else {
          return CreateOrSelectProtocolWidget(
            onTap: () => routeToSelectFileScreen(context),
          );
        }
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<SettingsBloc, SettingsState>(builder: (
        context,
        settingsState,
      ) {
        if (settingsState.finishFab) {
          return SizedBox(
            height: settingsState.finishFabSize,
            width: settingsState.finishFabSize,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () => _addFinishTimeManual(context),
                child: const Icon(MdiIcons.handBackLeft),
              ),
            ),
          );
        }
        return const SizedBox(width: 0, height: 0);
      }),
      persistentFooterButtons: _getFooterButtons(context),
    );
  }

  Widget _finishList(List<FinishItem> finishProtocol) {
    return CustomScrollView(
        controller: _scrollController,
        shrinkWrap: true,
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              delegate: SliverSubHeaderDelegate(
                minHeight: 40,
                maxHeight: 40,
                child: _SliverFinishSubHeader(),
              )),
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
                    await _clearPopup(context, item.number);
                  },
                  onAccept: (data) {
                    if (data != null) {
                      BlocProvider.of<ProtocolBloc>(context)
                          .add(ProtocolSetNumberToFinishTime(
                        id: item.id,
                        number: data as int,
                        finishTime: item.finishtime,
                      ));
                    }
                  },
                  onTapDown: _storePosition,
                  onDismissed: (direction) {
                    BlocProvider.of<ProtocolBloc>(context)
                        .add(ProtocolHideFinishTime(id: item.id));
                  },
                );
              },
              childCount: finishProtocol.length,
            ),
          ),
        ]);
  }

  Widget _getNumbersOnTrace(context) {
    return BlocBuilder<ProtocolBloc, ProtocolState>(
      builder: (context, state) {
        if (state is ProtocolSelectedState) {
          return SizedBox(
            height: 50,
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.numbersOnTraceProtocol.length,
              itemBuilder: (context, index) {
                final item = state.numbersOnTraceProtocol[index];
                final isSelected = item.number == state.awaitingNumber;
                return NumberOnTraceTile(
                  number: item.number,
                  onTap: () {
                    isSelected
                        ? BlocProvider.of<ProtocolBloc>(context)
                            .add(ProtocolDeselectAwaitingNumber())
                        : BlocProvider.of<ProtocolBloc>(context).add(
                            ProtocolSelectAwaitingNumber(number: item.number));
                  },
                  onTapDown: _storePosition,
                  onLongPress: () async {
                    await _numberOnTracePopup(context, item.number);
                  },
                  isSelected: isSelected,
                );
              },
            ),
          );
        } else {
          return const SizedBox(width: 0, height: 0);
        }
      },
    );
  }

  Future<void> _clearPopup(BuildContext context, int? number) async {
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final FinishPopupMenu? result = await showMenu<FinishPopupMenu>(
        items: _getPopupMenu(context, number),
        context: context,
        position: RelativeRect.fromRect(
            _tapPosition & const Size(60, 60), // smaller rect, the touch area
            Offset.zero &
                overlay.semanticBounds.size // Bigger rect, the entire screen
            ));
    if (result != null) {
      switch (result) {
        case FinishPopupMenu.clearNumber:
          if (number != null) {
            if (!mounted) {
              return;
            }
            BlocProvider.of<ProtocolBloc>(context)
                .add(ProtocolClearNumberAtFinish(number: number));
          }
          break;
        case FinishPopupMenu.hideAll:
          if (!mounted) {
            return;
          }
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolHideAllFinishResults());
          break;
      }
    }
  }

  List<PopupMenuEntry<FinishPopupMenu>> _getPopupMenu(
      BuildContext context, int? number) {
    final list = <PopupMenuEntry<FinishPopupMenu>>[];
    if (number != null) {
      list.add(
        const PopupMenuItem(
          value: FinishPopupMenu.clearNumber,
          child: Text('Убрать номер'),
        ),
      );
      list.add(
        const PopupMenuDivider(
          height: 5,
        ),
      );
    }
    list.add(
      const PopupMenuItem(
        value: FinishPopupMenu.hideAll,
        child: Text('Скрыть всё'),
      ),
    );
    return list;
  }

  Future<void> _numberOnTracePopup(BuildContext context, int number) async {
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final ParticipantStatus? result = await showMenu(
        items: _getNumberOnTracePopupMenu(context, number),
        context: context,
        position: RelativeRect.fromRect(
            _tapPosition & const Size(40, 40), // smaller rect, the touch area
            Offset.zero &
                overlay.semanticBounds.size // Bigger rect, the entire screen
            ));
    if (result != null) {
      switch (result) {
        case ParticipantStatus.active:
          break;
        case ParticipantStatus.dns:
          if (!mounted) {
            return;
          }
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolSetDNS(number: number));
          break;
        case ParticipantStatus.dnf:
          if (!mounted) {
            return;
          }
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolSetDNF(number: number));
          break;
        case ParticipantStatus.dsq:
          break;
      }
    }
  }

  List<PopupMenuEntry<ParticipantStatus>> _getNumberOnTracePopupMenu(
      BuildContext context, int number) {
    final list = <PopupMenuEntry<ParticipantStatus>>[];
    list.add(
      PopupMenuItem(
        value: ParticipantStatus.dns,
        child: Text('Не стартовал', style: Theme.of(context).textTheme.button),
      ),
    );
    list.add(
      const PopupMenuDivider(
        height: 5,
      ),
    );
    list.add(
      PopupMenuItem(
        value: ParticipantStatus.dnf,
        child:
            Text('Не финишировал', style: Theme.of(context).textTheme.button),
      ),
    );
    return list;
  }

  RelativeRect buttonMenuPosition(BuildContext buildContext) {
    final RenderBox bar = buildContext.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(buildContext)!.context.findRenderObject() as RenderBox;
    // ignore: omit_local_variable_types
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        bar.localToGlobal(bar.size.bottomRight(Offset.zero), ancestor: overlay),
        bar.localToGlobal(bar.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );
    return position;
  }

  List<Widget> _getFooterButtons(BuildContext context) {
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
                    BlocProvider.of<ProtocolBloc>(context)
                        .add(ProtocolAddFinishTime(
                      time: DateFormat('HH:mm:ss,S').format(DateTime.now()),
                      timeStamp: DateTime.now(),
                    ));
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
                        const MessageReceived(
                            'F12:12:12,121#\r\nF13:13:13,131#\r\nF14:14:14,141#\r\nF15:16:17,181#'));
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
                    BlocProvider.of<ProtocolBloc>(context)
                        .add(ProtocolClearFinishResultsDebug());
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

  Future<void> _addFinishTimeManual(BuildContext context) async {
    final now = DateTime.now();
//    now = now.add(diff.duration); //добавляем поправку (см. class Difference)
    final time = DateFormat('HH:mm:ss,S').format(now);
    BlocProvider.of<ProtocolBloc>(context)
        .add(ProtocolAddFinishTimeManual(time: time));
  }

  // таймер для обновления участников на трассе
  // Работает только на экране финиша
  // Обновляется спустя секунду после нового открытия окна финиша,
  // т.к. создаётся новый неинициализированный таймер
  void _startTimer() {
    int? prevMinute;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      if (prevMinute != now.minute && now.second > 0) {
        BlocProvider.of<ProtocolBloc>(context).add(ProtocolGetNumbersOnTrace());
        prevMinute = now.minute;
      }
    });
  }

// void _selectStartDB(context) async {
//   var file =
//       await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//     return SelectFileScreen();
//   }));
//   BlocProvider.of<ProtocolBloc>(context).add(SelectProtocol(file));
//   BlocProvider.of<SettingsBloc>(context)
//       .add(SetStringValueEvent(recentFile: file));
// }
}

class _SliverFinishSubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(children: const <Widget>[
          Flexible(
            flex: 15,
            child: Align(
              alignment: Alignment.center,
              child: Text('Тип'),
            ),
          ),
          Flexible(
            flex: 65,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Время'),
            ),
          ),
          Flexible(
            flex: 20,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Номер'),
            ),
          ),
        ]),
      ),
    );
  }
}
