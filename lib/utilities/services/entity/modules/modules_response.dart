import 'package:json_annotation/json_annotation.dart';

part 'modules_response.g.dart';

@JsonSerializable()
class ModuleResponse {
  @JsonKey(name: 'data')
  List<dynamic>? data;

  ModuleResponse({this.data});

  factory ModuleResponse.fromJson(Map<String, dynamic> json) => _$ModuleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleResponseToJson(this);
}

@JsonSerializable()
class Module {
  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'name_singular')
  final String? nameSingular;

  @JsonKey(name: 'label')
  final String? label;

  @JsonKey(name: 'label_singular')
  final String? labelSingular;

  @JsonKey(name: 'table_name')
  final String? tableName;

  Module({
    this.name,
    this.nameSingular,
    this.label,
    this.labelSingular,
    this.tableName,
  });

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleToJson(this);
}
