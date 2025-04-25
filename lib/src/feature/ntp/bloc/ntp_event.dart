part of 'ntp_bloc.dart';

@freezed
sealed class NtpEvent with _$NtpEvent {
  const factory NtpEvent.getNtpOffset({String? lookUpAddress, int? port, Duration? timeout, Duration? cacheDuration}) =
      _GetNtpOffset;
}
