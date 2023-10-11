import 'package:i_store/src/domen/request/auth/auth_req_model.dart';
import 'package:i_store/src/domen/request/facenew/face_new_req_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_employee_req_model.g.dart';

@JsonSerializable()
class NewEmployeeModel {
  final AuthReqModel auth;
  final String endDate;
  final FaceNewReqModel face;
  final String startDate;
  final int stuffId;

  NewEmployeeModel({
    required this.auth,
    required this.endDate,
    required this.face,
    required this.startDate,
    required this.stuffId,
  });
  factory NewEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$NewEmployeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewEmployeeModelToJson(this);
}
