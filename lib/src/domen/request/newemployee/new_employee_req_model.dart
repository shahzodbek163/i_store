import 'package:i_store/src/domen/request/auth/auth_req_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_employee_req_model.g.dart';

@JsonSerializable()
class NewEmployeeModel {
  final AuthReqModel auth;
  final String endDate;
  final String startDate;
  final int stuff;
  final int face;

  NewEmployeeModel(
      {required this.auth,
      required this.endDate,
      required this.startDate,
      required this.stuff,
      required this.face});
  factory NewEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$NewEmployeeModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewEmployeeModelToJson(this);
}
