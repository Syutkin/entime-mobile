import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/trails_bloc.dart';

class TrailListPage extends StatelessWidget {
  final _scrollController = ScrollController();

  TrailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TrailsBloc>(context).add(const TrailsEvent.getTrails());
    return Scaffold(
      appBar: AppBar(
          // title: Text(Localization.current.I18nLog_bluetoothInformation),
          ),
      body: BlocBuilder<TrailsBloc, TrailsState>(
        builder: (context, state) {
          return state.map(initial: (state) {
            return const CircularProgressIndicator();
          }, initialized: (state) {
            final trails = state.trails;
            if (trails != null) {
              return Scrollbar(
                // ToDo: при нажатии показывать всю инфу в попапе
                child: ListView.builder(
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemCount: trails.length,
                  itemBuilder: (context, index) {
                    final trail = trails[index];
                    return ListTile(
                        // contentPadding: EdgeInsets.zero,
                        // title: Row(
                        //   children: <Widget>[
                        //     Flexible(
                        //       flex: 10,
                        //       child: Align(
                        //         child: _LogLevelIcon(level: item.level),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 10,
                        //       child: Align(
                        //         child: _LogSourceIcon(
                        //           source: item.source.name,
                        //           direction: item.direction.name,
                        //         ),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 80,
                        //       child: Align(
                        //         alignment: Alignment.centerLeft,
                        //         child: Text(item.rawData ?? ''),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        );
                  },
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          });
        },
      ),
    );
  }
}
