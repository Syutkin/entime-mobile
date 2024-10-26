import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:entime/src/feature/ntp/logic/ntp_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/logger/logger.dart';

part 'ntp_bloc.freezed.dart';
part 'ntp_event.dart';
part 'ntp_state.dart';

class NtpBloc extends Bloc<NtpEvent, NtpState> {
  final INtpProvider _ntpProvider;

  int _offset = 0;

  NtpBloc(INtpProvider ntpProvider)
      : _ntpProvider = ntpProvider,
        super(NtpState.initial(0)) {
    on<NtpEvent>(transformer: sequential(), (event, emit) async {
      await event.map(
        getNtpOffset: (_GetNtpOffset value) async {
          emit(NtpState.loading(_offset));
          try {
            _offset = await _ntpProvider.getNtpOffset(
              lookUpAddress: event.lookUpAddress,
              port: event.port,
              timeout: event.timeout,
              cacheDuration: event.cacheDuration,
            );
            emit(NtpState.success(_offset));
          } catch (e) {
            logger.e('Can not get ntp offset: $e');
            emit(NtpState.failure(_offset));
          }
        },
      );
    });
  }
}
