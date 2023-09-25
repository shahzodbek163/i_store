import 'package:json_annotation/json_annotation.dart';

part 'face_new_req_model.g.dart';

@JsonSerializable()
class FaceNewReqModel {
  final String birthday;
  final String firstname;
  final String lastname;
  final String middlename;
  final String tel1;
  final String tel2;

  FaceNewReqModel(
      {required this.birthday,
      required this.firstname,
      required this.lastname,
      required this.middlename,
      required this.tel1,
      required this.tel2});
  factory FaceNewReqModel.fromJson(Map<String, dynamic> json) =>
      _$FaceNewReqModelFromJson(json);

  Map<String, dynamic> toJson() => _$FaceNewReqModelToJson(this);
}
