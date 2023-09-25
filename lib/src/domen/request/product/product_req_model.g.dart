// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReqModel _$ProductReqModelFromJson(Map<String, dynamic> json) =>
    ProductReqModel(
      barcode: json['barcode'] as String,
      devicetypeId: json['devicetypeId'] as int,
      name: json['name'] as String,
      productCategoryId: json['productCategoryId'] as int,
      unitId: json['unitId'] as int,
    );

Map<String, dynamic> _$ProductReqModelToJson(ProductReqModel instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'devicetypeId': instance.devicetypeId,
      'name': instance.name,
      'productCategoryId': instance.productCategoryId,
      'unitId': instance.unitId,
    };
