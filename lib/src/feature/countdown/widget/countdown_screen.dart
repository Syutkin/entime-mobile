import 'package:flutter/material.dart';

import '../../../common/localization/localization.dart';

class CountdownScreen extends StatelessWidget {
  const CountdownScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar:
            AppBar(title: Text(Localization.current.I18nCountdown_countdown)),
        //ToDo: страница с обратным отсчётом и звуковым сопровождением
        // body: BlocBuilder<ManualCountdownBloc, ManualCountdownState>(
        //     builder: (context, state) {
        //
        //     }),
      );
}
