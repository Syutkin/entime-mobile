part of 'ntp_bloc.dart';

@freezed
sealed class NtpState with _$NtpState {
  const factory NtpState.initial(int offset) = Initial;

  const factory NtpState.loading(int offset) = Loading;

  const factory NtpState.success(int offset) = Success;

  const factory NtpState.failure(int offset) = Failure;
}
