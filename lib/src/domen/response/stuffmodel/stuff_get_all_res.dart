import 'package:json_annotation/json_annotation.dart';

part 'stuff_get_all_res.g.dart';

@JsonSerializable()
class StuffGetAllResModel {
  final String name;
  final int id;
  final String date;

  StuffGetAllResModel({
    required this.name,
    required this.id,
    required this.date,
  });
  factory StuffGetAllResModel.fromJson(Map<String, dynamic> json) =>
      _$StuffGetAllResModelFromJson(json);
  Map<String, dynamic> toJson() => _$StuffGetAllResModelToJson(this);
}
