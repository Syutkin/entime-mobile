import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/bloc/database_bloc.dart';
import '../../database/widget/finish_list_page.dart';
import 'race_tile.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatabaseBloc, DatabaseState>(
      builder: (context, state) {
        if (state.race == null || state.stage == null) {
          return const RaceTile();
        } else {
          return const FinishListPage();
        }
      },
    );
  }
}
