import 'dart:ffi';

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
          return Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 200,
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        '25',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      text,
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      );
}
