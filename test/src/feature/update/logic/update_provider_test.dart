// ignore_for_file: avoid_redundant_argument_values

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:entime/src/feature/app_info/app_info.dart';
import 'package:entime/src/feature/settings/settings.dart';
import 'package:entime/src/feature/update/update.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../helpers/shared_prefs_defaults.dart';

class MockClient extends Mock implements http.Client {}

class MockAppInfoProvider extends Mock implements IAppInfoProvider {}

class MockUpdateApiService extends Mock implements IUpdateApiService {}

class MockUpdateAssetResolver extends Mock implements IUpdateAssetResolver {}

class MockUpdateDownloadService extends Mock implements IUpdateDownloadService {}

class MockUpdateInstaller extends Mock implements IUpdateInstaller {}

class MockUpdateChangelogService extends Mock implements IUpdateChangelogService {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    registerFallbackValue(<String, String>{});
    registerFallbackValue((int _, int _) {} as DownloadingHandler);
    registerFallbackValue(File('/tmp/entime.apk'));
  });

  late MockClient client;
  late MockAppInfoProvider appInfoProvider;
  late SharedPrefsSettingsProvider settings;

  setUp(() async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
      (obj) async => obj,
    );

    SharedPreferences.setMockInitialValues(sharedPrefsDefaults);

    client = MockClient();
    appInfoProvider = MockAppInfoProvider();
    settings = await SharedPrefsSettingsProvider.load();
    await settings.setDefaults();
  });

  group('UpdateController.init', () {
    test('Initialize', () async {
      expect(
        await UpdateController.init(client: client, appInfoProvider: appInfoProvider, settingsProvider: settings),
        isA<UpdateController>(),
      );
    });
  });

  group('UpdateController.isUpdateAvailable', () {
    test('Update available', () async {
      when(() => appInfoProvider.appName).thenReturn('Entime');
      when(() => appInfoProvider.version).thenReturn('0.0.1');
      when(() => appInfoProvider.buildNumber).thenReturn('1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponse, 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, true);
    });

    test('Update available with non-standard tag', () async {
      when(() => appInfoProvider.appName).thenReturn('Entime');
      when(() => appInfoProvider.version).thenReturn('0.0.1');
      when(() => appInfoProvider.buildNumber).thenReturn('1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponseWithTag('v0.4.4'), 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, true);
      expect(updater.latestVersion, '0.4.4');
    });

    test('Update unavailable with non-semver tag', () async {
      when(() => appInfoProvider.appName).thenReturn('Entime');
      when(() => appInfoProvider.version).thenReturn('0.0.1');
      when(() => appInfoProvider.buildNumber).thenReturn('1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponseWithTag('tag123'), 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, false);
    });

    test('Update available but check disabled at settings', skip: 'Remove this setting from provider', () async {
      when(() => appInfoProvider.appName).thenAnswer((realInvocation) => 'entime');
      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '0.0.1');
      when(() => appInfoProvider.buildNumber).thenAnswer((realInvocation) => '1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponse, 200));

      await settings.update(settings.settings.copyWith(checkUpdates: false));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, false);

      await settings.update(settings.settings.copyWith(checkUpdates: true));
    });

    test('Update unavailable, you get a latest version', () async {
      when(() => appInfoProvider.appName).thenAnswer((realInvocation) => 'Entime');
      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '1.0.1');
      when(() => appInfoProvider.buildNumber).thenAnswer((realInvocation) => '1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponse, 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, false);
    });

    test('Incorrect response from github api', () async {
      when(() => appInfoProvider.appName).thenAnswer((realInvocation) => 'Entime');
      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '1.0.1');
      when(() => appInfoProvider.buildNumber).thenAnswer((realInvocation) => '1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response('Some incorrect response', 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, false);
    });

    test('404 not found', () async {
      when(() => appInfoProvider.appName).thenAnswer((realInvocation) => 'Entime');
      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '1.0.1');
      when(() => appInfoProvider.buildNumber).thenAnswer((realInvocation) => '1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response('', 404));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, false);
    });

    test('Incorrect json from github api', () async {
      final client = MockClient();
      final appInfoProvider = MockAppInfoProvider();

      when(() => appInfoProvider.appName).thenAnswer((realInvocation) => 'Entime');
      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '1.0.1');
      when(() => appInfoProvider.buildNumber).thenAnswer((realInvocation) => '1');
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer(
        (_) async =>
            http.Response('{ "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443" }', 200),
      );

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.isUpdateAvailable, false);
    });
  });

  group('UpdateController.downloadUpdate', () {
    test('Emits progress and completion on success', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((invocation) async {
        final onProgress = invocation.namedArguments[#onProgress] as DownloadingHandler;
        onProgress(5, 10);
        return UpdateDownloadResult(file: File('/tmp/entime.apk'), sha1: '');
      });

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      expect(events.any((event) => event is UpdateControllerDownloading), true);
      expect(events.any((event) => event is UpdateControllerDownloaded), true);
    });

    test('Does nothing when already downloading', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      final completer = Completer<UpdateDownloadResult>();
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((_) => completer.future);

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      await controller.isUpdateAvailable;

      final first = controller.downloadUpdate();
      await Future<void>.delayed(Duration.zero);
      await controller.downloadUpdate();

      completer.complete(UpdateDownloadResult(file: File('/tmp/entime.apk'), sha1: ''));
      await first;

      verify(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).called(1);
      controller.dispose();
    });

    test('Emits error when asset is missing', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);
      when(() => assetResolver.resolve(release)).thenReturn(null);

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvent = events.whereType<UpdateControllerError>().toList();
      expect(errorEvent.length, 1);
      expect(errorEvent.first.message, 'Cannot find update asset for this platform');
      verifyNever(
        () => downloadService.download(
          url: any(named: 'url'),
          fileName: any(named: 'fileName'),
          expectedSha1: any(named: 'expectedSha1'),
          onProgress: any(named: 'onProgress'),
        ),
      );
    });

    test('Emits error when hash mismatch', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
        hashUrl: 'https://example.com/entime.apk.sha1',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);
      when(() => apiService.fetchHash(selection.hashUrl!)).thenAnswer((_) async => 'expected-hash');

      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: 'expected-hash',
          onProgress: any(named: 'onProgress'),
        ),
      ).thenThrow(UpdateDownloadException('File hash mismatch'));

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvent = events.whereType<UpdateControllerError>().toList();
      expect(errorEvent.length, 1);
      expect(errorEvent.first.message, 'File hash mismatch');
    });

    test('Does not emit error when download is canceled', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenThrow(UpdateDownloadCanceled());

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      expect(events.whereType<UpdateControllerError>(), isEmpty);
      expect(events.whereType<UpdateControllerDownloaded>(), isEmpty);
      expect(events.whereType<UpdateControllerDownloading>(), isEmpty);
    });

    test('Does nothing when latest release is unavailable', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => null);

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      expect(events, isEmpty);
      verifyNever(
        () => downloadService.download(
          url: any(named: 'url'),
          fileName: any(named: 'fileName'),
          expectedSha1: any(named: 'expectedSha1'),
          onProgress: any(named: 'onProgress'),
        ),
      );
    });

    test('Emits error on unexpected download exception', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenThrow(Exception('boom'));

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvents = events.whereType<UpdateControllerError>().toList();
      expect(errorEvents.length, 1);
      expect(errorEvents.first.message, 'Error occurred while downloading file: Exception: boom');
    });

    test('Emits error on unknown download error', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenThrow(Error());

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvents = events.whereType<UpdateControllerError>().toList();
      expect(errorEvents.length, 1);
      expect(errorEvents.first.message, startsWith('Unknown error:'));
    });

    test('Downloads even when hash is missing', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
        hashUrl: 'https://example.com/entime.apk.sha1',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);
      when(() => apiService.fetchHash(selection.hashUrl!)).thenAnswer((_) async => null);

      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((_) async => UpdateDownloadResult(file: File('/tmp/entime.apk'), sha1: ''));

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      expect(events.any((event) => event is UpdateControllerDownloaded), true);
    });
  });

  group('UpdateController.installUpdate', () {
    test('Calls installer after successful download', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      final downloadedFile = File('/tmp/entime.apk');
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((_) async => UpdateDownloadResult(file: downloadedFile, sha1: ''));
      when(() => installer.install(downloadedFile)).thenAnswer((_) async {});

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      await controller.downloadUpdate();
      await controller.installUpdate();

      verify(() => installer.install(downloadedFile)).called(1);
      controller.dispose();
    });

    test('Emits error when installer throws UpdateInstallException', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      final downloadedFile = File('/tmp/entime.apk');
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((_) async => UpdateDownloadResult(file: downloadedFile, sha1: ''));
      when(() => installer.install(downloadedFile)).thenThrow(UpdateInstallException('install denied'));

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await controller.installUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvents = events.whereType<UpdateControllerError>().toList();
      expect(errorEvents.length, 1);
      expect(errorEvents.first.message, 'install denied');
    });

    test('Emits error when installer throws unexpected exception', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      final downloadedFile = File('/tmp/entime.apk');
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((_) async => UpdateDownloadResult(file: downloadedFile, sha1: ''));
      when(() => installer.install(downloadedFile)).thenThrow(Exception('boom'));

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await controller.installUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvents = events.whereType<UpdateControllerError>().toList();
      expect(errorEvents.length, 1);
      expect(errorEvents.first.message, 'Install error: Exception: boom');
    });

    test('Emits error when installer throws unknown error', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');

      final release = _releaseFromResponse(_githubResponse);
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => release);

      const selection = UpdateAssetSelection(
        fileName: 'entime-0.4.4-arm64-v8a.apk',
        downloadUrl: 'https://example.com/entime.apk',
      );
      when(() => assetResolver.resolve(release)).thenReturn(selection);

      final downloadedFile = File('/tmp/entime.apk');
      when(
        () => downloadService.download(
          url: selection.downloadUrl,
          fileName: selection.fileName,
          expectedSha1: null,
          onProgress: any(named: 'onProgress'),
        ),
      ).thenAnswer((_) async => UpdateDownloadResult(file: downloadedFile, sha1: ''));
      when(() => installer.install(downloadedFile)).thenThrow(Error());

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      final events = <UpdateControllerEvent>[];
      final subscription = controller.events.listen(events.add);

      await controller.downloadUpdate();
      await controller.installUpdate();
      await _flushEvents();

      await subscription.cancel();
      controller.dispose();

      final errorEvents = events.whereType<UpdateControllerError>().toList();
      expect(errorEvents.length, 1);
      expect(errorEvents.first.message, startsWith('Unknown install error:'));
    });

    test('Does nothing when update is not downloaded', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => appInfo.version).thenReturn('0.0.1');
      when(() => apiService.fetchLatestRelease()).thenAnswer((_) async => null);

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      await controller.installUpdate();

      verifyNever(() => installer.install(any()));
      controller.dispose();
    });
  });

  group('UpdateController.cancelDownload', () {
    test('Delegates to download service', () async {
      final apiService = MockUpdateApiService();
      final assetResolver = MockUpdateAssetResolver();
      final downloadService = MockUpdateDownloadService();
      final installer = MockUpdateInstaller();
      final changelogService = MockUpdateChangelogService();
      final appInfo = MockAppInfoProvider();

      when(() => downloadService.cancel()).thenAnswer((_) async {});

      final controller = UpdateController(
        apiService: apiService,
        assetResolver: assetResolver,
        downloadService: downloadService,
        installer: installer,
        changelogService: changelogService,
        appInfo: appInfo,
      );

      await controller.cancelDownload();

      verify(() => downloadService.cancel()).called(1);
      controller.dispose();
    });
  });

  group('UpdateController.latestVersion', () {
    test('latestVersion exists', () async {
      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '0.0.1');

      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponse, 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      await updater.isUpdateAvailable;

      expect(updater.latestVersion, '0.4.4');
    });

    test('latestVersion did not exists', () async {
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponse, 404));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(updater.latestVersion, '');
    });

    test('latestVersion keeps non-semver tag', () async {
      when(
        () => client.get(
          Uri.parse('https://api.github.com/repos/syutkin/entime-mobile/releases/latest'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response(_githubResponseWithTag('tag123'), 200));

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      await updater.isUpdateAvailable;

      expect(updater.latestVersion, 'tag123');
    });
  });

  group('UpdateController.showChangelog', () {
    test('First start', () async {
      await settings.setDefaults();

      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '1.0.1');

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.showChangelog(), null);

      // Текущая версия должна быть сохранена в настройках
      expect(settings.settings.previousVersion, '1.0.1');
    });

    test('Second start, do not show changelog', () async {
      await settings.update(const AppSettings.defaults().copyWith(previousVersion: '1.0.1'));

      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '1.0.1');

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      expect(await updater.showChangelog(), null);
    });

    test('Program updated', () async {
      await settings.update(const AppSettings.defaults().copyWith(previousVersion: '1.0.1'));

      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '999.0.1');

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      // empty changelog 'cos version 999.0.1 didn't exists
      expect(await updater.showChangelog(), null);
    });

    test('Updated to dev version', () async {
      await settings.update(const AppSettings.defaults().copyWith(previousVersion: '1.0.1'));

      when(() => appInfoProvider.version).thenAnswer((realInvocation) => '3.0.5-dev');

      final updater = await UpdateController.init(
        client: client,
        appInfoProvider: appInfoProvider,
        settingsProvider: settings,
      );

      // на dev версиях не показываем ченджлог и не сохраняем версию в настройки
      expect(await updater.showChangelog(), null);
      expect(settings.settings.previousVersion, '1.0.1');
    });
  });
}

Future<void> _flushEvents() => Future<void>.delayed(Duration.zero);

Release _releaseFromResponse(String response) => Release.fromJson(jsonDecode(response) as Map<String, dynamic>);

String _githubResponse = '''
{
  "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443",
  "assets_url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/56643443/assets",
  "upload_url": "https://uploads.github.com/repos/Syutkin/entime-mobile/releases/56643443/assets{?name,label}",
  "html_url": "https://github.com/Syutkin/entime-mobile/releases/tag/0.4.4",
  "id": 56643443,
  "author": {
    "login": "Syutkin",
    "id": 10251837,
    "node_id": "MDQ6VXNlcjEwMjUxODM3",
    "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/Syutkin",
    "html_url": "https://github.com/Syutkin",
    "followers_url": "https://api.github.com/users/Syutkin/followers",
    "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
    "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
    "organizations_url": "https://api.github.com/users/Syutkin/orgs",
    "repos_url": "https://api.github.com/users/Syutkin/repos",
    "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
    "received_events_url": "https://api.github.com/users/Syutkin/received_events",
    "type": "User",
    "site_admin": false
  },
  "node_id": "RE_kwDOFmC2CM4DYE9z",
  "tag_name": "0.4.4",
  "target_commitish": "master",
  "name": "0.4.4",
  "draft": false,
  "prerelease": false,
  "created_at": "2022-01-07T21:50:05Z",
  "published_at": "2022-01-07T22:07:10Z",
  "assets": [
    {
      "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/assets/53449745",
      "id": 53449745,
      "node_id": "RA_kwDOFmC2CM4DL5QR",
      "name": "entime-0.4.4-arm64-v8a.apk",
      "label": "",
      "uploader": {
        "login": "Syutkin",
        "id": 10251837,
        "node_id": "MDQ6VXNlcjEwMjUxODM3",
        "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Syutkin",
        "html_url": "https://github.com/Syutkin",
        "followers_url": "https://api.github.com/users/Syutkin/followers",
        "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
        "organizations_url": "https://api.github.com/users/Syutkin/orgs",
        "repos_url": "https://api.github.com/users/Syutkin/repos",
        "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Syutkin/received_events",
        "type": "User",
        "site_admin": false
      },
      "content_type": "application/vnd.android.package-archive",
      "state": "uploaded",
      "size": 9164159,
      "download_count": 12,
      "created_at": "2022-01-07T22:07:12Z",
      "updated_at": "2022-01-07T22:07:13Z",
      "browser_download_url": "https://github.com/Syutkin/entime-mobile/releases/download/0.4.4/entime-0.4.4-arm64-v8a.apk"
    },
    {
      "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/assets/53449754",
      "id": 53449754,
      "node_id": "RA_kwDOFmC2CM4DL5Qa",
      "name": "entime-0.4.4-armeabi-v7a.apk",
      "label": "",
      "uploader": {
        "login": "Syutkin",
        "id": 10251837,
        "node_id": "MDQ6VXNlcjEwMjUxODM3",
        "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Syutkin",
        "html_url": "https://github.com/Syutkin",
        "followers_url": "https://api.github.com/users/Syutkin/followers",
        "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
        "organizations_url": "https://api.github.com/users/Syutkin/orgs",
        "repos_url": "https://api.github.com/users/Syutkin/repos",
        "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Syutkin/received_events",
        "type": "User",
        "site_admin": false
      },
      "content_type": "application/vnd.android.package-archive",
      "state": "uploaded",
      "size": 8915853,
      "download_count": 1,
      "created_at": "2022-01-07T22:07:13Z",
      "updated_at": "2022-01-07T22:07:14Z",
      "browser_download_url": "https://github.com/Syutkin/entime-mobile/releases/download/0.4.4/entime-0.4.4-armeabi-v7a.apk"
    },
    {
      "url": "https://api.github.com/repos/Syutkin/entime-mobile/releases/assets/53449758",
      "id": 53449758,
      "node_id": "RA_kwDOFmC2CM4DL5Qe",
      "name": "entime-0.4.4-x86_64.apk",
      "label": "",
      "uploader": {
        "login": "Syutkin",
        "id": 10251837,
        "node_id": "MDQ6VXNlcjEwMjUxODM3",
        "avatar_url": "https://avatars.githubusercontent.com/u/10251837?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Syutkin",
        "html_url": "https://github.com/Syutkin",
        "followers_url": "https://api.github.com/users/Syutkin/followers",
        "following_url": "https://api.github.com/users/Syutkin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Syutkin/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Syutkin/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Syutkin/subscriptions",
        "organizations_url": "https://api.github.com/users/Syutkin/orgs",
        "repos_url": "https://api.github.com/users/Syutkin/repos",
        "events_url": "https://api.github.com/users/Syutkin/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Syutkin/received_events",
        "type": "User",
        "site_admin": false
      },
      "content_type": "application/vnd.android.package-archive",
      "state": "uploaded",
      "size": 9331530,
      "download_count": 1,
      "created_at": "2022-01-07T22:07:15Z",
      "updated_at": "2022-01-07T22:07:20Z",
      "browser_download_url": "https://github.com/Syutkin/entime-mobile/releases/download/0.4.4/entime-0.4.4-x86_64.apk"
    }
  ],
  "tarball_url": "https://api.github.com/repos/Syutkin/entime-mobile/tarball/0.4.4",
  "zipball_url": "https://api.github.com/repos/Syutkin/entime-mobile/zipball/0.4.4",
  "body": ""
}
''';

String _githubResponseWithTag(String tag) => _githubResponse.replaceFirst('"tag_name": "0.4.4"', '"tag_name": "$tag"');
