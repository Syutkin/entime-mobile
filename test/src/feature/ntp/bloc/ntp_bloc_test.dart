import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/ntp/bloc/ntp_bloc.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNtpProvider extends Mock implements NtpProvider {}

void main() {
  late NtpProvider ntpProvider;
  late String lookUpAddress;
  late int port;

  setUp(() {
    ntpProvider = MockNtpProvider();
    lookUpAddress = 'lookupAddress';
    port = 1234;
  });

  group('Test ntp bloc', () {
    test('Initial ntp state is correct', () {
      final bluetoothBloc = NtpBloc(ntpProvider);
      expect(bluetoothBloc.state, const NtpState.initial(0));
    });

    blocTest<NtpBloc, NtpState>(
      'Successfully get ntp offset',
      setUp: () {
        when(() => ntpProvider.getNtpOffset())
            .thenAnswer((_) => Future.value(1234));
      },
      build: () => NtpBloc(ntpProvider),
      act: (bloc) => bloc.add(const NtpEvent.getNtpOffset()),
      expect: () => [
        const NtpState.loading(0),
        const NtpState.success(1234),
      ],
    );

    blocTest<NtpBloc, NtpState>(
      "Couldn't get ntp offset",
      setUp: () {
        when(() => ntpProvider.getNtpOffset())
            .thenThrow((_) => Exception('Ntp error'));
      },
      build: () => NtpBloc(ntpProvider),
      act: (bloc) => bloc.add(const NtpEvent.getNtpOffset()),
      expect: () => [
        const NtpState.loading(0),
        const NtpState.failure(0),
      ],
    );

    blocTest<NtpBloc, NtpState>(
      'Get ntp offset after first failure',
      setUp: () {
        when(() => ntpProvider.getNtpOffset())
            .thenThrow((_) => Exception('Ntp error'));

        when(
          () => ntpProvider.getNtpOffset(
            lookUpAddress: lookUpAddress,
            port: port,
          ),
        ).thenAnswer((_) => Future.value(5432));
      },
      build: () => NtpBloc(ntpProvider),
      act: (bloc) {
        bloc
          ..add(const NtpEvent.getNtpOffset())
          ..add(
            NtpEvent.getNtpOffset(
              lookUpAddress: lookUpAddress,
              port: port,
            ),
          );
      },
      expect: () => [
        const NtpState.loading(0),
        const NtpState.failure(0),
        const NtpState.loading(0),
        const NtpState.success(5432),
      ],
    );
  });
}
