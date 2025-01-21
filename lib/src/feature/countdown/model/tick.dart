import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Tick extends Equatable {
  const Tick({
    required this.second,
    required this.text,
    this.nextStartTime,
    this.number,
  });

  final int second;
  final String text;
  final DateTime? nextStartTime;
  final int? number;

  @override
  List<Object?> get props => [second, text, nextStartTime, number];
}
