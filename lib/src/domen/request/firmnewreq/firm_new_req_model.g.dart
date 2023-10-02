// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firm_new_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirmNewReqModel _$FirmNewReqModelFromJson(Map<String, dynamic> json) =>
    FirmNewReqModel(
      address: json['address'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      tel: json['tel'] as String,
      web: json['web'] as String,
    );

Map<String, dynamic> _$FirmNewReqModelToJson(FirmNewReqModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'name': instance.name,
      'tel': instance.tel,
      'web': instance.web,
    };
