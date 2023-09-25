// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_get_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceGetResModel _$FaceGetResModelFromJson(Map<String, dynamic> json) =>
    FaceGetResModel(
      id: json['id'] as int,
      date: json['date'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      passport: json['passport'] as String,
      birthday: json['birthday'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String,
    );

Map<String, dynamic> _$FaceGetResModelToJson(FaceGetResModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'passport': instance.passport,
      'birthday': instance.birthday,
      'user': instance.user,
      'tel1': instance.tel1,
      'tel2': instance.tel2,
    };
