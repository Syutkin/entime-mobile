import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/connectivity/bloc/connectivity_bloc.dart';
import 'package:entime/src/feature/connectivity/logic/connectivity_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivityProvider extends Mock implements IConnectivityProvider {}

void main() {
  late IConnectivityProvider connectivityProvider;
  late ConnectivityBloc bloc;

  setUp(() {
    connectivityProvider = MockConnectivityProvider();
    when(() => connectivityProvider.onConnectivityChanged).thenAnswer((_) => Stream.fromIterable([false]));
    when(() => connectivityProvider.isConnected).thenReturn(false);

    bloc = ConnectivityBloc(connectivityProvider);
  });

  group('ConnectivityBloc tests', () {
    test('Initial state is correct', () {
      expect(bloc.state, const ConnectivityState.state(isConnected: false));
    });

    blocTest<ConnectivityBloc, ConnectivityState>(
      'State changes when ConnectivityProvider emit new state',
      setUp: () {
        when(
          () => connectivityProvider.onConnectivityChanged,
        ).thenAnswer((_) => Stream.fromIterable([false, true, false, false, false, true, true, true]));
      },
      build: () => ConnectivityBloc(connectivityProvider),
      expect:
          () => [
            const ConnectivityState.state(isConnected: false),
            const ConnectivityState.state(isConnected: true),
            const ConnectivityState.state(isConnected: false),
            const ConnectivityState.state(isConnected: true),
          ],
    );
  });
}
