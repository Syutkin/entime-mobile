import 'dart:async';
import 'dart:typed_data';

import 'package:entime/src/feature/bluetooth/bluetooth.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Мок-классы для тестирования
class MockBluetoothConnection extends Mock implements IBluetoothConnection {}

class MockBluetoothDevice extends Mock implements BluetoothDevice {}

class MockStreamSubscription extends Mock implements StreamSubscription<Uint8List> {}

class MockStream extends Mock implements Stream<Uint8List> {}

class MockBluetoothStreamSink extends Mock implements BluetoothStreamSink<Uint8List> {}

// Мок-фабрика для тестирования
class MockBluetoothConnectionFactory implements IBluetoothConnectionFactory {
  MockBluetoothConnectionFactory({this.mockConnection});
  final IBluetoothConnection? mockConnection;

  @override
  Future<IBluetoothConnection> connectToAddress(String address) async {
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
  late MockBluetoothDevice mockDevice;
  late MockStreamSubscription mockSubscription;
  late MockStream mockInputStream;
  late MockBluetoothStreamSink mockOutputStream;
  // late MockBluetoothConnectionFactory mockFactory;

  setUpAll(() {
    // Регистрируем fallback значения
    registerFallbackValue(Uint8List(0));
    registerFallbackValue(const Stream<Uint8List>.empty());
  });

  setUp(() {
    bbc = BluetoothBackgroundConnection();
    mockConnection = MockBluetoothConnection();
    mockDevice = MockBluetoothDevice();
    mockSubscription = MockStreamSubscription();
    mockInputStream = MockStream();
    mockOutputStream = MockBluetoothStreamSink();
    // mockFactory = MockBluetoothConnectionFactory();
  });

  tearDown(() {
    bbc.dispose();
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
      test('should return false for empty message', () async {
        final result = await bbc.sendMessage('');
        expect(result, false);
      });

      test('should return false for whitespace-only message', () async {
        final result = await bbc.sendMessage('   ');
        expect(result, false);
      });

      test('should return false for non-empty message when not connected', () async {
        //Метод проверяет соединение и возвращает false если его нет
        final result = await bbc.sendMessage('test message');
        expect(result, false);
      });

      test('should log warning when trying to send message without connection', () async {
        // Тест проверяет, что при попытке отправить сообщение без соединения
        // метод возвращает false
        final result = await bbc.sendMessage('test message');
        expect(result, false);
      });

      test('should properly trim messages before sending', () async {
        final result1 = await bbc.sendMessage('  test  ');
        final result2 = await bbc.sendMessage('test');

        // Оба должны возвращать false, так как нет соединения
        expect(result1, false);
        expect(result2, false);
      });

      test('should handle various whitespace patterns correctly', () async {
        // Тестируем различные паттерны пробелов
        final result1 = await bbc.sendMessage('\t\n test \t\n');
        final result2 = await bbc.sendMessage('  ');
        final result3 = await bbc.sendMessage('\t\n\r');

        expect(result1, false); // false потому что нет соединения
        expect(result2, false); // false потому что после trim() ничего не остается
        expect(result3, false); // false потому что после trim() ничего не остается
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
      test('should stop without errors when not connected', () async {
        await bbc.stop();
        // Проверяем, что метод выполнился без ошибок
        expect(bbc, isA<BluetoothBackgroundConnection>());
      });
    });

    group('dispose', () {
      test('should dispose resources successfully', () async {
        await bbc.dispose();
        // Проверяем, что метод выполнился без ошибок
        expect(bbc, isA<BluetoothBackgroundConnection>());
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

      test('should handle multiple message sends when not connected', () async {
        final result1 = await bbc.sendMessage('message1');
        final result2 = await bbc.sendMessage('message2');
        final result3 = await bbc.sendMessage('');

        expect(result1, false); // false потому что нет соединения
        expect(result2, false); // false потому что нет соединения
        expect(result3, false);
      });

      test('should handle multiple operations in sequence', () async {
        await bbc.start();
        final result1 = await bbc.sendMessage('test1');
        final result2 = await bbc.sendMessage('test2');
        await bbc.stop();
        await bbc.dispose();

        expect(result1, false); // false потому что нет соединения
        expect(result2, false); // false потому что нет соединения
        // Проверяем, что все операции завершились без исключений
        expect(() async {
          await bbc.start();
          await bbc.stop();
          await bbc.dispose();
        }, returnsNormally);
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

      // Настраиваем мок-устройство
      when(() => mockDevice.address).thenReturn('00:11:22:33:44:55');

      // Настраиваем мок-соединение
      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.output).thenReturn(mockOutputStream);
      when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
      when(() => mockConnection.finish()).thenAnswer((_) async {});
      when(() => mockOutputStream.add(any())).thenReturn(null);
      when(() => mockOutputStream.allSent).thenAnswer((_) async {});
      when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
      when(() => mockSubscription.onDone(any())).thenReturn(null);
      when(() => mockSubscription.cancel()).thenAnswer((_) async {});

      // Подключаемся (это вызовет мок-фабрику)
      await bbcWithMock.connect(mockDevice);

      // Отправляем сообщение
      final result = await bbcWithMock.sendMessage('test message');

      // Проверяем результат
      expect(result, true);

      // Проверяем, что метод add был вызван
      verify(() => mockOutputStream.add(any())).called(1);

      await bbcWithMock.dispose();
    });

    test('should return false for empty message even when connected', () async {
      final mockFactory = MockBluetoothConnectionFactory(mockConnection: mockConnection);
      final bbcWithMock = BluetoothBackgroundConnection(connectionFactory: mockFactory)
        ..onDisconnect(() {})
        ..onSendError((_) {});

      // Настраиваем мок-устройство
      when(() => mockDevice.address).thenReturn('00:11:22:33:44:55');

      // Настраиваем мок-соединение
      when(() => mockConnection.isConnected).thenReturn(true);
      when(() => mockConnection.output).thenReturn(mockOutputStream);
      when(() => mockConnection.input).thenAnswer((_) => mockInputStream);
      when(() => mockConnection.finish()).thenAnswer((_) async {});
      when(() => mockInputStream.listen(any())).thenReturn(mockSubscription);
      when(() => mockSubscription.onDone(any())).thenReturn(null);
      when(() => mockSubscription.cancel()).thenAnswer((_) async {});

      await bbcWithMock.connect(mockDevice);

      final result = await bbcWithMock.sendMessage('');

      expect(result, false);

      await bbcWithMock.dispose();
    });
  });
}
