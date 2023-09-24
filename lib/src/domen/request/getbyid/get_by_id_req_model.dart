import 'package:json_annotation/json_annotation.dart';
part 'get_by_id_req_model.g.dart';

@JsonSerializable()
class GetById {
  final int id;

  GetById({required this.id});
  factory GetById.fromJson(Map<String, dynamic> json) =>
      _$GetByIdFromJson(json);
  Map<String, dynamic> toJson() => _$GetByIdToJson(this);
}
