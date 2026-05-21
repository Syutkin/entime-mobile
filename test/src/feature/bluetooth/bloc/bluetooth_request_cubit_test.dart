import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BluetoothRequestCubit', () {
    test('generates unique ids for multiple pending requests', () async {
      final cubit = BluetoothRequestCubit();

      try {
        final firstId = cubit.track(
          command: BluetoothProtocolCommandType.loadConfig,
          purpose: BluetoothRequestPurpose.moduleSettingsLoad,
          timeout: const Duration(seconds: 1),
        );
        final secondId = cubit.track(
          command: BluetoothProtocolCommandType.saveConfig,
          purpose: BluetoothRequestPurpose.moduleSettingsSave,
          timeout: const Duration(seconds: 1),
        );

        expect(secondId, firstId + 1);
        expect(cubit.isPending(firstId), isTrue);
        expect(cubit.isPending(secondId), isTrue);
      } finally {
        await cubit.close();
      }
    });

    test('completes request only when id and command match', () async {
      final cubit = BluetoothRequestCubit();

      try {
        final id = cubit.track(
          command: BluetoothProtocolCommandType.saveConfig,
          purpose: BluetoothRequestPurpose.moduleSettingsSave,
          timeout: const Duration(seconds: 1),
        );

        final mismatched = cubit.complete(BluetoothJsonResponseLoadConfig(id: id));
        expect(mismatched, isNull);
        expect(cubit.isPending(id), isTrue);

        final completed = cubit.complete(BluetoothJsonResponseSaveConfig(id: id));
        expect(completed?.id, id);
        expect(completed?.purpose, BluetoothRequestPurpose.moduleSettingsSave);
        expect(cubit.isPending(id), isFalse);
      } finally {
        await cubit.close();
      }
    });

    test('complete cancels timeout', () async {
      final cubit = BluetoothRequestCubit();
      final timedOut = <PendingBluetoothRequest>[];
      final subscription = cubit.stream.listen((state) {
        if (state is BluetoothRequestTimedOut) {
          timedOut.add(state.request);
        }
      });

      try {
        final id = cubit.track(
          command: BluetoothProtocolCommandType.saveConfig,
          purpose: BluetoothRequestPurpose.moduleSettingsSave,
          timeout: const Duration(milliseconds: 10),
        );

        final completed = cubit.complete(BluetoothJsonResponseSaveConfig(id: id));
        await Future<void>.delayed(const Duration(milliseconds: 30));

        expect(completed?.id, id);
        expect(cubit.isPending(id), isFalse);
        expect(timedOut, isEmpty);
      } finally {
        await subscription.cancel();
        await cubit.close();
      }
    });

    test('close cancels pending timeouts', () async {
      final cubit = BluetoothRequestCubit();
      final timedOut = <PendingBluetoothRequest>[];
      final subscription = cubit.stream.listen((state) {
        if (state is BluetoothRequestTimedOut) {
          timedOut.add(state.request);
        }
      });

      final id = cubit.track(
        command: BluetoothProtocolCommandType.loadConfig,
        purpose: BluetoothRequestPurpose.moduleSettingsLoad,
        timeout: const Duration(milliseconds: 10),
      );

      await cubit.close();
      await Future<void>.delayed(const Duration(milliseconds: 30));

      expect(cubit.isPending(id), isFalse);
      expect(timedOut, isEmpty);

      await subscription.cancel();
    });

    test('emits timeout separately for each pending request', () async {
      final cubit = BluetoothRequestCubit();
      final timedOut = <PendingBluetoothRequest>[];
      final subscription = cubit.stream.listen((state) {
        if (state is BluetoothRequestTimedOut) {
          timedOut.add(state.request);
        }
      });

      try {
        final firstId = cubit.track(
          command: BluetoothProtocolCommandType.loadConfig,
          purpose: BluetoothRequestPurpose.moduleSettingsLoad,
          timeout: const Duration(milliseconds: 10),
        );
        final secondId = cubit.track(
          command: BluetoothProtocolCommandType.saveConfig,
          purpose: BluetoothRequestPurpose.moduleSettingsSave,
          timeout: const Duration(milliseconds: 30),
        );

        await Future<void>.delayed(const Duration(milliseconds: 20));
        expect(timedOut.map((request) => request.id), [firstId]);
        expect(cubit.isPending(firstId), isFalse);
        expect(cubit.isPending(secondId), isTrue);

        await Future<void>.delayed(const Duration(milliseconds: 20));
        expect(timedOut.map((request) => request.id), [firstId, secondId]);
        expect(cubit.isPending(secondId), isFalse);
      } finally {
        await subscription.cancel();
        await cubit.close();
      }
    });
  });
}
