part of 'theme_bloc.dart';

@immutable
class ThemeState extends Equatable {
// class ThemeState {
  final ThemeData? themeData;

  const ThemeState({
    required this.themeData,
  });

  @override
  List<Object?> get props => [themeData];
}
