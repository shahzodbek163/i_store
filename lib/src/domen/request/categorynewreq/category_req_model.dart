import 'package:json_annotation/json_annotation.dart';
part 'category_req_model.g.dart';

@JsonSerializable()
class CategoryNewReqModel {
  final String name;
  final List<int> productCategoryTypes;

  CategoryNewReqModel({required this.name, required this.productCategoryTypes});

  factory CategoryNewReqModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryNewReqModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryNewReqModelToJson(this);
}
