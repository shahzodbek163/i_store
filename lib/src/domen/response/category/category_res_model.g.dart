// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategroyResModel _$CategroyResModelFromJson(Map<String, dynamic> json) =>
    CategroyResModel(
      (json['productCategoryTypes'] as List<dynamic>)
          .map((e) => DeviceGetAllRes.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      date: json['date'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$CategroyResModelToJson(CategroyResModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'id': instance.id,
      'productCategoryTypes': instance.productCategoryTypes,
    };
