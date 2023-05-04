import 'package:json_annotation/json_annotation.dart';

part 'record_edit.g.dart';

@JsonSerializable()
class RecordEdit {

  @JsonKey(name: "status")
  int status;

  @JsonKey(name: "data")
  FieldData? data;

  RecordEdit({required this.status, this.data});

  factory RecordEdit.fromJson(Map<String, dynamic> json) => _$RecordEditFromJson(json);
  Map<String, dynamic> toJson() => _$RecordEditToJson(this);

}

@JsonSerializable()
class FieldData {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "value")
  String? value;

  FieldData({this.id, this.value});

  factory FieldData.fromJson(Map<String, dynamic> json) => _$FieldDataFromJson(json);
  Map<String, dynamic> toJson() => _$FieldDataToJson(this);

}

