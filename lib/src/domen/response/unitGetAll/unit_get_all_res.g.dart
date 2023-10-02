// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_get_all_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitGetAllRes _$UnitGetAllResFromJson(Map<String, dynamic> json) =>
    UnitGetAllRes(
      name: json['name'] as String,
      id: json['id'] as int,
      date: json['date'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnitGetAllResToJson(UnitGetAllRes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date,
      'user': instance.user,
    };
