import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../blocs/blocs.dart';
import '../../utils/helper.dart';

class LogScreen extends StatelessWidget {
  final _scrollController = ScrollController();

  LogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LogBloc>(context).add(const ShowLog());
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
                itemBuilder: (context, index) {
                  final item = state.log![index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
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
            return const CircularProgressIndicator();
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
        return const Icon(MdiIcons.alertOctagon);
      case 'Warning':
        return const Icon(Icons.warning);
      case 'Information':
        return const Icon(Icons.info_outline);
      case 'Debug':
        return const Icon(MdiIcons.debugStepInto);
      case 'Verbose':
        return const Icon(Icons.circle_notifications);
      default:
        return const Icon(MdiIcons.closeCircleOutline);
    }
  }

  Widget _logSourceIcon(String source, String? direction) {
    switch (source) {
      case 'Bluetooth':
        switch (direction) {
          case 'In':
            return const Icon(MdiIcons.bluetoothTransfer);
          case 'Out':
            return const Icon(MdiIcons.bluetoothTransfer);
          case 'Undefined':
            return const Icon(MdiIcons.bluetooth);
          default:
            return const Icon(MdiIcons.bluetooth);
        }
      case 'Other':
        return const Icon(MdiIcons.cloudPrintOutline);
      case 'Unknown':
        return const Icon(Icons.help_outline);
      default:
        return const Icon(Icons.help_outline);
    }
  }

  List<Widget> _getDebugButtons(BuildContext context) {
    return <Widget>[
      Row(children: <Widget>[
        TextButton(
          onPressed: () async {
            BlocProvider.of<BluetoothBloc>(context)
                .add(const MessageReceived('F12:12:12,121#'));
          },
          child: const Icon(Icons.build),
        ),
      ]),
    ];
  }
}
