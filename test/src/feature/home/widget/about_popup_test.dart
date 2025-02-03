import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/common/localization/localization.dart';
import 'package:entime/src/feature/app_info/bloc/app_info_cubit.dart';
import 'package:entime/src/feature/app_info/logic/app_info_provider.dart';
import 'package:entime/src/feature/home/widget/about_popup.dart';
import 'package:entime/src/feature/update/widget/changelog_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patrol_finders/patrol_finders.dart';

class MockAppInfoCubit extends MockCubit<AppInfoProvider>
    implements AppInfoCubit {}

void main() {
  late AppInfoCubit appInfoCubit;
  const appName = 'appName';
  const version = '1.0.0';

  Widget testWidget() {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        Localization.delegate,
      ],
      supportedLocales: Localization.supportedLocales,
      home: Scaffold(
        body: BlocProvider.value(
          value: appInfoCubit,
          child: const AboutPopup(),
        ),
      ),
    );
  }

  setUp(
    () {
      appInfoCubit = MockAppInfoCubit();
      when(() => appInfoCubit.appName).thenReturn(appName);
      when(() => appInfoCubit.version).thenReturn(version);
    },
  );

  group(
    'AboutPopup tests',
    () {
      patrolWidgetTest('Initial state', (
        PatrolTester $,
      ) async {
        await $.pumpWidgetAndSettle(testWidget());
        expect($(AlertDialog), findsOneWidget);
        expect($(appName), findsOneWidget);
        expect(
          $(Localization.current.I18nAbout_version(version)),
          findsOneWidget,
        );
        expect($(Localization.current.I18nAbout_copyright), findsOneWidget);
        expect(
          $('${Localization.current.I18nAbout_about}syutkin@fraction.team'),
          findsOneWidget,
        );
        expect($(Localization.current.I18nAbout_changelog), findsOneWidget);
        expect($(TextButton), findsNWidgets(2));
      });

      patrolWidgetTest('Press changelog', (
        PatrolTester $,
      ) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(Localization.current.I18nAbout_changelog).tap();
        expect($(ChangelogScreen), findsOneWidget);
      });

      patrolWidgetTest('Press close button', (
        PatrolTester $,
      ) async {
        await $.pumpWidgetAndSettle(testWidget());
        await $(TextButton).at(1).tap();
        expect($(AboutPopup), findsNothing);
      });

      patrolWidgetTest('Press send mail', (
        PatrolTester $,
      ) async {
        await $.pumpWidgetAndSettle(testWidget());
        // await $(TapGestureRecognizer).at(1).tap();
        expect($(TapGestureRecognizer), findsOneWidget);
      });
    },
  );
}
