import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../common/logger/logger.dart';
import '../model/updater.dart';

abstract interface class IUpdateApiService {
  Future<Release?> fetchLatestRelease();
  Future<String?> fetchHash(String url);
}

class UpdateApiService implements IUpdateApiService {
  UpdateApiService({
    required http.Client client,
    String repo = 'syutkin/entime-mobile',
    int maxRetries = 2,
    Duration baseBackoff = const Duration(milliseconds: 500),
  }) : _client = client,
       _repo = repo,
       _maxRetries = maxRetries,
       _baseBackoff = baseBackoff;

  final http.Client _client;
  final String _repo;
  final int _maxRetries;
  final Duration _baseBackoff;

  String? _etag;
  Release? _cachedRelease;

  @override
  Future<Release?> fetchLatestRelease() async {
    final url = Uri.parse('https://api.github.com/repos/$_repo/releases/latest');
    final headers = <String, String>{};
    if (_etag != null) {
      headers['If-None-Match'] = _etag!;
    }

    for (var attempt = 0; attempt <= _maxRetries; attempt++) {
      try {
        final response = await _client.get(url, headers: headers);
        final statusCode = response.statusCode;
        if (statusCode == 304) {
          if (_cachedRelease != null) {
            return _cachedRelease;
          }
          logger.d('UpdateApiService -> 304 but no cached release');
          return null;
        }
        if (statusCode == 200) {
          final release = _parseRelease(response.body);
          if (release == null) {
            return null;
          }
          _etag = response.headers['etag'];
          _cachedRelease = release;
          return release;
        }
        if (_shouldRetryStatus(statusCode) && attempt < _maxRetries) {
          await _delayBeforeRetry(attempt, response.headers['retry-after']);
          continue;
        }
        logger.d('UpdateApiService -> StatusCode: $statusCode');
        return null;
      } on Exception catch (e) {
        if (_isRetryableException(e) && attempt < _maxRetries) {
          await _delayBeforeRetry(attempt, null);
          continue;
        }
        logger.e('UpdateApiService -> Exception', error: e);
        return null;
      } catch (e, st) {
        logger.e('UpdateApiService -> Error', error: e, stackTrace: st);
        return null;
      }
    }

    return null;
  }

  Release? _parseRelease(String body) {
    try {
      final decoded = jsonDecode(body);
      if (decoded is! Map<String, dynamic>) {
        logger.d('UpdateApiService -> Unexpected JSON type: ${decoded.runtimeType}');
        return null;
      }
      return Release.fromJson(decoded);
    } on FormatException catch (e) {
      logger.e('UpdateApiService -> FormatException', error: e);
      return null;
    } on Exception catch (e) {
      logger.e('UpdateApiService -> Exception', error: e);
      return null;
    } catch (e, st) {
      logger.e('UpdateApiService -> Error', error: e, stackTrace: st);
      return null;
    }
  }

  bool _shouldRetryStatus(int statusCode) {
    return statusCode == 408 ||
        statusCode == 429 ||
        statusCode == 500 ||
        statusCode == 502 ||
        statusCode == 503 ||
        statusCode == 504;
  }

  bool _isRetryableException(Exception error) {
    return error is SocketException ||
        error is TimeoutException ||
        error is HandshakeException ||
        error is http.ClientException;
  }

  Future<void> _delayBeforeRetry(int attempt, String? retryAfter) async {
    final retryDelay = _parseRetryAfter(retryAfter);
    final backoff = retryDelay ?? _exponentialBackoff(attempt);
    await Future<void>.delayed(backoff);
  }

  Duration _exponentialBackoff(int attempt) {
    final multiplier = 1 << attempt;
    final millis = _baseBackoff.inMilliseconds * multiplier;
    return Duration(milliseconds: millis);
  }

  Duration? _parseRetryAfter(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    final seconds = int.tryParse(value);
    if (seconds == null || seconds <= 0) {
      return null;
    }
    return Duration(seconds: seconds);
  }

  @override
  Future<String?> fetchHash(String url) async {
    if (url.isEmpty) {
      return null;
    }
    try {
      final response = await _client.get(Uri.parse(url));
      if (response.statusCode != 200) {
        logger.d('UpdateApiService -> Can not get file hash: StatusCode: ${response.statusCode}');
        return null;
      }
      return response.body.trim();
    } on Exception catch (e) {
      logger.e('UpdateApiService -> Exception', error: e);
      return null;
    } catch (e, st) {
      logger.e('UpdateApiService -> Error', error: e, stackTrace: st);
      return null;
    }
  }
}
