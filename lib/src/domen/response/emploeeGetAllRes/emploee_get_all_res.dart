import 'package:i_store/src/domen/response/faceget/face_get_res_model.dart';
import 'package:i_store/src/domen/response/stuffmodel/stuff_get_all_res.dart';
import 'package:i_store/src/domen/response/user/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'emploee_get_all_res.g.dart';

@JsonSerializable()
class EmploeeGetAllRes {
  final int id;
  final String date;
  final StuffGetAllResModel stuff;
  final FaceGetResModel face;
  final String endDate;
  final String startDate;
  final UserModel user;

  EmploeeGetAllRes({
    required this.id,
    required this.date,
    required this.stuff,
    required this.face,
    required this.endDate,
    required this.startDate,
    required this.user,
  });
  factory EmploeeGetAllRes.fromJson(Map<String, dynamic> json) =>
      _$EmploeeGetAllResFromJson(json);
  Map<String, dynamic> toJson() => _$EmploeeGetAllResToJson(this);
}
