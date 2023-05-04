import 'package:json_annotation/json_annotation.dart';

part 'modules_records.g.dart';

@JsonSerializable()
class ModulesRecords {

  Map<String, ModuleDetails>? data;

  int? status;

  ModulesRecords({this.data});

  factory ModulesRecords.fromJson(Map<String, dynamic> json) => _$ModulesRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$ModulesRecordsToJson(this);
}

@JsonSerializable()
class ModuleDetails {
  List<RecordModule>? records;

  String? slug;

  ModuleDetails({
    this.records,
    this.slug,
  });

  factory ModuleDetails.fromJson(Map<String, dynamic> json) => _$ModuleDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleDetailsToJson(this);
}

@JsonSerializable()
class RecordModule {
  int? record_id;

  String? label;

  String? slug;

  String? module_name = '';

  String? record_name;

  String? record_status;

  RecordModule({
    this.record_id,
    this.label,
    this.slug,
    this.module_name,
    this.record_name,
    this.record_status,
  });

  factory RecordModule.fromJson(Map<String, dynamic> json) => _$RecordModuleFromJson(json);

  Map<String, dynamic> toJson() => _$RecordModuleToJson(this);
}
