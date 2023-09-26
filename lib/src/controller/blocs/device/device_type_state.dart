part of 'device_type_bloc.dart';

@immutable
sealed class DeviceTypeState {}

final class DeviceTypeInitial extends DeviceTypeState {}

class DeviceTypeListLoadingState extends DeviceTypeState {}

class DeviceTypeListloadedState extends DeviceTypeState {
  final List<DeviceGetAllRes> deviceList;

  DeviceTypeListloadedState({required this.deviceList});
}
