part of 'ntp_bloc.dart';

@freezed
class NtpState with _$NtpState {
  const factory NtpState.initial(int offset) = _InitialState;

  const factory NtpState.loading(int offset) = _LoadingState;

  const factory NtpState.success(int offset) = _SuccessState;

  const factory NtpState.failure(int offset) = _FailureState;
}
