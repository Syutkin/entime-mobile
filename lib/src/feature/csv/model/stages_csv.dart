import 'package:entime/src/feature/csv/model/start_number_and_times_csv.dart';

class StagesCsv {
  StagesCsv({
    required this.stageNames,
    required this.startItems,
  });

  List<String> stageNames;
  List<StartNumberAndTimesCsv> startItems;
}
