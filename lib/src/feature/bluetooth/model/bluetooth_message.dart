import 'package:freezed_annotation/freezed_annotation.dart';

import '../../protocol/protocol.dart';

part 'bluetooth_message.freezed.dart';

@freezed
class BluetoothMessage with _$BluetoothMessage {
  const factory BluetoothMessage.automaticStart({
    required AutomaticStart automaticStart,
  }) = _BluetoothMessageAutomaticStart;
  const factory BluetoothMessage.finish({
    required String time,
    required DateTime timeStamp,
  }) = _BluetoothMessageFinish;
  const factory BluetoothMessage.countdown({required String time}) =
      _BluetoothMessageCountdown;
  const factory BluetoothMessage.voice({required String time}) =
      _BluetoothMessageVoice;
  const factory BluetoothMessage.moduleSettings({required String json}) =
      _BluetoothMessageModuleSettings;

  const factory BluetoothMessage.empty() = _BluetoothMessageEmpty;
}
