import 'package:json_annotation/json_annotation.dart';

part 'new_device_req_model.g.dart';

@JsonSerializable()
class NewDeviceReqModel {
  final String name;

  NewDeviceReqModel({required this.name});
  factory NewDeviceReqModel.fromJson(Map<String, dynamic> json) =>
      _$NewDeviceReqModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewDeviceReqModelToJson(this);
}
