import 'package:json_annotation/json_annotation.dart';
part 'login_res_model.g.dart';

@JsonSerializable()
class LoginResModel {
  final String token;
  final String message;

  LoginResModel({required this.token, required this.message});
  factory LoginResModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResModelToJson(this);
}
