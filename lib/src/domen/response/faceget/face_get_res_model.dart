import 'package:i_store/src/domen/response/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'face_get_res_model.g.dart';

@JsonSerializable()
class FaceGetResModel {
  final int id;
  final String date;
  final String firstname;
  final String lastname;
  final String middlename;
  final String passport;
  final String birthday;
  final UserModel user;
  final String tel1;
  final String tel2;

  FaceGetResModel(
      {required this.id,
      required this.date,
      required this.firstname,
      required this.lastname,
      required this.middlename,
      required this.passport,
      required this.birthday,
      required this.user,
      required this.tel1,
      required this.tel2});

  factory FaceGetResModel.fromJson(Map<String, dynamic> json) =>
      _$FaceGetResModelFromJson(json);
  Map<String, dynamic> toJson() => _$FaceGetResModelToJson(this);
}
