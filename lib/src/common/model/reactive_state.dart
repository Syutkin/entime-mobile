import 'package:rxdart/subjects.dart';

mixin ReactiveState<T> {
  BehaviorSubject<T> get state;
}
