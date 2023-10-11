// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_employee_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewEmployeeModel _$NewEmployeeModelFromJson(Map<String, dynamic> json) =>
    NewEmployeeModel(
      auth: AuthReqModel.fromJson(json['auth'] as Map<String, dynamic>),
      endDate: json['endDate'] as String,
      face: FaceNewReqModel.fromJson(json['face'] as Map<String, dynamic>),
      startDate: json['startDate'] as String,
      stuffId: json['stuffId'] as int,
    );

Map<String, dynamic> _$NewEmployeeModelToJson(NewEmployeeModel instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'endDate': instance.endDate,
      'face': instance.face,
      'startDate': instance.startDate,
      'stuffId': instance.stuffId,
    };
