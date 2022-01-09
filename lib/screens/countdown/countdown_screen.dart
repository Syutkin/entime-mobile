import 'package:flutter/material.dart';

class CountdownScreen extends StatelessWidget {
  const CountdownScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки модуля')),
      //ToDo: страница с обратным отсчётом и звуковым сопровождением
      // body: BlocBuilder<ManualCountdownBloc, ManualCountdownState>(
      //     builder: (context, state) {
      //
      //     }),
    );
  }
}
