part of 'ble_scanner_bloc.dart';

@immutable
abstract class BleScannerEvent {
  const BleScannerEvent();

  List<Object> get props => [];
}

class BleScannerStatusUpdate extends BleScannerEvent {
  final List<DiscoveredDevice> discoveredDevices;
  final bool scanIsInProgress;

  BleScannerStatusUpdate({
    required this.discoveredDevices,
    required this.scanIsInProgress,
  });

  @override
  List<Object> get props => [discoveredDevices, scanIsInProgress];

  @override
  String toString() =>
      'BleScannerStatus { Discovered devices: $discoveredDevices, Scan is in progress: $scanIsInProgress }';
}

class BleScannerStart extends BleScannerEvent {}

class BleScannerStop extends BleScannerEvent {}