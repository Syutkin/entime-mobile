part of 'ble_scanner_bloc.dart';

@immutable
class BleScannerState {
  final List<DiscoveredDevice> discoveredDevices;
  final bool scanIsInProgress;

  const BleScannerState({
    required this.discoveredDevices,
    required this.scanIsInProgress,
  });

  List<Object> get props => [discoveredDevices, scanIsInProgress];
}
