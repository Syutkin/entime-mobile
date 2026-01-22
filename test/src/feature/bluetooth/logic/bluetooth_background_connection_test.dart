import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Мок-классы для тестирования
class MockBluetoothConnection extends Mock implements IBluetoothConnection {}

class MockStreamSubscription extends Mock implements StreamSubscription<Uint8List> {}

class MockStream extends Mock implements Stream<Uint8List> {}

// Мок-фабрика для тестирования
class MockBluetoothConnectionFactory implements IBluetoothConnectionFactory {
  MockBluetoothConnectionFactory({this.mockConnection});
  final IBluetoothConnection? mockConnection;
  Exception? throwOnConnect;

  @override
  Future<IBluetoothConnection> connectToDevice(BluetoothDevice device) async {
    if (throwOnConnect != null) {
      throw throwOnConnect!;
    }
    if (mockConnection != null) {
      return mockConnection!;
    }
    // Возвращаем новый мок если не передан
    return MockBluetoothConnection();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late BluetoothBackgroundConnection bbc;
  late MockBluetoothConnection mockConnection;
  late MockStreamSubscription mockSubscription;
  late MockStream mockInputStream;
  // late MockBluetoothConnectionFactory mockFactory;

  setUpAll(() {
    // Регистрируем fallback значения
    registerFallbackValue(Uint8List(0));
    registerFallbackValue(const Stream<Uint8List>.empty());
  });

  setUp(() {
    bbc = BluetoothBackgroundConnection();
    mockConnection = MockBluetoothConnection();
    mockSubscription = MockStreamSubscription();
    mockInputStream = MockStream();
    // mockFactory = MockBluetoothConnectionFactory();
  });

  tearDown(() async {
    await bbc.dispose();
  });

  group('BluetoothBackgroundConnection', () {
    group('Properties', () {
      test('isConnected should return false when no connection', () {
        expect(bbc.isConnected, false);
      });

      test('message should return a stream', () {
        expect(bbc.message, isA<Stream<String>>());
      });
    });

    group('sendMessage', () {
      Future<BluetoothBackgroundConnection> connectWithMock({bool connected = true}) async {
        final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
        final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
        final device = BluetoothDevice.fromId('00:11:22:33:44:55');

        when(() => mockConnection.isConnected).thenReturn(connected);
        when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
        when(() => mockConnection.finish()).thenAnswer((_) async {});
        when(() => mockConnection.write(any())).thenAnswer((_) async {});
        when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
        when(() => mockSubscription.onDone(any())).thenReturn(null);
        when(() => mockSubscription.cancel()).thenAnswer((_) async {});

        await bbcWithMock.connect(device);
        return bbcWithMock;
      }

      test('should return false for empty message and not write', () async {
        final bbcWithMock = await connectWithMock();
        final result = await bbcWithMock.sendMessage('');

        expect(result, false);
        verifyNever(() => mockConnection.write(any()));

        await bbcWithMock.dispose();
      });

      test('should return false for whitespace-only message and not write', () async {
        final bbcWithMock = await connectWithMock();
        final result = await bbcWithMock.sendMessage('   ');

        expect(result, false);
        verifyNever(() => mockConnection.write(any()));

        await bbcWithMock.dispose();
      });

      test('should trim and send payload with newline', () async {
        final bbcWithMock = await connectWithMock();
        final result = await bbcWithMock.sendMessage('  test  ');

        expect(result, true);
        verify(
          () => mockConnection.write(
            any(
              that: predicate<Uint8List>((data) => utf8.decode(data) == 'test\n'),
            ),
          ),
        ).called(1);

        await bbcWithMock.dispose();
      });

      test('should return false when not connected and not write', () async {
        final bbcWithMock = await connectWithMock(connected: false);
        final result = await bbcWithMock.sendMessage('test message');

        expect(result, false);
        verifyNever(() => mockConnection.write(any()));

        await bbcWithMock.dispose();
      });
    });

    group('start', () {
      test('should start without errors when not connected', () async {
        await bbc.start();
        // Проверяем, что метод выполнился без ошибок
        expect(bbc, isA<BluetoothBackgroundConnection>());
      });
    });

    group('stop', () {
      test('should finish connection when connected', () async {
        final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
        final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
        final device = BluetoothDevice.fromId('00:11:22:33:44:55');

        when(() => mockConnection.isConnected).thenReturn(true);
        when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
        when(() => mockConnection.finish()).thenAnswer((_) async {});
        when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
        when(() => mockSubscription.onDone(any())).thenReturn(null);
        when(() => mockSubscription.cancel()).thenAnswer((_) async {});

        await bbcWithMock.connect(device);
        await bbcWithMock.stop();

        verify(() => mockConnection.finish()).called(1);

        await bbcWithMock.dispose();
      });
    });

    group('dispose', () {
      test('should finish connection and cancel subscription', () async {
        final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
        final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
        final device = BluetoothDevice.fromId('00:11:22:33:44:55');

        when(() => mockConnection.isConnected).thenReturn(true);
        when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
        when(() => mockConnection.finish()).thenAnswer((_) async {});
        when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
        when(() => mockSubscription.onDone(any())).thenReturn(null);
        when(() => mockSubscription.cancel()).thenAnswer((_) async {});

        await bbcWithMock.connect(device);
        await bbcWithMock.dispose();

        verify(() => mockConnection.finish()).called(1);
        verify(() => mockSubscription.cancel()).called(1);
      });
    });

    group('callbacks', () {
      test('should register onDisconnect callback', () {
        var callbackCalled = false;
        bbc.onDisconnect(() {
          callbackCalled = true;
        });

        // В реальном сценарии callback будет вызван при отключении соединения
        expect(callbackCalled, false); // Изначально callback не вызван

        // Дополнительно можно проверить, что метод onDisconnect не падает
        expect(() => bbc.onDisconnect(() {}), returnsNormally);
      });

      test('should register onSendError callback', () {
        var callbackCalled = false;

        bbc.onSendError((error) {
          callbackCalled = true;
        });

        // В реальном сценарии callback будет вызван при ошибке отправки
        expect(callbackCalled, false); // Изначально callback не вызван

        // Дополнительно можно проверить, что метод onSendError не падает
        expect(() => bbc.onSendError((_) {}), returnsNormally);
      });
    });

    group('message processing', () {
      test('should provide message stream', () {
        expect(bbc.message, isA<Stream<String>>());
      });

      test('should handle stream subscription', () async {
        final subscription = bbc.message.listen((message) {
          // Обработка сообщения
        });

        expect(subscription, isA<StreamSubscription<String>>());
        await subscription.cancel();
      });
    });

    group('error handling', () {
      test('should handle operations gracefully when not connected', () async {
        // Тестируем, что операции не падают с ошибками когда нет соединения
        await bbc.start();
        await bbc.stop();
        final result = await bbc.sendMessage('test');

        expect(result, false); // false потому что нет соединения
        // Проверяем, что операции завершились без исключений
        expect(() async {
          await bbc.start();
          await bbc.stop();
        }, returnsNormally);
      });
    });

    group('integration scenarios', () {
      test('should handle complete lifecycle without connection', () async {
        // Тестируем полный жизненный цикл без реального соединения
        await bbc.start();
        await bbc.stop();
        await bbc.dispose();

        // Проверяем, что все операции завершились без исключений
        expect(() async {
          await bbc.start();
          await bbc.stop();
          await bbc.dispose();
        }, returnsNormally);
      });

      test('should send multiple messages and ignore empty', () async {
        final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
        final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
        final device = BluetoothDevice.fromId('00:11:22:33:44:55');

        when(() => mockConnection.isConnected).thenReturn(true);
        when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
        when(() => mockConnection.finish()).thenAnswer((_) async {});
        when(() => mockConnection.write(any())).thenAnswer((_) async {});
        when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
        when(() => mockSubscription.onDone(any())).thenReturn(null);
        when(() => mockSubscription.cancel()).thenAnswer((_) async {});

        await bbcWithMock.connect(device);

        final result1 = await bbcWithMock.sendMessage('message1');
        final result2 = await bbcWithMock.sendMessage('message2');
        final result3 = await bbcWithMock.sendMessage('');

        expect(result1, true);
        expect(result2, true);
        expect(result3, false);
        verify(() => mockConnection.write(any())).called(2);

        await bbcWithMock.dispose();
      });

      test('should finish connection on stop and dispose in sequence', () async {
        final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
        final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
        final device = BluetoothDevice.fromId('00:11:22:33:44:55');

        when(() => mockConnection.isConnected).thenReturn(true);
        when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
        when(() => mockConnection.finish()).thenAnswer((_) async {});
        when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
        when(() => mockSubscription.onDone(any())).thenReturn(null);
        when(() => mockSubscription.cancel()).thenAnswer((_) async {});

        await bbcWithMock.connect(device);
        await bbcWithMock.stop();
        await bbcWithMock.dispose();

        verify(() => mockConnection.finish()).called(greaterThanOrEqualTo(1));
      });
    });

    group('edge cases', () {
      test('should handle dispose multiple times', () async {
        await bbc.dispose();
        await bbc.dispose(); // Второй вызов не должен падать

        // Проверяем, что повторные вызовы dispose не падают
        expect(() async {
          await bbc.dispose();
          await bbc.dispose();
        }, returnsNormally);
      });

      test('should handle start/stop multiple times', () async {
        await bbc.start();
        await bbc.start(); // Второй вызов не должен падать
        await bbc.stop();
        await bbc.stop(); // Второй вызов не должен падать

        // Проверяем, что повторные вызовы start/stop не падают
        expect(() async {
          await bbc.start();
          await bbc.start();
          await bbc.stop();
          await bbc.stop();
        }, returnsNormally);
      });
    });
  });

  group('sendMessage with mocked connection', () {
    test('should return true for non-empty message when connected via mock factory', () async {
      // Создаем BluetoothBackgroundConnection с мок-фабрикой
      final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory)
        ..onDisconnect(() {})
        ..onSendError((_) {});

      final device = BluetoothDevice.fromId('00:11:22:33:44:55');

      // Настраиваем мок-соединение
      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
      when(() => mockConnection.finish()).thenAnswer((_) async {});
      when(() => mockConnection.write(any())).thenAnswer((_) async {});
      when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
      when(() => mockSubscription.onDone(any())).thenReturn(null);
      when(() => mockSubscription.cancel()).thenAnswer((_) async {});

      // Подключаемся (это вызовет мок-фабрику)
      await bbcWithMock.connect(device);

      // Отправляем сообщение
      final result = await bbcWithMock.sendMessage('test message');

      // Проверяем результат
      expect(result, true);

      // Проверяем, что запись была вызвана
      verify(() => mockConnection.write(any())).called(1);

      await bbcWithMock.dispose();
    });

    test('should return false for empty message even when connected', () async {
      final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory)
        ..onDisconnect(() {})
        ..onSendError((_) {});

      final device = BluetoothDevice.fromId('00:11:22:33:44:55');

      // Настраиваем мок-соединение
      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
      when(() => mockConnection.finish()).thenAnswer((_) async {});
      when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
      when(() => mockSubscription.onDone(any())).thenReturn(null);
      when(() => mockSubscription.cancel()).thenAnswer((_) async {});

      await bbcWithMock.connect(device);

      final result = await bbcWithMock.sendMessage('');

      expect(result, false);

      await bbcWithMock.dispose();
    });

    test('should swallow errors when connect fails', () async {
      final mockFactory = MockBluetoothConnectionFactory()..throwOnConnect = Exception('connect failed');
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
      final device = BluetoothDevice.fromId('00:11:22:33:44:55');

      await bbcWithMock.connect(device);

      expect(bbcWithMock.isConnected, isFalse);

      await bbcWithMock.dispose();
    });

    test('should emit messages split by newline from input stream', () async {
      final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
      final device = BluetoothDevice.fromId('00:11:22:33:44:55');
      final controller = StreamController<Uint8List>();

      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.input).thenAnswer((_) => controller.stream);
      when(() => mockConnection.close()).thenAnswer((_) async {});
      when(() => mockConnection.finish()).thenAnswer((_) async {});

      await bbcWithMock.connect(device);

      final messages = <String>[];
      final sub = bbcWithMock.message.listen(messages.add);

      controller..add(Uint8List.fromList(utf8.encode('foo')))
      ..add(Uint8List.fromList(utf8.encode('bar\nbaz\n')));
      await Future<void>.delayed(Duration.zero);

      expect(messages, ['foobar', 'baz']);

      await sub.cancel();
      await controller.close();
      await bbcWithMock.dispose();
    });

    test('should call onDisconnect when input stream closes', () async {
      final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
      final device = BluetoothDevice.fromId('00:11:22:33:44:55');
      final controller = StreamController<Uint8List>();
      var disconnected = false;

      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.input).thenAnswer((_) => controller.stream);
      when(() => mockConnection.close()).thenAnswer((_) async {});
      when(() => mockConnection.finish()).thenAnswer((_) async {});

      bbcWithMock.onDisconnect(() {
        disconnected = true;
      });

      await bbcWithMock.connect(device);
      await controller.close();
      await Future<void>.delayed(Duration.zero);

      expect(disconnected, isTrue);

      await bbcWithMock.dispose();
    });

    test('should call onSendError when write throws', () async {
      final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory);
      final device = BluetoothDevice.fromId('00:11:22:33:44:55');
      final controller = StreamController<Uint8List>();
      final errors = <String>[];

      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.input).thenAnswer((_) => controller.stream);
      when(() => mockConnection.finish()).thenAnswer((_) async {});
      when(() => mockConnection.write(any())).thenThrow(Exception('boom'));

      bbcWithMock.onSendError(errors.add);

      await bbcWithMock.connect(device);
      final result = await bbcWithMock.sendMessage('ping');

      expect(result, isFalse);
      expect(errors, isNotEmpty);

      await controller.close();
      await bbcWithMock.dispose();
    });
  });
}
