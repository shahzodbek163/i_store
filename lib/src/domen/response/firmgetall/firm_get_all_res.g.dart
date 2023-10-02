// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firm_get_all_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirmGetAllRes _$FirmGetAllResFromJson(Map<String, dynamic> json) =>
    FirmGetAllRes(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      date: json['date'] as String,
      tel: json['tel'] as String,
      web: json['web'] as String,
      email: json['email'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FirmGetAllResToJson(FirmGetAllRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'date': instance.date,
      'tel': instance.tel,
      'web': instance.web,
      'email': instance.email,
      'user': instance.user,
    };
