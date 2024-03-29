// ignore_for_file: use_setters_to_change_properties, avoid_catching_errors

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../../common/logger/logger.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../../settings/settings.dart';
import '../model/show_changelog.dart';
import '../model/updater.dart';

typedef DownloadHandler = void Function(int current, int total);
typedef ErrorHandler = void Function(String error);

class UpdateProvider {
  final http.Client _client;
  Release? _latestRelease;

  bool _canUpdate = false;
  bool _downloaded = false;
  String? _dir;

  File? _downloadedFile;

  final AppInfoProvider _appInfo;
  final SettingsProvider _settingsProvider;
  late DownloadHandler _downloadHandler;
  late VoidCallback _onDownloadComplete;
  late ErrorHandler _onError;

  String get latestVersion => _latestRelease?.tagName ?? '';

  int? _updateFileSize = -1;

  UpdateProvider._(
    http.Client client,
    AppInfoProvider appInfo,
    SettingsProvider settingsProvider,
  )   : _client = client,
        _appInfo = appInfo,
        _settingsProvider = settingsProvider;

  static Future<UpdateProvider> init({
    required http.Client client,
    required AppInfoProvider appInfoProvider,
    required SettingsProvider settingsProvider,
  }) async =>
      UpdateProvider._(client, appInfoProvider, settingsProvider);

  void setDownloadingHandler(DownloadHandler callback) {
    _downloadHandler = callback;
  }

  void onDownloadComplete(VoidCallback callback) {
    _onDownloadComplete = callback;
  }

  void onError(ErrorHandler error) {
    _onError = error;
  }

  void stop() {
    _client.close();
  }

  Future<bool> isUpdateAvailable() async {
    _canUpdate = false;
    try {
      _latestRelease = await _getLatestRelease();
      if (_latestRelease != null) {
        final latestVersion = Version.parse(_latestRelease!.tagName);
        final currentVersion = Version.parse(_appInfo.version);
        if (latestVersion > currentVersion) {
          logger.i('Update_provider: Update to $latestVersion available');
          _canUpdate = true;
        }
      }
    } on Exception catch (e) {
      logger.e('Some error: $e');
    }
    return _canUpdate;
  }

  Future<Release?> _getLatestRelease() async {
    if (_settingsProvider.settings.checkUpdates) {
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
          logger.d('StatusCode: ${response.statusCode}');
          return null;
        }
      } on Exception catch (e) {
        logger.e('Exception: $e');
        return null;
        // Может возникнуть при получении ошибочного json от github
      } on Error catch (e) {
        logger.e('Error: $e');
        return null;
      }
    }
    return null;
  }

  Future<void> downloadUpdate() async {
    if (await Permission.storage.request().isGranted) {
      if (_canUpdate && _latestRelease != null && _appInfo.abi != null) {
        try {
          if (Platform.isAndroid) {
            _dir = '/storage/emulated/0/Download';
          } else {
            _dir = (await getApplicationDocumentsDirectory()).path;
          }
          _downloadedFile = File(
            '$_dir/${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk',
          );

          String url = '';

          for (final asset in _latestRelease!.assets) {
            if (asset.name ==
                '${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk') {
              url = asset.browserDownloadUrl;
            }
          }

          final request = http.Request('GET', Uri.parse(url));
          // _client = http.Client();
          final http.StreamedResponse response = await _client.send(request);

          _updateFileSize = response.contentLength;

          if (_updateFileSize != null) {
            logger.d('Update_provider: contentLength: $_updateFileSize');

            final List<int> bytes = [];

            response.stream.listen(
              (newBytes) {
                // update progress
                bytes.addAll(newBytes);
                _downloadHandler(bytes.length, _updateFileSize!);
              },
              onDone: () async {
                // save file
                await _downloadedFile?.writeAsBytes(bytes);
                _downloaded = true;
                _onDownloadComplete();
              },
              onError: (dynamic error) {
                logger.e('Update_provider: Error: $error');
                _onError(error as String);
              },
              cancelOnError: true,
            );
          } else {
            _onError('response.contentLength is null');
          }
        } on Exception catch (e) {
          logger.e(e);
        }
      }
    } else {
      logger.w('Update_provider: Can not access file system');
    }
  }

  Future<void> installApk() async {
    if (_canUpdate &&
        _downloaded &&
        _latestRelease != null &&
        _downloadedFile != null) {
      final result = await OpenFilex.open(_downloadedFile!.path);
      logger.d(result.message);
    }
  }

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
