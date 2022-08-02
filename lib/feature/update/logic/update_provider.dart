// ignore_for_file: use_setters_to_change_properties, inference_failure_on_untyped_parameter

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/logger/logger.dart';
import '../../app_info/logic/app_info_provider.dart';
import '../model/show_changelog.dart';
import '../model/updater.dart';

typedef DownloadHandler = void Function(int current, int total);
typedef ErrorHandler = void Function(String error);

class UpdateProvider {
  Release? _latestRelease;

  bool _canUpdate = false;
  bool _downloaded = false;
  String? _dir;

  File? _downloadedFile;

  late AppInfoProvider _appInfo;
  late DownloadHandler _downloadHandler;
  late VoidCallback _onDownloadComplete;
  late ErrorHandler _onError;

  String get latestVersion {
    if (_latestRelease != null) {
      return _latestRelease!.tagName;
    }
    return '';
  }

  int? _updateFileSize = -1;

  UpdateProvider._();

  static Future<UpdateProvider> init() async {
    final data = UpdateProvider._();
    await data._init();
    return data;
  }

  Future<void> _init() async {
    _appInfo = await AppInfoProvider.load();
  }

  // Вынесено сюда, чтобы можно было останавливать скачивание из UI
  // с помощью stop().
  http.Client? _client;

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
    _client?.close();
  }

  Future<bool> isUpdateAvailable() async {
    _canUpdate = false;
    try {
      _latestRelease = await _getLatestRelease();
      if (_latestRelease != null) {
        final latestVersion = Version.parse(_latestRelease!.tagName);
        final currentVersion = Version.parse(
            '${_appInfo.version}+${_appInfo.buildNumber}');
        if (latestVersion > currentVersion) {
          logger.i('Update_provider: Update to $latestVersion available');
          _canUpdate = true;
        }
      }
    } on Exception catch (e) {
      logger.e(e);
    }
    return _canUpdate;
  }

  Future<Release?> _getLatestRelease() async {
    final url = Uri.parse(
        'https://api.github.com/repos/syutkin/entime-mobile/releases/latest');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return Release.fromRawJson(response.body);
      } else {
        logger.d('StatusCode: ${response.statusCode}');
        return null;
      }
    } on Exception catch (e) {
      logger.e('error: $e');
      return null;
    }
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
              '$_dir/${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk');

          String url = '';

          for (final asset in _latestRelease!.assets) {
            if (asset.name ==
                '${_appInfo.appName}-${_latestRelease!.tagName}-${_appInfo.abi}.apk') {
              url = asset.browserDownloadUrl;
            }
          }

          final request = http.Request('GET', Uri.parse(url));
          _client = http.Client();
          final http.StreamedResponse response = await _client!.send(request);

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
              onError: (error) {
                logger.e('Update_provider: Error: $error');
                _onError(error);
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
      final result = await OpenFile.open(_downloadedFile!.path);
      logger.d(result.message);
    }
  }

  Future<ShowChangelog> showChangelog() async {
    final ShowChangelog showChangelog = ShowChangelog();
    final packageInfo = await PackageInfo.fromPlatform();
    final prefs = await SharedPreferences.getInstance();
    final previousVersion =
        Version.parse(prefs.getString('previousVersion') ?? '0.0.0');
    final currentVersion = Version.parse(packageInfo.version);
    // Не показывать ченджлог для не релизных версий и первого запуска
    // Не изменять значение последней запущенной версии для не релизных версий
    if (!currentVersion.isPreRelease) {
      unawaited(prefs.setString('previousVersion', packageInfo.version));
      if (currentVersion > previousVersion &&
          previousVersion != Version.parse('0.0.0')) {
        showChangelog.show = true;
        showChangelog.previousVersion = previousVersion.toString();
        showChangelog.currentVersion = currentVersion.toString();
        return showChangelog;
      }
    }
    return showChangelog;
  }
}
