import 'package:json_annotation/json_annotation.dart';

part 'pseg_form_list_entity.g.dart';

@JsonSerializable()
class PsegFormListEntity {
  int? status;
  List<PsegFormListFields>? data;

  PsegFormListEntity({this.status, this.data});

  factory PsegFormListEntity.fromJson(Map<String, dynamic> json) => _$PsegFormListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PsegFormListEntityToJson(this);
}

@JsonSerializable()
class PsegFormListFields {
  int? rec_id;
  int? owner_id;
  String? form_data;
  String? status;
  DateTime? created_at;
  DateTime? updated_at;
  String? related_record_name;
  String? owner_name;


  PsegFormListFields(
      {this.rec_id,
        this.owner_id,
        this.form_data,
        this.status,
        this.created_at,
        this.updated_at,
        this.related_record_name,
        this.owner_name
      });

  factory PsegFormListFields.fromJson(Map<String, dynamic> json) => _$PsegFormListFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$PsegFormListFieldsToJson(this);
}

