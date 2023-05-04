// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_form_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordFormCreate _$RecordFormCreateFromJson(Map<String, dynamic> json) =>
    RecordFormCreate(
      status: json['status'] as int,
      data: json['data'] == null
          ? null
          : DataFormCreate.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecordFormCreateToJson(RecordFormCreate instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DataFormCreate _$DataFormCreateFromJson(Map<String, dynamic> json) =>
    DataFormCreate(
      form: json['form'] == null
          ? null
          : FormCreate.fromJson(json['form'] as Map<String, dynamic>),
      form_rules: (json['form_rules'] as List<dynamic>?)
          ?.map((e) => FormRulesCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataFormCreateToJson(DataFormCreate instance) =>
    <String, dynamic>{
      'form': instance.form,
      'form_rules': instance.form_rules,
    };

FormCreate _$FormCreateFromJson(Map<String, dynamic> json) => FormCreate(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldFormCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionFormCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormCreateToJson(FormCreate instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'sections': instance.sections,
    };

FormRulesCreate _$FormRulesCreateFromJson(Map<String, dynamic> json) =>
    FormRulesCreate(
      control_field: json['control_field'] as String?,
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => ConditionCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormRulesCreateToJson(FormRulesCreate instance) =>
    <String, dynamic>{
      'control_field': instance.control_field,
      'conditions': instance.conditions,
    };

ConditionCreate _$ConditionCreateFromJson(Map<String, dynamic> json) =>
    ConditionCreate(
      operation: json['operation'] as String?,
      criteria: json['criteria'] as String?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ActionsCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConditionCreateToJson(ConditionCreate instance) =>
    <String, dynamic>{
      'operation': instance.operation,
      'criteria': instance.criteria,
      'actions': instance.actions,
    };

ActionsCreate _$ActionsCreateFromJson(Map<String, dynamic> json) =>
    ActionsCreate(
      element: json['element'] as String?,
      type: json['type'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$ActionsCreateToJson(ActionsCreate instance) =>
    <String, dynamic>{
      'element': instance.element,
      'type': instance.type,
      'action': instance.action,
    };

FieldFormCreate _$FieldFormCreateFromJson(Map<String, dynamic> json) =>
    FieldFormCreate(
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
          ?.map((e) => ValueListFormCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
      lookup_module: json['lookup_module'] as String?,
      lookup_module_name: json['lookup_module_name'] as String?,
      accepted_file_types: json['accepted_file_types'] as String?,
    );

Map<String, dynamic> _$FieldFormCreateToJson(FieldFormCreate instance) =>
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
      'lookup_module': instance.lookup_module,
      'lookup_module_name': instance.lookup_module_name,
      'accepted_file_types': instance.accepted_file_types,
      'value_list': instance.value_list,
    };

SectionFormCreate _$SectionFormCreateFromJson(Map<String, dynamic> json) =>
    SectionFormCreate(
      hidden: json['hidden'] as bool?,
      label: json['label'] as String?,
      order: json['order'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SectionFormCreateToJson(SectionFormCreate instance) =>
    <String, dynamic>{
      'hidden': instance.hidden,
      'label': instance.label,
      'order': instance.order,
      'id': instance.id,
    };

ValueListFormCreate _$ValueListFormCreateFromJson(Map<String, dynamic> json) =>
    ValueListFormCreate(
      actual_value: json['actual_value'] as String?,
      display_value: json['display_value'] as String?,
    );

Map<String, dynamic> _$ValueListFormCreateToJson(
        ValueListFormCreate instance) =>
    <String, dynamic>{
      'actual_value': instance.actual_value,
      'display_value': instance.display_value,
    };

ResponseDataCreate _$ResponseDataCreateFromJson(Map<String, dynamic> json) =>
    ResponseDataCreate(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : DataFormResponse.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errorsList: (json['errorsList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ResponseDataCreateToJson(ResponseDataCreate instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'errorsList': instance.errorsList,
    };

DataFormResponse _$DataFormResponseFromJson(Map<String, dynamic> json) =>
    DataFormResponse(
      rec_id: json['rec_id'] as int?,
    );

Map<String, dynamic> _$DataFormResponseToJson(DataFormResponse instance) =>
    <String, dynamic>{
      'rec_id': instance.rec_id,
    };
