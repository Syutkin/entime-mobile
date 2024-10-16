import 'package:meta/meta.dart';

@immutable
class Tick {
  final String text;
  final DateTime? nextStartTime;
  final int? number;

  const Tick({required this.text, this.nextStartTime, this.number});
}
