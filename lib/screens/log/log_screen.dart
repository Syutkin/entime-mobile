import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:entime/blocs/blocs.dart';
import 'package:entime/utils/helper.dart';

class LogScreen extends StatelessWidget {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LogBloc>(context).add(ShowLog());
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<LogBloc>(context).add(HideLog());
        return true;
      },
      child: Scaffold(
        // ToDo: фильтры в аппбаре
        appBar: AppBar(
          title: const Text('Информация Bluetooth'),
        ),
        body: BlocBuilder<LogBloc, LogState>(builder: (context, state) {
          if (state is LogOpen && state.log != null) {
            // скролл на последнюю запись
            SchedulerBinding.instance?.addPostFrameCallback((_) {
              scrollToEnd(_scrollController);
            });
            return Scrollbar(
              // ToDo: при нажатии показывать всю инфу в попапе
              // child: ListView.separated(
              child: ListView.builder(
                controller: _scrollController,
                shrinkWrap: true,
                itemCount: state.log!.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = state.log![index];
                  return ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Row(children: <Widget>[
                      Flexible(
                        flex: 10,
                        child: Align(
                          alignment: Alignment.center,
                          child: _levelIcon(item.level),
                        ),
                      ),
                      Flexible(
                        flex: 10,
                        child: Align(
                          alignment: Alignment.center,
                          child: _logSourceIcon(item.source, item.direction),
                        ),
                      ),
                      Flexible(
                        flex: 80,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(item.rawData),
                        ),
                      ),
                    ]),
                  );
                },
                // separatorBuilder: (BuildContext context, int index) =>
                //     const Divider(
                //   indent: 10,
                //   endIndent: 10,
                //   thickness: 2,
                // ),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        }),
        persistentFooterButtons:
            !kReleaseMode ? _getDebugButtons(context) : null,
      ),
    );
  }

  Widget _levelIcon(String level) {
    switch (level) {
      case 'Error':
        return Icon(MdiIcons.alertOctagon);
      case 'Warning':
        return Icon(Icons.warning);
      case 'Information':
        return Icon(Icons.info_outline);
      case 'Debug':
        return Icon(MdiIcons.debugStepInto);
      case 'Verbose':
        return Icon(Icons.circle_notifications);
      default:
        return Icon(MdiIcons.closeCircleOutline);
    }
  }

  Widget _logSourceIcon(String source, String? direction) {
    switch (source) {
      case 'Bluetooth':
        switch (direction) {
          case 'In':
            return Icon(MdiIcons.bluetoothTransfer);
          case 'Out':
            return Icon(MdiIcons.bluetoothTransfer);
          case 'Undefined':
            return Icon(MdiIcons.bluetooth);
          default:
            return Icon(MdiIcons.bluetooth);
        }
      case 'Other':
        return Icon(MdiIcons.cloudPrintOutline);
      case 'Unknown':
        return Icon(Icons.help_outline);
      default:
        return Icon(Icons.help_outline);
    }
  }

  List<Widget> _getDebugButtons(BuildContext context) {
    return <Widget>[
      Row(children: <Widget>[
        TextButton(
          onPressed: () async {
            BlocProvider.of<BluetoothBloc>(context)
                .add(MessageReceived('F12:12:12,121#'));
          },
          child: const Icon(Icons.build),
        ),
      ]),
    ];
  }
}
