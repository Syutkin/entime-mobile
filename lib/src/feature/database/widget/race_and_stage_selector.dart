import 'package:entime/src/feature/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RaceStageSelection {
  const RaceStageSelection({required this.race, required this.stage});

  final Race race;
  final Stage stage;
}

class RaceAndStageSelector extends StatefulWidget {
  const RaceAndStageSelector({super.key});

  @override
  State<RaceAndStageSelector> createState() => _RaceAndStageSelectorState();
}

class _RaceAndStageSelectorState extends State<RaceAndStageSelector> {
  Race? _draftRace;
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) {
      return;
    }

    final state = context.read<DatabaseBloc>().state;
    final race = state.race;
    if (race != null && state.stage == null) {
      _draftRace = race;
      context.read<DatabaseBloc>().add(DatabaseEvent.getStages(race.id));
    }
    _initialized = true;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        _handleBack();
      },
      child: BlocBuilder<DatabaseBloc, DatabaseState>(
        builder: (context, state) {
          final race = _draftRace;
          if (race == null) {
            return RacesListPage(onRaceSelected: _selectRace);
          } else {
            return StagesListPage(race: race, onStageSelected: _selectStage);
          }
        },
      ),
    );
  }

  void _selectRace(Race race) {
    setState(() {
      _draftRace = race;
    });
    context.read<DatabaseBloc>().add(DatabaseEvent.getStages(race.id));
  }

  void _selectStage(Stage stage) {
    final race = _draftRace;
    if (race == null) {
      return;
    }
    Navigator.of(context).pop(RaceStageSelection(race: race, stage: stage));
  }

  void _handleBack() {
    if (_draftRace != null) {
      setState(() {
        _draftRace = null;
      });
    } else {
      Navigator.of(context).pop();
    }
  }
}
