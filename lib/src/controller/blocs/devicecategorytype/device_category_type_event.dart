part of 'device_category_type_bloc.dart';

@immutable
sealed class DeviceCategoryTypeEvent {}

class LoadDeviceCategoryTypeList extends DeviceCategoryTypeEvent {}

class DeviceCategoryTypeNew extends DeviceCategoryTypeEvent {
  final CategoryNewReqModel reqModel;

  DeviceCategoryTypeNew({required this.reqModel});
}
