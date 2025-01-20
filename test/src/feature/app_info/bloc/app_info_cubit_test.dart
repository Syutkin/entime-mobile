import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppInfoProvider extends Mock implements AppInfoProvider {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late AppInfoProvider appInfoProvider;
  late AppInfoCubit appInfoCubit;
  const appName = 'appName';
  const buildNumber = '1234';
  const version = '0.0.0';

  setUp(() {
    appInfoProvider = MockAppInfoProvider();
    appInfoCubit = AppInfoCubit(appInfo: appInfoProvider);
    when(() => appInfoProvider.appName).thenReturn(appName);
    when(() => appInfoProvider.buildNumber).thenReturn(buildNumber);
    when(() => appInfoProvider.version).thenReturn(version);
  });

  group(
    'AppInfoCubit tests',
    () {
      test(
        'Get app name',
        () {
          expect(appInfoCubit.appName, appName);
        },
      );
      test(
        'Get build number',
        () {
          expect(appInfoCubit.buildNumber, buildNumber);
        },
      );
      test(
        'Get version',
        () {
          expect(appInfoCubit.version, version);
        },
      );
    },
  );
}
