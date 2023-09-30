// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryNewReqModel _$CategoryNewReqModelFromJson(Map<String, dynamic> json) =>
    CategoryNewReqModel(
      name: json['name'] as String,
      productCategoryTypes: (json['productCategoryTypes'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$CategoryNewReqModelToJson(
        CategoryNewReqModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'productCategoryTypes': instance.productCategoryTypes,
    };
