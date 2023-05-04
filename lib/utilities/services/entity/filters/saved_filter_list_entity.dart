import 'package:json_annotation/json_annotation.dart';

part 'saved_filter_list_entity.g.dart';

@JsonSerializable()
class SavedFilterListEntity {
  int? status;
  List<SavedFilters>? filters;
  SavedFilterListEntity({this.status, this.filters});

  factory SavedFilterListEntity.fromJson(Map<String, dynamic> json) =>
      _$SavedFilterListEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SavedFilterListEntityToJson(this);
}

@JsonSerializable()
class SavedFilters {
  int? rec_id;
  String? owner_id;
  String? label;
  String? module_id;
  String? current;
  String? status;
  String? created_by;
  String? modified_by;
  String? created_at;
  String? updated_at;
  List<FilterDetails>? filter_details;

  SavedFilters({
    this.rec_id,
    this.owner_id,
    this.label,
    this.module_id,
    this.current,
    this.status,
    this.created_by,
    this.modified_by,
    this.created_at,
    this.updated_at,
  });

  factory SavedFilters.fromJson(Map<String, dynamic> json) =>
      _$SavedFiltersFromJson(json);
  Map<String, dynamic> toJson() => _$SavedFiltersToJson(this);
}

@JsonSerializable()
class FilterDetails {
  int? rec_id;
  int? filter_id;
  int? user_id;
  int? module_id;
  String? form_id;
  String? filter_group_id;
  String? filter_label;
  String? field;
  String? operator;
  String? criteria;
  String? type;
  String? system_type;
  String? current;
  String? status;
  String? created_at;
  String? updated_at;

  FilterDetails({
    this.rec_id,
    this.filter_id,
    this.user_id,
    this.module_id,
    this.form_id,
    this.filter_group_id,
    this.filter_label,
    this.field,
    this.operator,
    this.criteria,
    this.type,
    this.system_type,
    this.current,
    this.status,
    this.created_at,
    this.updated_at,
  });

  factory FilterDetails.fromJson(Map<String, dynamic> json) =>
      _$FilterDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$FilterDetailsToJson(this);
}
