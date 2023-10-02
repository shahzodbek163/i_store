import 'package:i_store/src/domen/response/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'firm_get_all_res.g.dart';

@JsonSerializable()
class FirmGetAllRes {
  final int id;
  final String name;
  final String address;
  final String date;
  final String tel;
  final String web;
  final String email;
  final UserModel user;

  FirmGetAllRes({
    required this.id,
    required this.name,
    required this.address,
    required this.date,
    required this.tel,
    required this.web,
    required this.email,
    required this.user,
  });
  factory FirmGetAllRes.fromJson(Map<String, dynamic> json) =>
      _$FirmGetAllResFromJson(json);
  Map<String, dynamic> toJson() => _$FirmGetAllResToJson(this);
}
