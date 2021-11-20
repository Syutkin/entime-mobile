class AutomaticStart {
  String time;
  int correction;
  DateTime timeStamp;
  bool updating;

  AutomaticStart(this.time, this.correction, this.timeStamp,
      [this.updating = false]);
}