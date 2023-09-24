import 'package:json_annotation/json_annotation.dart';
part 'device_get_all_res.g.dart';

@JsonSerializable()
class DeviceGetAllRes {
  final String name;
  final String date;
  final int id;

  DeviceGetAllRes({required this.name, required this.date, required this.id});
  factory DeviceGetAllRes.fromJson(Map<String, dynamic> json) =>
      _$DeviceGetAllResFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceGetAllResToJson(this);
}
