import 'package:json_annotation/json_annotation.dart';

part 'records.g.dart';

@JsonSerializable()
class Records {
  TableConfig? tableConfigs;

  List<Map<String, dynamic>>? data;

  MetaRecords? meta;

  int? status;

  Records({this.data, this.tableConfigs, this.meta, this.status});

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsToJson(this);
}

@JsonSerializable()
class TableConfig {
  List<ColumnObject>? columns;

  List<Filter>? filters;

  TableConfig({this.columns, this.filters});

  factory TableConfig.fromJson(Map<String, dynamic> json) =>
      _$TableConfigFromJson(json);

  Map<String, dynamic> toJson() => _$TableConfigToJson(this);
}

@JsonSerializable()
class ColumnObject {
  String? label;

  String? field;

  String? filter_field_type;

  bool? visible;

  int? order;

  String? type;

  List<String>? filteringOperators;

  List<ValueListRecords>? valueList;

  ColumnObject(
      {this.label,
      this.field,
      this.filter_field_type,
      this.visible,
      this.order,
      this.type,
      this.filteringOperators,
      this.valueList});

  factory ColumnObject.fromJson(Map<String, dynamic> json) =>
      _$ColumnObjectFromJson(json);

  Map<String, dynamic> toJson() => _$ColumnObjectToJson(this);
}

@JsonSerializable()
class ValueListRecords {
  @JsonKey(name: 'actual_value')
  String? actualValue;

  @JsonKey(name: 'display_value')
  String? displayValue;

  String? color;

  bool? check;

  ValueListRecords(
      {this.actualValue, this.displayValue, this.color, this.check});

  factory ValueListRecords.fromJson(Map<String, dynamic> json) =>
      _$ValueListRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$ValueListRecordsToJson(this);

  ValueListRecords clone() => ValueListRecords(
      check: check,
      actualValue: actualValue,
      displayValue: displayValue,
      color: color);
}

@JsonSerializable()
class Filter {
  String? field;

  String? operator;

  String? criteria;

  String? filter_field_type;

  bool? uses_criteria;

  Filter({
    this.field,
    this.uses_criteria,
    this.operator,
    this.criteria,
    this.filter_field_type,
  });

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  Map<String, dynamic> toJson() => _$FilterToJson(this);
}

@JsonSerializable()
class MetaRecords {
  bool? view;

  bool? create;

  bool? edit;

  bool? delete;

  bool? export_data;

  bool? filter_data;

  bool? manage_columns;

  bool? share_record;

  MetaRecords({
    this.view,
    this.create,
    this.edit,
    this.delete,
    this.export_data,
    this.filter_data,
    this.manage_columns,
    this.share_record,
  });

  factory MetaRecords.fromJson(Map<String, dynamic> json) =>
      _$MetaRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$MetaRecordsToJson(this);
}
