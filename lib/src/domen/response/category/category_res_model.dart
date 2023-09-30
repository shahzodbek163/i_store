import 'package:i_store/src/domen/response/deviceGetAll/device_get_all_res.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_res_model.g.dart';

@JsonSerializable()
class CategroyResModel {
  final String name;
  final String date;
  final int id;
  final List<DeviceGetAllRes> productCategoryTypes;
  CategroyResModel(this.productCategoryTypes,
      {required this.name, required this.date, required this.id});

  factory CategroyResModel.fromJson(Map<String, dynamic> json) =>
      _$CategroyResModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategroyResModelToJson(this);
}
