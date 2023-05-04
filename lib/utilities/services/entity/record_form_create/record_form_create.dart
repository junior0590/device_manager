import 'package:json_annotation/json_annotation.dart';

part 'record_form_create.g.dart';

@JsonSerializable()
class RecordFormCreate {

  int status;

  DataFormCreate? data;

  RecordFormCreate({required this.status, this.data });

  factory RecordFormCreate.fromJson(Map<String, dynamic> json) => _$RecordFormCreateFromJson(json);
  Map<String, dynamic> toJson() => _$RecordFormCreateToJson(this);
}

@JsonSerializable()
class DataFormCreate {

  FormCreate? form;

  List<FormRulesCreate>? form_rules;

  DataFormCreate({ this.form, this.form_rules });

  factory DataFormCreate.fromJson(Map<String, dynamic> json) => _$DataFormCreateFromJson(json);
  Map<String, dynamic> toJson() => _$DataFormCreateToJson(this);

}

@JsonSerializable()
class FormCreate {

  List<FieldFormCreate>? fields;

  List<SectionFormCreate>? sections;

  FormCreate({ this.fields, this.sections });

  factory FormCreate.fromJson(Map<String, dynamic> json) => _$FormCreateFromJson(json);
  Map<String, dynamic> toJson() => _$FormCreateToJson(this);

}

@JsonSerializable()
class FormRulesCreate {

  String? control_field;

  List<ConditionCreate>? conditions;

  FormRulesCreate({ this.control_field, this.conditions});

  factory FormRulesCreate.fromJson(Map<String, dynamic> json) => _$FormRulesCreateFromJson(json);
  Map<String, dynamic> toJson() => _$FormRulesCreateToJson(this);

}

@JsonSerializable()
class ConditionCreate {

  String? operation;
  String? criteria;
  List<ActionsCreate>? actions;

  ConditionCreate({ this.operation, this.criteria, this.actions});

  factory ConditionCreate.fromJson(Map<String, dynamic> json) => _$ConditionCreateFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionCreateToJson(this);

}

@JsonSerializable()
class ActionsCreate {

  String? element;
  String? type;
  String? action;

  ActionsCreate({ this.element, this.type, this.action});

  factory ActionsCreate.fromJson(Map<String, dynamic> json) => _$ActionsCreateFromJson(json);
  Map<String, dynamic> toJson() => _$ActionsCreateToJson(this);

}

@JsonSerializable()
class FieldFormCreate {

  String? label;
  String? type;
  int? order;
  String? id;
  String? value;
  String? section;
  int? minlength;
  int? maxlength;
  bool? readonly;
  bool? hidden;
  bool? required;
  int? decimal_places;
  int? digits_allowed;
  String? lookup_module;
  String? lookup_module_name;
  String? accepted_file_types;
  List<ValueListFormCreate>? value_list;

  FieldFormCreate({ this.label, this.type, this.order, this.value, this.section, this.id, this.minlength, this.maxlength,
    this.readonly, this.hidden, this.required, this.decimal_places, this.digits_allowed, this.value_list, this.lookup_module, this.lookup_module_name,
  this.accepted_file_types});

  factory FieldFormCreate.fromJson(Map<String, dynamic> json) => _$FieldFormCreateFromJson(json);
  Map<String, dynamic> toJson() => _$FieldFormCreateToJson(this);

}

@JsonSerializable()
class SectionFormCreate {

  bool? hidden;
  String? label;
  int? order;
  String? id;

  SectionFormCreate({ this.hidden, this.label, this.order, this.id });

  factory SectionFormCreate.fromJson(Map<String, dynamic> json) => _$SectionFormCreateFromJson(json);
  Map<String, dynamic> toJson() => _$SectionFormCreateToJson(this);

}

@JsonSerializable()
class ValueListFormCreate {

  String? actual_value;
  String? display_value;

  ValueListFormCreate({ this.actual_value, this.display_value});

  factory ValueListFormCreate.fromJson(Map<String, dynamic> json) => _$ValueListFormCreateFromJson(json);
  Map<String, dynamic> toJson() => _$ValueListFormCreateToJson(this);

}

@JsonSerializable()
class ResponseDataCreate {

  int? status;

  DataFormResponse? data;

  String? message;

  List<String>? errorsList;

  ResponseDataCreate({this.status, this.data, this.message, this.errorsList});

  factory ResponseDataCreate.fromJson(Map<String, dynamic> json) => _$ResponseDataCreateFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataCreateToJson(this);

}

@JsonSerializable()
class DataFormResponse {

  int? rec_id;

  DataFormResponse({ this.rec_id});

  factory DataFormResponse.fromJson(Map<String, dynamic> json) => _$DataFormResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DataFormResponseToJson(this);

}
