import 'package:json_annotation/json_annotation.dart';

part 'record_create.g.dart';

@JsonSerializable()
class RecordCreate {

  @JsonKey(name: "status")
  int status;

  @JsonKey(name: "data")
  FieldDataCreate? data;

  RecordCreate({required this.status, this.data});

  factory RecordCreate.fromJson(Map<String, dynamic> json) => _$RecordCreateFromJson(json);
  Map<String, dynamic> toJson() => _$RecordCreateToJson(this);

}

@JsonSerializable()
class FieldDataCreate {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "value")
  String? value;

  FieldDataCreate({this.id, this.value});

  factory FieldDataCreate.fromJson(Map<String, dynamic> json) => _$FieldDataCreateFromJson(json);
  Map<String, dynamic> toJson() => _$FieldDataCreateToJson(this);

}



