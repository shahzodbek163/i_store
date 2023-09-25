import 'package:json_annotation/json_annotation.dart';

part 'only_name_req_model.g.dart';

@JsonSerializable()
class OnlyNameReqModel {
  final String name;

  OnlyNameReqModel({required this.name});
  factory OnlyNameReqModel.fromJson(Map<String, dynamic> json) =>
      _$OnlyNameReqModelFromJson(json);
  Map<String, dynamic> toJson() => _$OnlyNameReqModelToJson(this);
}
