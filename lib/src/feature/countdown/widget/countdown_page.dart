import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../bloc/countdown_bloc.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(Localization.current.I18nCountdown_countdown)),
    body: BlocBuilder<CountdownBloc, CountdownState>(
      builder: (context, state) {
        final text = state.maybeMap(
          working: (state) {
            return state.tick.text;
          },
          orElse: () {
            return '';
          },
        );
        final number = state.maybeMap(
          working: (state) {
            return state.tick.number;
          },
          orElse: () {
            return null;
          },
        );

        return Center(
          child:
              number == null
                  ? ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: double.infinity, height: double.infinity),
                    child: FittedBox(child: Padding(padding: const EdgeInsets.all(8), child: Text(text))),
                  )
                  : OrientationBuilder(
                    builder: (context, orientation) {
                      return orientation == Orientation.portrait
                          ? Column(children: _items(number, text))
                          : Row(children: _items(number, text));
                    },
                  ),
        );
      },
    ),
  );

  List<Widget> _items(int? number, String text) {
    return [
      Flexible(
        fit: FlexFit.tight,
        flex: 50,
        child: FittedBox(child: Padding(padding: const EdgeInsets.all(8), child: Text('${number ?? ""}'))),
      ),
      Flexible(
        fit: FlexFit.tight,
        flex: 50,
        child: FittedBox(child: Padding(padding: const EdgeInsets.all(8), child: Text(text))),
      ),
    ];
  }
}
