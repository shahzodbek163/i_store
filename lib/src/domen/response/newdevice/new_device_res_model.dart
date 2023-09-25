import 'package:json_annotation/json_annotation.dart';

part 'new_device_res_model.g.dart';

@JsonSerializable()
class NewDeviceResModel {
  final bool status;
  final String message;

  NewDeviceResModel({required this.status, required this.message});
  factory NewDeviceResModel.fromJson(Map<String, dynamic> json) =>
      _$NewDeviceResModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewDeviceResModelToJson(this);
}
