import 'package:freezed_annotation/freezed_annotation.dart';

import '../../database/model/automatic_start.dart';

part 'bluetooth_message.freezed.dart';

@freezed
sealed class BluetoothMessage with _$BluetoothMessage {
  const factory BluetoothMessage.automaticStart({required AutomaticStart automaticStart}) =
  BluetoothMessageAutomaticStart;
  const factory BluetoothMessage.finish({required String time, required DateTime timestamp}) = BluetoothMessageFinish;
  const factory BluetoothMessage.countdown({required String time}) = BluetoothMessageCountdown;
  const factory BluetoothMessage.voice({required String time}) = BluetoothMessageVoice;
  const factory BluetoothMessage.moduleSettings({required String json}) = BluetoothMessageModuleSettings;

  const factory BluetoothMessage.empty() = BluetoothMessageEmpty;
}
