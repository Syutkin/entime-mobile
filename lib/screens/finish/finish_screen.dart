import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:bot_toast/bot_toast.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/screens/screens.dart';
import 'package:entime/utils/helper.dart';
import 'package:entime/models/models.dart';

enum FinishPopupMenu { clearNumber, hideAll }

class FinishScreen extends StatefulWidget {
  @override
  _FinishPage createState() => _FinishPage();
}

class _FinishPage extends State<FinishScreen> {
  var _tapPosition;

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
              verticalOffset: 36.0,
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
            SchedulerBinding.instance!.addPostFrameCallback((_) {
              scrollToEnd(_scrollController);
            });
          }
          return Scrollbar(
            child: ListView.separated(
              controller: _scrollController,
              shrinkWrap: true,
              itemCount: state.finishProtocol.length,
              itemBuilder: (BuildContext context, int index) {
                var item = state.finishProtocol[index];
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                      color: Theme.of(context).accentColor,
                      alignment: Alignment(1.0, 0.0),
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Скрыть',
                          style: DefaultTextStyle.of(context).style.apply(
                              fontSizeFactor: 1.5,
                              color:
                                  Theme.of(context).colorScheme.onSecondary))),
                  direction: DismissDirection.horizontal,
                  onDismissed: (direction) {
                    BlocProvider.of<ProtocolBloc>(context)
                        .add(ProtocolHideFinishTime(id: item.id));
                  },
                  child: GestureDetector(
                    onTapDown: _storePosition,
                    child: DragTarget(builder:
                            (context, List<int?> candidateData, rejectedData) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        onTap: () async {
                          await addNumberPopup(context, item);
//                        _addNumber(context, item);
                        },
                        onLongPress: () async {
                          if (item.number != null) {
                            _clearPopup(context, item.number!);
                          }
                        },
                        title: Row(children: <Widget>[
                          Flexible(
                            flex: 15,
                            child: Align(
                              alignment: Alignment.center,
                              child: _addIcon(
                                  item.manual), //Icon(Icons.add_circle),
                            ),
                          ),
                          Flexible(
                            flex: 65,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(strip(item.finishtime),
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .apply(fontSizeFactor: 2.0)),
                            ),
                          ),
                          Flexible(
                            flex: 20,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(strip(item.number.toString()),
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .apply(fontSizeFactor: 2.0)),
                            ),
                          ),
                        ]),
                      );
                    },
                        // не даёт переписать номер через drag'n'drop
                        onWillAccept: (data) {
                      if (item.number != null) {
                        return false;
                      } else {
                        return true;
                      }
                    }, onAccept: (data) {
                      if (data != null) {
                        BlocProvider.of<ProtocolBloc>(context)
                            .add(ProtocolSetNumberToFinishTime(
                          id: item.id,
                          number: data as int,
                          finishTime: item.finishtime,
                        ));
                      }
                    }),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
            ),
          );
        } else {
          return Center(
            child: ListTile(
              onTap: () => RouteToSelectFileScreen(context),
              title: Text(
                'Выберите или создайте стартовый протокол',
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
      }),
      floatingActionButton: BlocBuilder<SettingsBloc, SettingsState>(builder: (
        context,
        settingsState,
      ) {
        if (settingsState.finishFab) {
          return Container(
            height: settingsState.finishFabSize,
            width: settingsState.finishFabSize,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () => _addFinishTimeManual(context),
                child: const Icon(MdiIcons.hand),
              ),
            ),
          );
        }
        return Container(width: 0, height: 0);
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      persistentFooterButtons: _getFooterButtons(context),
    );
  }

  Widget _getNumbersOnTrace(context) {
    return BlocBuilder<ProtocolBloc, ProtocolState>(
      builder: (context, state) {
        if (state is ProtocolSelectedState) {
          return Container(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.numbersOnTraceProtocol.length,
              itemBuilder: (BuildContext context, int index) {
                var item = state.numbersOnTraceProtocol[index];
                return Draggable(
                  feedback: _numberOnTrace(context, item.number),
                  childWhenDragging: Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    constraints: BoxConstraints(minWidth: 50, minHeight: 50),
                  ),
                  data: item.number,
                  child: GestureDetector(
                    onTapDown: _storePosition,
                    onLongPress: () async {
                      _numberOnTracePopup(context, item.number);
                    },
                    child: _numberOnTrace(context, item.number),
                  ),
                );
              },
            ),
          );
        } else {
          return Container(width: 0.0, height: 0.0);
        }
      },
    );
  }

  Widget _numberOnTrace(BuildContext context, int number) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      constraints: BoxConstraints(minWidth: 50, minHeight: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Theme.of(context).accentColor,
//        color: Colors.blue,
      ),
      child: Center(
        child: Text(
          strip(number.toString()),
          style: DefaultTextStyle.of(context).style.apply(
              fontSizeFactor: 2.0,
              color: Theme.of(context).colorScheme.onSecondary),
        ),
      ),
    );
  }

  void _clearPopup(context, int number) async {
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    FinishPopupMenu? result = await showMenu<FinishPopupMenu>(
        items: _getPopupMenu(context, number),
        context: context,
        position: RelativeRect.fromRect(
            _tapPosition & Size(60, 60), // smaller rect, the touch area
            Offset.zero &
                overlay.semanticBounds.size // Bigger rect, the entire screen
            ));
    if (result != null) {
      switch (result) {
        case FinishPopupMenu.clearNumber:
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolClearNumberAtFinish(number: number));
          break;
        case FinishPopupMenu.hideAll:
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolHideAllFinishResults());
          break;
      }
    }
  }

  List<PopupMenuEntry<FinishPopupMenu>> _getPopupMenu(
      BuildContext context, int? number) {
    var list = <PopupMenuEntry<FinishPopupMenu>>[];
    if (number != null) {
      list.add(
        PopupMenuItem(
          value: FinishPopupMenu.clearNumber,
          child: Text('Убрать номер'),
        ),
      );
      list.add(
        PopupMenuDivider(
          height: 5,
        ),
      );
    }
    list.add(
      PopupMenuItem(
        value: FinishPopupMenu.hideAll,
        child: Text('Скрыть всё'),
      ),
    );
    return list;
  }

  void _numberOnTracePopup(context, int number) async {
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    ParticipantStatus? result = await showMenu(
        items: _getNumberOnTracePopupMenu(context, number),
        context: context,
        position: RelativeRect.fromRect(
            _tapPosition & Size(40, 40), // smaller rect, the touch area
            Offset.zero &
                overlay.semanticBounds.size // Bigger rect, the entire screen
            ));
    if (result != null) {
      switch (result) {
        case ParticipantStatus.active:
          break;
        case ParticipantStatus.dns:
          BlocProvider.of<ProtocolBloc>(context)
              .add(ProtocolSetDNS(number: number));
          break;
        case ParticipantStatus.dnf:
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
    var list = <PopupMenuEntry<ParticipantStatus>>[];
    list.add(
      PopupMenuItem(
        value: ParticipantStatus.dns,
        child: Text('Не стартовал', style: Theme.of(context).textTheme.button),
      ),
    );
    list.add(
      PopupMenuDivider(
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
                    BlocProvider.of<BluetoothBloc>(context).add(MessageReceived(
                        'F12:12:12,121#\r\nF13:13:13,131#\r\nF14:14:14,141#\r\nF15:16:17,181#'));
                    //_parseBT("F19:24:05,123#");
//            _parseBT("F19:25:57#");
//            var _deltas = List<int>();
//            _deltas.insert(0, -100);
//            print(_deltas);
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

  void _addFinishTimeManual(context) async {
    var now = DateTime.now();
//    now = now.add(diff.duration); //добавляем поправку (см. class Difference)
    var time = DateFormat('HH:mm:ss,S').format(now);
    BlocProvider.of<ProtocolBloc>(context)
        .add(ProtocolAddFinishTimeManual(time: time));
  }

  Widget _addIcon(int? manual) {
    if (manual == 1) {
      return const Icon(MdiIcons.hand);
    } else {
      return const Icon(MdiIcons.cpu64Bit);
    }
  }

  // таймер для обновления участников на трассе
  // Работает только на экране финиша
  // Обновляется спустя секунду после нового открытия окна финиша,
  // т.к. создаётся новый неинициализированный таймер
  void _startTimer() {
    int? prevMinute;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      var now = DateTime.now();
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
