import 'package:meta/meta.dart';

@immutable
class Tick {
  final String text;
  final DateTime? nextStartTime;

  const Tick({required this.text, this.nextStartTime});
}
