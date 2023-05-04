import 'package:json_annotation/json_annotation.dart';

part 'visible_columns.g.dart';

@JsonSerializable()
class VisibleColumns {

  @JsonKey(name: "column_name")
  String? columnName;

  int? visible;

  int? order;

  VisibleColumns({this.columnName, this.visible, this.order });

  factory VisibleColumns.fromJson(Map<String, dynamic> json) => _$VisibleColumnsFromJson(json);
  Map<String, dynamic> toJson() => _$VisibleColumnsToJson(this);

}
