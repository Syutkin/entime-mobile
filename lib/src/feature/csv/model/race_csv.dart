import 'package:entime/src/feature/csv/model/start_item_csv.dart';

class RaceCsv {
  String fileName;
  List<String> stageNames;
  List<StartItemCsv> startItems;

  RaceCsv({
    required this.fileName,
    required this.stageNames,
    required this.startItems,
  });
}
