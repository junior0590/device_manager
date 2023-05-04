// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transitions_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitionsForm _$TransitionsFormFromJson(Map<String, dynamic> json) =>
    TransitionsForm(
      data: json['data'] == null
          ? null
          : TransitionsData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$TransitionsFormToJson(TransitionsForm instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

TransitionsData _$TransitionsDataFromJson(Map<String, dynamic> json) =>
    TransitionsData(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => TransitionsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => TransitionsSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => TransitionsMessages.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: json['attachments'] as bool?,
    );

Map<String, dynamic> _$TransitionsDataToJson(TransitionsData instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'sections': instance.sections,
      'messages': instance.messages,
      'attachments': instance.attachments,
    };

TransitionsFields _$TransitionsFieldsFromJson(Map<String, dynamic> json) =>
    TransitionsFields(
      id: json['id'] as String?,
      label: json['label'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      order: json['order'] as int?,
      section: json['section'] as String?,
      minlength: json['minlength'] as int?,
      maxlength: json['maxlength'] as int?,
      readonly: json['readonly'] as bool?,
      hidden: json['hidden'] as bool?,
      required: json['required'] as bool?,
      decimal_places: json['decimal_places'] as int?,
      digits_allowed: json['digits_allowed'] as int?,
      value_list: (json['value_list'] as List<dynamic>?)
          ?.map((e) => TransitionValueList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransitionsFieldsToJson(TransitionsFields instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'type': instance.type,
      'value': instance.value,
      'order': instance.order,
      'section': instance.section,
      'minlength': instance.minlength,
      'maxlength': instance.maxlength,
      'readonly': instance.readonly,
      'hidden': instance.hidden,
      'required': instance.required,
      'decimal_places': instance.decimal_places,
      'digits_allowed': instance.digits_allowed,
      'value_list': instance.value_list,
    };

TransitionsSection _$TransitionsSectionFromJson(Map<String, dynamic> json) =>
    TransitionsSection(
      hidden: json['hidden'] as bool?,
      label: json['label'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$TransitionsSectionToJson(TransitionsSection instance) =>
    <String, dynamic>{
      'hidden': instance.hidden,
      'label': instance.label,
      'order': instance.order,
    };

TransitionsMessages _$TransitionsMessagesFromJson(Map<String, dynamic> json) =>
    TransitionsMessages(
      message: json['message'] as String?,
      section: json['section'] as String?,
    );

Map<String, dynamic> _$TransitionsMessagesToJson(
        TransitionsMessages instance) =>
    <String, dynamic>{
      'message': instance.message,
      'section': instance.section,
    };

TransitionValueList _$TransitionValueListFromJson(Map<String, dynamic> json) =>
    TransitionValueList(
      actual_value: json['actual_value'] as String?,
      display_value: json['display_value'] as String?,
    );

Map<String, dynamic> _$TransitionValueListToJson(
        TransitionValueList instance) =>
    <String, dynamic>{
      'actual_value': instance.actual_value,
      'display_value': instance.display_value,
    };
