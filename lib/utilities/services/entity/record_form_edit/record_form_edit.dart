import 'package:json_annotation/json_annotation.dart';

part 'record_form_edit.g.dart';

@JsonSerializable()
class RecordFormEdit {

  int status;

  DataFormEdit? data;

  MetaRecordEdit? meta;

  RecordFormEdit({required this.status, this.data, this.meta });

  factory RecordFormEdit.fromJson(Map<String, dynamic> json) => _$RecordFormEditFromJson(json);
  Map<String, dynamic> toJson() => _$RecordFormEditToJson(this);
}

@JsonSerializable()
class DataFormEdit {

  FormEdit? form;

  List<FormRules>? form_rules;

  List<DesignsRecordEdit>? designs;

  DataFormEdit({ this.form, this.form_rules, this.designs });

  factory DataFormEdit.fromJson(Map<String, dynamic> json) => _$DataFormEditFromJson(json);
  Map<String, dynamic> toJson() => _$DataFormEditToJson(this);

}

@JsonSerializable()
class FormEdit {

  List<FieldFormEdit>? fields;

  List<SectionFormEdit>? sections;

  FormEdit({ this.fields, this.sections });

  factory FormEdit.fromJson(Map<String, dynamic> json) => _$FormEditFromJson(json);
  Map<String, dynamic> toJson() => _$FormEditToJson(this);

}

@JsonSerializable()
class FormRules {

  String? control_field;

  List<Condition>? conditions;

  FormRules({ this.control_field, this.conditions});

  factory FormRules.fromJson(Map<String, dynamic> json) => _$FormRulesFromJson(json);
  Map<String, dynamic> toJson() => _$FormRulesToJson(this);

}

@JsonSerializable()
class Condition {

  String? operation;
  String? criteria;
  List<Actions>? actions;

  Condition({ this.operation, this.criteria, this.actions});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);

}

@JsonSerializable()
class Actions {

  String? element;
  String? type;
  String? action;

  Actions({ this.element, this.type, this.action});

  factory Actions.fromJson(Map<String, dynamic> json) => _$ActionsFromJson(json);
  Map<String, dynamic> toJson() => _$ActionsToJson(this);

}

@JsonSerializable()
class FieldFormEdit {

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
  List<ValueListFormEdit>? value_list;
  bool? isRemoved = false;
  int? required_for_design;
  String? lookup_module;
  String? lookup_module_name;
  String? accepted_file_types;

  FieldFormEdit({ this.label, this.type, this.order, this.value, this.section, this.id, this.minlength, this.maxlength,
  this.readonly, this.hidden, this.required, this.decimal_places, this.digits_allowed, this.value_list, this.isRemoved, this.required_for_design,
  this.lookup_module, this.lookup_module_name, this.accepted_file_types});

  factory FieldFormEdit.fromJson(Map<String, dynamic> json) => _$FieldFormEditFromJson(json);
  Map<String, dynamic> toJson() => _$FieldFormEditToJson(this);

}

@JsonSerializable()
class SectionFormEdit {

  bool? hidden;
  String? label;
  int? order;
  String? id;

  SectionFormEdit({ this.hidden, this.label, this.order, this.id });

  factory SectionFormEdit.fromJson(Map<String, dynamic> json) => _$SectionFormEditFromJson(json);
  Map<String, dynamic> toJson() => _$SectionFormEditToJson(this);

}

@JsonSerializable()
class ValueListFormEdit {

  String? actual_value;
  String? display_value;

  ValueListFormEdit({ this.actual_value, this.display_value});

  factory ValueListFormEdit.fromJson(Map<String, dynamic> json) => _$ValueListFormEditFromJson(json);
  Map<String, dynamic> toJson() => _$ValueListFormEditToJson(this);

}

@JsonSerializable()
class ResponseDataEdit {

  int? status;

  String? message;

  List<String>? errorsList;

  ResponseDataEdit({this.status, this.message, this.errorsList});

  factory ResponseDataEdit.fromJson(Map<String, dynamic> json) => _$ResponseDataEditFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataEditToJson(this);

}

@JsonSerializable()
class DesignsRecordEdit {

  @JsonKey(name: "design_id")
  int? design_id;

  @JsonKey(name: "annual_usage")
  String? annual_usage;

  @JsonKey(name: "panel_count")
  String? panel_count;

  @JsonKey(name: "solar_panels")
  String? solar_panels;

  DesignsRecordEdit({this.design_id, this.annual_usage, this.panel_count, this.solar_panels});

  factory DesignsRecordEdit.fromJson(Map<String, dynamic> json) => _$DesignsRecordEditFromJson(json);
  Map<String, dynamic> toJson() => _$DesignsRecordEditToJson(this);

}

@JsonSerializable()
class DesignProposalsEdit {

  @JsonKey(name: "rec_id")
  int? rec_id;

  @JsonKey(name: "design_id")
  int? design_id;

  @JsonKey(name: "proposal_status")
  String? proposal_status;

  @JsonKey(name: "system_size")
  int? system_size;

  @JsonKey(name: "system_offset")
  String? system_offset;

  @JsonKey(name: "solar_panels")
  String? solar_panels;

  @JsonKey(name: "amount_of_panels")
  int? amount_of_panels;

  @JsonKey(name: "inverter_type")
  String? inverter_type;

  @JsonKey(name: "choose_financing")
  String? choose_financing;

  DesignProposalsEdit({ this.rec_id, this.design_id, this.proposal_status, this.system_size, this.system_offset, this.solar_panels,
    this.amount_of_panels, this.inverter_type, this.choose_financing});

  factory DesignProposalsEdit.fromJson(Map<String, dynamic> json) => _$DesignProposalsEditFromJson(json);
  Map<String, dynamic> toJson() => _$DesignProposalsEditToJson(this);
}

@JsonSerializable()
class MetaRecordEdit {

  bool? name_design;
  String? meeting_status;
  String? activity_type;

  MetaRecordEdit({ this.name_design, this.meeting_status, this.activity_type});

  factory MetaRecordEdit.fromJson(Map<String, dynamic> json) => _$MetaRecordEditFromJson(json);
  Map<String, dynamic> toJson() => _$MetaRecordEditToJson(this);

}
