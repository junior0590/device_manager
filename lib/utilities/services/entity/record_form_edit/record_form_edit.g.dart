// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_form_edit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordFormEdit _$RecordFormEditFromJson(Map<String, dynamic> json) =>
    RecordFormEdit(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : DataFormEdit.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaRecordEdit.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecordFormEditToJson(RecordFormEdit instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

DataFormEdit _$DataFormEditFromJson(Map<String, dynamic> json) => DataFormEdit(
      form: json['form'] == null
          ? null
          : FormEdit.fromJson(json['form'] as Map<String, dynamic>),
      form_rules: (json['form_rules'] as List<dynamic>?)
          ?.map((e) => FormRules.fromJson(e as Map<String, dynamic>))
          .toList(),
      designs: (json['designs'] as List<dynamic>?)
          ?.map((e) => DesignsRecordEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataFormEditToJson(DataFormEdit instance) =>
    <String, dynamic>{
      'form': instance.form,
      'form_rules': instance.form_rules,
      'designs': instance.designs,
    };

FormEdit _$FormEditFromJson(Map<String, dynamic> json) => FormEdit(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldFormEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionFormEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormEditToJson(FormEdit instance) => <String, dynamic>{
      'fields': instance.fields,
      'sections': instance.sections,
    };

FormRules _$FormRulesFromJson(Map<String, dynamic> json) => FormRules(
      control_field: json['control_field'] as String?,
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormRulesToJson(FormRules instance) => <String, dynamic>{
      'control_field': instance.control_field,
      'conditions': instance.conditions,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      operation: json['operation'] as String?,
      criteria: json['criteria'] as String?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => Actions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'operation': instance.operation,
      'criteria': instance.criteria,
      'actions': instance.actions,
    };

Actions _$ActionsFromJson(Map<String, dynamic> json) => Actions(
      element: json['element'] as String?,
      type: json['type'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$ActionsToJson(Actions instance) => <String, dynamic>{
      'element': instance.element,
      'type': instance.type,
      'action': instance.action,
    };

FieldFormEdit _$FieldFormEditFromJson(Map<String, dynamic> json) =>
    FieldFormEdit(
      label: json['label'] as String?,
      type: json['type'] as String?,
      order: json['order'] as int?,
      value: json['value'] as String?,
      section: json['section'] as String?,
      id: json['id'] as String?,
      minlength: json['minlength'] as int?,
      maxlength: json['maxlength'] as int?,
      readonly: json['readonly'] as bool?,
      hidden: json['hidden'] as bool?,
      required: json['required'] as bool?,
      decimal_places: json['decimal_places'] as int?,
      digits_allowed: json['digits_allowed'] as int?,
      value_list: (json['value_list'] as List<dynamic>?)
          ?.map((e) => ValueListFormEdit.fromJson(e as Map<String, dynamic>))
          .toList(),
      isRemoved: json['isRemoved'] as bool?,
      required_for_design: json['required_for_design'] as int?,
      lookup_module: json['lookup_module'] as String?,
      lookup_module_name: json['lookup_module_name'] as String?,
      accepted_file_types: json['accepted_file_types'] as String?,
    );

Map<String, dynamic> _$FieldFormEditToJson(FieldFormEdit instance) =>
    <String, dynamic>{
      'label': instance.label,
      'type': instance.type,
      'order': instance.order,
      'id': instance.id,
      'value': instance.value,
      'section': instance.section,
      'minlength': instance.minlength,
      'maxlength': instance.maxlength,
      'readonly': instance.readonly,
      'hidden': instance.hidden,
      'required': instance.required,
      'decimal_places': instance.decimal_places,
      'digits_allowed': instance.digits_allowed,
      'value_list': instance.value_list,
      'isRemoved': instance.isRemoved,
      'required_for_design': instance.required_for_design,
      'lookup_module': instance.lookup_module,
      'lookup_module_name': instance.lookup_module_name,
      'accepted_file_types': instance.accepted_file_types,
    };

SectionFormEdit _$SectionFormEditFromJson(Map<String, dynamic> json) =>
    SectionFormEdit(
      hidden: json['hidden'] as bool?,
      label: json['label'] as String?,
      order: json['order'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SectionFormEditToJson(SectionFormEdit instance) =>
    <String, dynamic>{
      'hidden': instance.hidden,
      'label': instance.label,
      'order': instance.order,
      'id': instance.id,
    };

ValueListFormEdit _$ValueListFormEditFromJson(Map<String, dynamic> json) =>
    ValueListFormEdit(
      actual_value: json['actual_value'] as String?,
      display_value: json['display_value'] as String?,
    );

Map<String, dynamic> _$ValueListFormEditToJson(ValueListFormEdit instance) =>
    <String, dynamic>{
      'actual_value': instance.actual_value,
      'display_value': instance.display_value,
    };

ResponseDataEdit _$ResponseDataEditFromJson(Map<String, dynamic> json) =>
    ResponseDataEdit(
      status: json['status'] as int?,
      message: json['message'] as String?,
      errorsList: (json['errorsList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ResponseDataEditToJson(ResponseDataEdit instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errorsList': instance.errorsList,
    };

DesignsRecordEdit _$DesignsRecordEditFromJson(Map<String, dynamic> json) =>
    DesignsRecordEdit(
      design_id: json['design_id'] as int?,
      annual_usage: json['annual_usage'] as String?,
      panel_count: json['panel_count'] as String?,
      solar_panels: json['solar_panels'] as String?,
    );

Map<String, dynamic> _$DesignsRecordEditToJson(DesignsRecordEdit instance) =>
    <String, dynamic>{
      'design_id': instance.design_id,
      'annual_usage': instance.annual_usage,
      'panel_count': instance.panel_count,
      'solar_panels': instance.solar_panels,
    };

DesignProposalsEdit _$DesignProposalsEditFromJson(Map<String, dynamic> json) =>
    DesignProposalsEdit(
      rec_id: json['rec_id'] as int?,
      design_id: json['design_id'] as int?,
      proposal_status: json['proposal_status'] as String?,
      system_size: json['system_size'] as int?,
      system_offset: json['system_offset'] as String?,
      solar_panels: json['solar_panels'] as String?,
      amount_of_panels: json['amount_of_panels'] as int?,
      inverter_type: json['inverter_type'] as String?,
      choose_financing: json['choose_financing'] as String?,
    );

Map<String, dynamic> _$DesignProposalsEditToJson(
        DesignProposalsEdit instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
      'design_id': instance.design_id,
      'proposal_status': instance.proposal_status,
      'system_size': instance.system_size,
      'system_offset': instance.system_offset,
      'solar_panels': instance.solar_panels,
      'amount_of_panels': instance.amount_of_panels,
      'inverter_type': instance.inverter_type,
      'choose_financing': instance.choose_financing,
    };

MetaRecordEdit _$MetaRecordEditFromJson(Map<String, dynamic> json) =>
    MetaRecordEdit(
      name_design: json['name_design'] as bool?,
      meeting_status: json['meeting_status'] as String?,
      activity_type: json['activity_type'] as String?,
    );

Map<String, dynamic> _$MetaRecordEditToJson(MetaRecordEdit instance) =>
    <String, dynamic>{
      'name_design': instance.name_design,
      'meeting_status': instance.meeting_status,
      'activity_type': instance.activity_type,
    };
