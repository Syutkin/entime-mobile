import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/localization/localization.dart';
import '../bloc/countdown_bloc.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar:
            AppBar(title: Text(Localization.current.I18nCountdown_countdown)),
        // ToDo: страница с обратным отсчётом и звуковым сопровождением
        body: BlocBuilder<CountdownBloc, CountdownState>(
            builder: (context, state) {
          var text = state.maybeMap(working: (state) {
            return state.text;
          }, orElse: () {
            return '';
          });
          var number = state.maybeMap(working: (state) {
            return state.number;
          }, orElse: () {
            return null;
          });

          return Center(
            child: number == null
                ? ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: double.infinity, height: double.infinity),
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(text),
                      ),
                    ),
                  )
                : OrientationBuilder(builder: (context, orientation) {
                    return orientation == Orientation.portrait
                        ? Column(children: _items(number, text))
                        : Row(children: _items(number, text));
                  }),
          );
        }),
      );

  List<Widget> _items(int? number, String text) {
    return [
      Flexible(
        fit: FlexFit.tight,
        flex: 50,
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text('${number ?? ""}'),
            // child: Text('$number'),
          ),
        ),
      ),
      Flexible(
        fit: FlexFit.tight,
        flex: 50,
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(text),
          ),
        ),
      ),
    ];
  }
}
