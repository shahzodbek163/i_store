part of 'device_type_bloc.dart';

@immutable
sealed class DeviceTypeEvent {}

class LoadDeviceTypeList extends DeviceTypeEvent {}

class DeviceTypeNew extends DeviceTypeEvent {
  final String name;

  DeviceTypeNew({required this.name});
}
