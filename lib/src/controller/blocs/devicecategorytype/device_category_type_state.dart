part of 'device_category_type_bloc.dart';

@immutable
sealed class DeviceCategoryTypeState {}

final class DeviceCategoryTypeInitial extends DeviceCategoryTypeState {}

class DeviceTypeListLoadingState extends DeviceCategoryTypeState {}

class DeviceCategoryTypeListLoadedState extends DeviceCategoryTypeState {
  final List<DeviceGetAllRes> deviceCategoryList;

  DeviceCategoryTypeListLoadedState({required this.deviceCategoryList});
}
