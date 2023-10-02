import 'package:json_annotation/json_annotation.dart';
part 'new_firm_res_model.g.dart';

@JsonSerializable()
class NewFirmResModel {
  final String address;
  final String email;
  final String name;
  final String tel;
  final String web;

  NewFirmResModel(this.address, this.email, this.name, this.tel, this.web);
  factory NewFirmResModel.fromJson(Map<String, dynamic> json) =>
      _$NewFirmResModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewFirmResModelToJson(this);
}
