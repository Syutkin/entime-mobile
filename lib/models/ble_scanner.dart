import 'package:meta/meta.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

@immutable
class BleScannerStateModel {
  const BleScannerStateModel({
    required this.discoveredDevices,
    required this.scanIsInProgress,
  });

  final List<DiscoveredDevice> discoveredDevices;
  final bool scanIsInProgress;
}