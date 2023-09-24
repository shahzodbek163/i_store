import 'package:json_annotation/json_annotation.dart';

part 'register_res_model.g.dart';

@JsonSerializable()
class RegisterResModel {
  final String message;
  final bool status;

  RegisterResModel({required this.message, required this.status});
  factory RegisterResModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResModelToJson(this);
}
