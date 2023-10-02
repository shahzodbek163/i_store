import 'package:i_store/src/domen/response/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'unit_get_all_res.g.dart';

@JsonSerializable()
class UnitGetAllRes {
  final String name;
  final int id;
  final String date;
  final UserModel user;

  UnitGetAllRes({
    required this.name,
    required this.id,
    required this.date,
    required this.user,
  });
  factory UnitGetAllRes.fromJson(Map<String, dynamic> json) =>
      _$UnitGetAllResFromJson(json);
  Map<String, dynamic> toJson() => _$UnitGetAllResToJson(this);
}
