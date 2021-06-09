import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:entime/models/models.dart';
import 'package:entime/data_providers/settings/settings_provider.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final SettingsProvider settings;

  ThemeBloc(this.settings)
      : super(ThemeState(themeData: appThemeData[settings.getTheme()]));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      settings.setTheme(event.theme);
      yield ThemeState(themeData: appThemeData[event.theme]);
    }
  }
}
