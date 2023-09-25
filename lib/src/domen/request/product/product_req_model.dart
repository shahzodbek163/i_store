import 'package:json_annotation/json_annotation.dart';

part 'product_req_model.g.dart';

@JsonSerializable()
class ProductReqModel {
  final String barcode;
  final int devicetypeId;
  final String name;
  final int productCategoryId;
  final int unitId;

  ProductReqModel(
      {required this.barcode,
      required this.devicetypeId,
      required this.name,
      required this.productCategoryId,
      required this.unitId});

  factory ProductReqModel.fromJson(Map<String, dynamic> json) =>
      _$ProductReqModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductReqModelToJson(this);
}
