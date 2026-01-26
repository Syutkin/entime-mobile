import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:pub_semver/pub_semver.dart';

import '../../../common/logger/logger.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../../settings/settings.dart';
import '../model/updater.dart';
import 'update_api_service.dart';
import 'update_asset_resolver.dart';
import 'update_changelog_service.dart';
import 'update_controller_event.dart';
import 'update_download_service.dart';
import 'update_installer.dart';

abstract interface class IUpdateController {
  String get latestVersion;
  Stream<UpdateControllerEvent> get events;

  Future<bool> get isUpdateAvailable;
  Future<void> downloadUpdate();
  Future<void> installUpdate();
  Future<String?> showChangelog();

  Future<void> cancelDownload();
  void dispose();
}

class UpdateController implements IUpdateController {
  UpdateController({
    required IUpdateApiService apiService,
    required IUpdateAssetResolver assetResolver,
    required IUpdateDownloadService downloadService,
    required IUpdateInstaller installer,
    required IUpdateChangelogService changelogService,
    required IAppInfoProvider appInfo,
  })  : _apiService = apiService,
        _assetResolver = assetResolver,
        _downloadService = downloadService,
        _installer = installer,
        _changelogService = changelogService,
        _appInfo = appInfo;

  static Future<UpdateController> init({
    required http.Client client,
    required IAppInfoProvider appInfoProvider,
    required ISettingsProvider settingsProvider,
  }) {
    return Future.value(UpdateController(
      apiService: UpdateApiService(client: client),
      assetResolver: UpdateAssetResolver(appInfo: appInfoProvider),
      downloadService: UpdateDownloadService(client: client),
      installer: UpdateInstaller(),
      changelogService: UpdateChangelogService(
        settingsProvider: settingsProvider,
        appInfoProvider: appInfoProvider,
      ),
      appInfo: appInfoProvider,
    ));
  }

  final IUpdateApiService _apiService;
  final IUpdateAssetResolver _assetResolver;
  final IUpdateDownloadService _downloadService;
  final IUpdateInstaller _installer;
  final IUpdateChangelogService _changelogService;
  final IAppInfoProvider _appInfo;

  final StreamController<UpdateControllerEvent> _eventsController = StreamController.broadcast();

  Release? _latestRelease;
  bool _canUpdate = false;
  bool _isDownloading = false;
  bool _isDownloaded = false;
  File? _downloadedFile;

  @override
  Stream<UpdateControllerEvent> get events => _eventsController.stream;

  @override
  String get latestVersion => _latestRelease == null ? '' : _normalizeTag(_latestRelease!.tagName);

  void _emit(UpdateControllerEvent event) {
    if (!_eventsController.isClosed) {
      _eventsController.add(event);
    }
  }

  String _normalizeTag(String tag) {
    final trimmed = tag.trim();
    if (trimmed.startsWith('v') || trimmed.startsWith('V')) {
      return trimmed.substring(1);
    }
    return trimmed;
  }

  Version _parseVersion(String tag) => Version.parse(_normalizeTag(tag));

  @override
  Future<bool> get isUpdateAvailable async {
    _canUpdate = false;
    try {
      final release = await _apiService.fetchLatestRelease();
      if (release?.tagName != _latestRelease?.tagName) {
        _isDownloaded = false;
        _downloadedFile = null;
      }
      _latestRelease = release;
      if (_latestRelease != null) {
        final latestVersion = _parseVersion(_latestRelease!.tagName);
        final currentVersion = Version.parse(_appInfo.version);
        if (latestVersion > currentVersion) {
          logger.i('UpdateController -> Update to $latestVersion available');
          _canUpdate = true;
        }
      }
    } on Exception catch (e) {
      logger.e('UpdateController -> Some error', error: e);
    } catch (e, st) {
      logger.e('UpdateController -> Error', error: e, stackTrace: st);
    }
    return _canUpdate;
  }

  @override
  Future<void> downloadUpdate() async {
    if (_isDownloading) {
      return;
    }
    if (_latestRelease == null) {
      await isUpdateAvailable;
    }
    if (!_canUpdate || _latestRelease == null) {
      return;
    }

    _isDownloaded = false;
    _downloadedFile = null;

    final selection = _assetResolver.resolve(_latestRelease!);
    if (selection == null) {
      _emit(const UpdateControllerError('Cannot find update asset for this platform'));
      return;
    }

    _isDownloading = true;
    try {
      final referenceHash = selection.hashUrl == null ? null : await _apiService.fetchHash(selection.hashUrl!);
      final result = await _downloadService.download(
        url: selection.downloadUrl,
        fileName: selection.fileName,
        expectedSha1: referenceHash,
        onProgress: (current, total) => _emit(UpdateControllerDownloading(bytes: current, total: total)),
      );
      _downloadedFile = result.file;
      _isDownloaded = true;
      _emit(const UpdateControllerDownloaded());
    } on UpdateDownloadCanceled {
      return;
    } on UpdateDownloadException catch (e) {
      logger.e('UpdateController -> Download error', error: e);
      _emit(UpdateControllerError(e.message));
    } on Exception catch (e) {
      logger.e('UpdateController -> Download error', error: e);
      _emit(UpdateControllerError('Error occurred while downloading file: $e'));
    } catch (e, st) {
      logger.e('UpdateController -> Unknown error', error: e, stackTrace: st);
      _emit(UpdateControllerError('Unknown error: $e'));
    } finally {
      _isDownloading = false;
    }
  }

  @override
  Future<void> installUpdate() async {
    if (!_canUpdate || !_isDownloaded || _downloadedFile == null) {
      return;
    }
    try {
      await _installer.install(_downloadedFile!);
    } on UpdateInstallException catch (e) {
      logger.e('UpdateController -> Install error', error: e);
      _emit(UpdateControllerError(e.message));
    } on Exception catch (e) {
      logger.e('UpdateController -> Install error', error: e);
      _emit(UpdateControllerError('Install error: $e'));
    } catch (e, st) {
      logger.e('UpdateController -> Unknown install error', error: e, stackTrace: st);
      _emit(UpdateControllerError('Unknown install error: $e'));
    }
  }

  @override
  Future<String?> showChangelog() => _changelogService.loadChangelog();

  @override
  Future<void> cancelDownload() => _downloadService.cancel();

  @override
  void dispose() {
    unawaited(_eventsController.close());
  }
}
