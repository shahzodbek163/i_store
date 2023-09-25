// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_new_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceNewReqModel _$FaceNewReqModelFromJson(Map<String, dynamic> json) =>
    FaceNewReqModel(
      birthday: json['birthday'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String,
    );

Map<String, dynamic> _$FaceNewReqModelToJson(FaceNewReqModel instance) =>
    <String, dynamic>{
      'birthday': instance.birthday,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'tel1': instance.tel1,
      'tel2': instance.tel2,
    };
