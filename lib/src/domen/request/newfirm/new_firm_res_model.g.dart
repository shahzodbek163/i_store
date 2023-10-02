// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_firm_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewFirmResModel _$NewFirmResModelFromJson(Map<String, dynamic> json) =>
    NewFirmResModel(
      json['address'] as String,
      json['email'] as String,
      json['name'] as String,
      json['tel'] as String,
      json['web'] as String,
    );

Map<String, dynamic> _$NewFirmResModelToJson(NewFirmResModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'name': instance.name,
      'tel': instance.tel,
      'web': instance.web,
    };
