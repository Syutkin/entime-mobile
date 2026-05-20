// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:entime/src/feature/ntp/logic/ntp_client.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNtpClient extends Mock implements INtpClient {}

void main() {
  late INtpClient ntpClient;
  late NtpProvider ntpProvider;

  setUp(() {
    ntpClient = MockNtpClient();
    ntpProvider = NtpProvider(ntpClient: ntpClient);
  });

  group('NtpProvider.getNtpOffset', () {
    test('delegates to client and converts to milliseconds', () async {
      when(
        () => ntpClient.getNtpOffset(),
      ).thenAnswer((_) async => 5000000);

      final result = await ntpProvider.getNtpOffset();

      expect(result, 5000);
      verify(
        () => ntpClient.getNtpOffset(),
      ).called(1);
    });

    test('passes custom args to client', () async {
      const lookUpAddress = 'pool.ntp.org';
      const port = 123;
      const timeout = Duration(seconds: 2);
      const cacheDuration = Duration(minutes: 30);

      when(
        () => ntpClient.getNtpOffset(
          lookUpAddress: lookUpAddress,
          port: port,
          timeout: timeout,
          cacheDuration: cacheDuration,
        ),
      ).thenAnswer((_) async => 123000);

      final result = await ntpProvider.getNtpOffset(
        lookUpAddress: lookUpAddress,
        port: port,
        timeout: timeout,
        cacheDuration: cacheDuration,
      );

      expect(result, 123);
      verify(
        () => ntpClient.getNtpOffset(
          lookUpAddress: lookUpAddress,
          port: port,
          timeout: timeout,
          cacheDuration: cacheDuration,
        ),
      ).called(1);
    });
  });

  group('NtpProvider.now', () {
    test('delegates to client', () async {
      final expected = DateTime(2024);

      when(
        () => ntpClient.now(),
      ).thenAnswer((_) async => expected);

      final result = await ntpProvider.now();

      expect(result, expected);
      verify(
        () => ntpClient.now(),
      ).called(1);
    });

    test('passes custom args to client', () async {
      final expected = DateTime(2024, 1, 1, 12, 30);
      const lookUpAddress = 'time.google.com';
      const port = 321;
      const timeout = Duration(seconds: 3);
      const cacheDuration = Duration(minutes: 10);

      when(
        () => ntpClient.now(
          lookUpAddress: lookUpAddress,
          port: port,
          timeout: timeout,
          cacheDuration: cacheDuration,
        ),
      ).thenAnswer((_) async => expected);

      final result = await ntpProvider.now(
        lookUpAddress: lookUpAddress,
        port: port,
        timeout: timeout,
        cacheDuration: cacheDuration,
      );

      expect(result, expected);
      verify(
        () => ntpClient.now(
          lookUpAddress: lookUpAddress,
          port: port,
          timeout: timeout,
          cacheDuration: cacheDuration,
        ),
      ).called(1);
    });
  });

  group('NtpProvider.offset stream', () {
    test('emits immediately and then on interval', () {
      fakeAsync((async) {
        var call = 0;
        when(
          () => ntpClient.getNtpOffset(),
        ).thenAnswer((_) async => call++ == 0 ? 1000 : 2000);

        final provider = NtpProvider(
          ntpClient: ntpClient,
          offsetRefreshInterval: const Duration(seconds: 1),
        );

        final events = <int>[];
        final sub = provider.offset.listen(events.add);

        async.flushMicrotasks();
        expect(events, [1]);

        async
          ..elapse(const Duration(seconds: 1))
          ..flushMicrotasks();
        expect(events, [1, 2]);

        unawaited(sub.cancel());
      });
    });

    test('logs error and continues after failure', () {
      fakeAsync((async) {
        var call = 0;
        when(
          () => ntpClient.getNtpOffset(),
        ).thenAnswer((_) async {
          if (call++ == 0) {
            throw Exception('ntp error');
          }
          return 3000;
        });

        final provider = NtpProvider(
          ntpClient: ntpClient,
          offsetRefreshInterval: const Duration(seconds: 1),
        );

        final events = <int>[];
        final sub = provider.offset.listen(events.add);

        async.flushMicrotasks();
        expect(events, isEmpty);

        async
          ..elapse(const Duration(seconds: 1))
          ..flushMicrotasks();
        expect(events, [3]);

        unawaited(sub.cancel());
      });
    });
  });
}
