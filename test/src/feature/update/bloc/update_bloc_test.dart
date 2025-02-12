import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUpdateProvider extends Mock implements UpdateProvider {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late UpdateProvider updateProvider;
  late String latestVersion;

  setUp(() {
    updateProvider = MockUpdateProvider();
    latestVersion = '1.1.1';
    when(() => updateProvider.isUpdateAvailable).thenAnswer((_) => Future.value(true));
    when(() => updateProvider.latestVersion).thenReturn(latestVersion);
    when(() => updateProvider.downloadUpdate()).thenAnswer((_) => Future.value());
    when(() => updateProvider.installApk()).thenAnswer((_) => Future.value());
  });

  group('UpdateBloc tests', () {
    group('checkUpdate tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Update available',
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) => bloc.add(const UpdateEvent.checkUpdate()),
        expect: () => [UpdateState.updateAvailable(version: latestVersion)],
      );

      blocTest<UpdateBloc, UpdateState>(
        'Update not available',
        setUp: () {
          when(() => updateProvider.isUpdateAvailable).thenAnswer((_) => Future.value(false));
        },
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) => bloc.add(const UpdateEvent.checkUpdate()),
        expect: () => [const UpdateState.initial()],
      );
    });

    group('downloadUpdate tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Download update',
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc
            ..add(const UpdateEvent.checkUpdate())
            ..add(const UpdateEvent.downloadUpdate());
        },
        expect: () => [UpdateState.updateAvailable(version: latestVersion), const UpdateState.connecting()],
        verify: (bloc) {
          verify(() => updateProvider.downloadUpdate()).called(1);
        },
      );

      blocTest<UpdateBloc, UpdateState>(
        'Download update but update not available',
        setUp: () {
          when(() => updateProvider.isUpdateAvailable).thenAnswer((_) => Future.value(false));
        },
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc
            ..add(const UpdateEvent.checkUpdate())
            ..add(const UpdateEvent.downloadUpdate());
        },
        expect: () => [const UpdateState.initial()],
        verify: (bloc) {
          verifyNever(() => updateProvider.downloadUpdate());
        },
      );
    });

    group('downloading tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Downloading',
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc
            ..add(const UpdateEvent.downloading(bytes: 100, total: 1000))
            ..add(const UpdateEvent.downloading(bytes: 101, total: 1000))
            ..add(const UpdateEvent.downloading(bytes: 102, total: 1000))
            ..add(const UpdateEvent.downloading(bytes: 103, total: 1000))
            ..add(const UpdateEvent.downloading(bytes: 104, total: 1000));
        },
        expect:
            () => [
              const UpdateState.downloading(bytes: 100, total: 1000),
              const UpdateState.downloading(bytes: 101, total: 1000),
              const UpdateState.downloading(bytes: 102, total: 1000),
              const UpdateState.downloading(bytes: 103, total: 1000),
              const UpdateState.downloading(bytes: 104, total: 1000),
            ],
      );
    });

    group('updateFromFile tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Update from file',
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc.add(const UpdateEvent.updateFromFile());
        },
        expect: () => [UpdateState.updateAvailable(version: latestVersion)],
        verify: (bloc) {
          verify(() => updateProvider.installApk()).called(1);
        },
      );
    });

    group('cancelDownload tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Cancel downloading file',
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc.add(const UpdateEvent.cancelDownload());
        },
        expect: () => [UpdateState.updateAvailable(version: latestVersion)],
        verify: (bloc) {
          verify(() => updateProvider.stop()).called(1);
        },
      );
    });

    group('downloadError tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Error when downloading file',
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc.add(const UpdateEvent.downloadError(error: 'error'));
        },
        expect: () => [const UpdateState.downloadError(error: 'error')],
      );
    });

    group('popupChangelog tests', () {
      blocTest<UpdateBloc, UpdateState>(
        'Popup changelog',
        setUp: () {
          when(() => updateProvider.showChangelog()).thenAnswer((_) => Future.value('changelog'));
        },
        build: () => UpdateBloc(updateProvider: updateProvider),
        act: (bloc) {
          bloc.add(const UpdateEvent.popupChangelog());
        },
        expect: () => [const UpdateState.initial(changelog: 'changelog')],
      );
    });
  });
}
