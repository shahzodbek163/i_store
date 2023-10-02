import 'package:json_annotation/json_annotation.dart';

part 'firm_new_req_model.g.dart';

@JsonSerializable()
class FirmNewReqModel {
  final String address;
  final String email;
  final String name;
  final String tel;
  final String web;

  FirmNewReqModel({
    required this.address,
    required this.email,
    required this.name,
    required this.tel,
    required this.web,
  });

  factory FirmNewReqModel.fromJson(Map<String, dynamic> json) =>
      _$FirmNewReqModelFromJson(json);
  Map<String, dynamic> toJson() => _$FirmNewReqModelToJson(this);
}
