// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emploee_get_all_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmploeeGetAllRes _$EmploeeGetAllResFromJson(Map<String, dynamic> json) =>
    EmploeeGetAllRes(
      id: json['id'] as int,
      date: json['date'] as String,
      stuff:
          StuffGetAllResModel.fromJson(json['stuff'] as Map<String, dynamic>),
      face: FaceGetResModel.fromJson(json['face'] as Map<String, dynamic>),
      endDate: json['endDate'] as String,
      startDate: json['startDate'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmploeeGetAllResToJson(EmploeeGetAllRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'stuff': instance.stuff,
      'face': instance.face,
      'endDate': instance.endDate,
      'startDate': instance.startDate,
      'user': instance.user,
    };
