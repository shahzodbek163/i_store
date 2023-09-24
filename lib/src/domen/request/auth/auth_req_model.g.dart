// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthReqModel _$AuthReqModelFromJson(Map<String, dynamic> json) => AuthReqModel(
      password: json['password'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$AuthReqModelToJson(AuthReqModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'username': instance.username,
    };
