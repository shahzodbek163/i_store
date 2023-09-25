// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_employee_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewEmployeeModel _$NewEmployeeModelFromJson(Map<String, dynamic> json) =>
    NewEmployeeModel(
      auth: AuthReqModel.fromJson(json['auth'] as Map<String, dynamic>),
      endDate: json['endDate'] as String,
      startDate: json['startDate'] as String,
      stuff: json['stuff'] as int,
      face: json['face'] as int,
    );

Map<String, dynamic> _$NewEmployeeModelToJson(NewEmployeeModel instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'endDate': instance.endDate,
      'startDate': instance.startDate,
      'stuff': instance.stuff,
      'face': instance.face,
    };
