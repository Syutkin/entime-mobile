import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:entime/main.dart';
import 'package:entime/src/common/bloc/app_bloc_observer.dart';
import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/audio/logic/audio_service.dart';
import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'app_test.mocks.dart';

@GenerateMocks(
  [
    AppInfoProvider,
    UpdateProvider,
    IBluetoothProvider,
    AudioService,
    SharedPrefsSettingsProvider
  ],
)
void main() async {
  Bloc.observer = AppBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential<dynamic>();

  final settings = await SharedPrefsSettingsProvider.load();
  final appInfo = MockAppInfoProvider();
  final UpdateProvider updateProvider = MockUpdateProvider();
  final IBluetoothProvider bluetoothProvider = MockIBluetoothProvider();

  final AudioService audioService = MockAudioService();

  group('EntimeApp', () {
    testWidgets('renders EntimeAppView', (tester) async {
      await tester.pumpWidget(
        EntimeApp(
          settings: settings,
          updateProvider: updateProvider,
          bluetoothProvider: bluetoothProvider,
          audioService: audioService,
          appInfo: appInfo,
        ),
      ); // Create main app
      expect(find.byType(EntimeAppView), findsOneWidget);
    });
  });
}
