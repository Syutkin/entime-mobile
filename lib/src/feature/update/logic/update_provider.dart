import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../../common/logger/logger.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../../settings/settings.dart';
import '../model/show_changelog.dart';
import '../model/updater.dart';

typedef DownloadingHandler = void Function(int current, int total);
typedef ErrorHandler = void Function(String error);

abstract interface class IUpdateProvider {
  String get latestVersion;

  Future<bool> isUpdateAvailable();
  Future<void> downloadUpdate();
  Future<void> installApk();
  Future<ShowChangelog> showChangelog();

  void onDownloading(DownloadingHandler callback);
  void onDownloadComplete(VoidCallback callback);
  void onError(ErrorHandler error);

  void stop();
}

class UpdateProvider implements IUpdateProvider {
  UpdateProvider._(
    http.Client client,
    AppInfoProvider appInfo,
    SettingsProvider settingsProvider,
  )   : _client = client,
        _appInfo = appInfo,
        _settingsProvider = settingsProvider;
  final http.Client _client;
  Release? _latestRelease;

  bool _canUpdate = false;
  bool _downloaded = false;

  File? _downloadedFile;

  final AppInfoProvider _appInfo;
  final SettingsProvider _settingsProvider;
  DownloadingHandler? _downloadingHandler;
  VoidCallback? _onDownloadComplete;
  ErrorHandler? _onError;

  @override
  String get latestVersion => _latestRelease?.tagName ?? '';

  int? _updateFileSize = -1;

  static Future<UpdateProvider> init({
    required http.Client client,
    required AppInfoProvider appInfoProvider,
    required SettingsProvider settingsProvider,
  }) async =>
      UpdateProvider._(client, appInfoProvider, settingsProvider);

  @override
  void onDownloading(DownloadingHandler callback) =>
      _downloadingHandler = callback;

  @override
  void onDownloadComplete(VoidCallback callback) =>
      _onDownloadComplete = callback;

  @override
  void onError(ErrorHandler error) => _onError = error;

  @override
  void stop() => _client.close();

  @override
  Future<bool> isUpdateAvailable() async {
    _canUpdate = false;
    try {
      _latestRelease = await _getLatestRelease();
      if (_latestRelease != null) {
        final latestVersion = Version.parse(_latestRelease!.tagName);
        final currentVersion = Version.parse(_appInfo.version);
        if (latestVersion > currentVersion) {
          logger.i('Update_provider -> Update to $latestVersion available');
          _canUpdate = true;
        }
      }
    } on Exception catch (e) {
      logger.e('Update_provider -> Some error', error: e);
    }
    return _canUpdate;
  }

  Future<Release?> _getLatestRelease() async {
    final url = Uri.parse(
      'https://api.github.com/repos/syutkin/entime-mobile/releases/latest',
    );
    try {
      final response = await _client.get(url);
      if (response.statusCode == 200) {
        final release = Release.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
        return release;
      } else {
        logger.d('Update_provider -> StatusCode: ${response.statusCode}');
        return null;
      }
    } on Exception catch (e) {
      logger.e('Update_provider -> Exception', error: e);
      return null;
      // Может возникнуть при получении некорректного json от github
    } catch (e, st) {
      logger.e('Update_provider -> Error', error: e, stackTrace: st);
      return null;
    }
  }

  @override
  Future<void> downloadUpdate() async {
    if (_canUpdate && _latestRelease != null && _appInfo.abi != null) {
      try {
        var dir = (await getDownloadsDirectory())?.path;
        dir ??= (await getApplicationDocumentsDirectory()).path;
        _downloadedFile = File(
          '$dir/${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk',
        );

        var url = '';
        for (final asset in _latestRelease!.assets) {
          if (asset.name ==
              '${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk') {
            url = asset.browserDownloadUrl;
          }
        }

        final request = http.Request('GET', Uri.parse(url));
        final response = await _client.send(request);

        _updateFileSize = response.contentLength;

        if (_updateFileSize != null) {
          logger.d('Update_provider -> contentLength: $_updateFileSize');

          final bytes = <int>[];

          response.stream.listen(
            (newBytes) {
              // update progress
              bytes.addAll(newBytes);
              _downloadingHandler?.call(bytes.length, _updateFileSize!);
            },
            onDone: () async {
              // save file
              await _downloadedFile?.writeAsBytes(bytes);
              _downloaded = true;
              _onDownloadComplete?.call();
            },
            onError: (Object error) {
              logger.e('Update_provider -> Error', error: error);
              _onError?.call(error.toString());
            },
            cancelOnError: true,
          );
        } else {
          _onError?.call('Update_provider -> response.contentLength is null');
        }
      } on Exception catch (e) {
        logger.e('Update_provider -> Exception', error: e);
      } catch (e, st) {
        logger.e('Update_provider -> Unknown error', error: e, stackTrace: st);
      }
    }
  }

  @override
  Future<void> installApk() async {
    if (_canUpdate &&
        _downloaded &&
        _latestRelease != null &&
        _downloadedFile != null) {
      if (await Permission.requestInstallPackages.request().isGranted) {
        final result = await OpenFile.open(_downloadedFile!.path);
        logger.d(result.message);
      } else {
        logger.d('Can not update, installing packages is denied');
      }
    }
  }

  @override
  Future<ShowChangelog> showChangelog() async {
    // final settings = _settingsProvider.settings;
    final previousVersion =
        Version.parse(_settingsProvider.settings.previousVersion);
    final currentVersion = Version.parse(_appInfo.version);
    // Не показывать ченджлог для не релизных версий и первого запуска
    // Не изменять значение последней запущенной версии для не релизных версий
    if (!currentVersion.isPreRelease) {
      await _settingsProvider.update(
        _settingsProvider.settings.copyWith(previousVersion: _appInfo.version),
      );
      if (currentVersion > previousVersion &&
          previousVersion !=
              Version.parse(_settingsProvider.getDefaults().previousVersion)) {
        return ShowChangelog(
          show: true,
          previousVersion: previousVersion.toString(),
          currentVersion: currentVersion.toString(),
        );
      }
    }
    return const ShowChangelog();
  }
}
