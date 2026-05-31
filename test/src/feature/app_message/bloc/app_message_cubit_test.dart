import 'package:bloc_test/bloc_test.dart';
import 'package:entime/src/feature/app_message/app_message.dart';
import 'package:test/test.dart';

void main() {
  group('AppMessageCubit', () {
    blocTest<AppMessageCubit, AppMessage?>(
      'emits and clears app message',
      build: AppMessageCubit.new,
      act: (cubit) {
        cubit.show(const AppCsvImportDecodeFailed());
        cubit.clear();
      },
      expect: () => [
        isA<AppCsvImportDecodeFailed>().having(
          (message) => message.severity,
          'severity',
          AppMessageSeverity.error,
        ),
        null,
      ],
    );
  });
}
