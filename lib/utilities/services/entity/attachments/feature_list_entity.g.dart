// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeatureListEntity _$FeatureListEntityFromJson(Map<String, dynamic> json) =>
    FeatureListEntity(
      status: json['status'] as int?,
      features: json['features'] == null
          ? null
          : FeatureAttachments.fromJson(
              json['features'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureListEntityToJson(FeatureListEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'features': instance.features,
    };

FeatureAttachments _$FeatureAttachmentsFromJson(Map<String, dynamic> json) =>
    FeatureAttachments(
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) =>
              AttachmentFeatureFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeatureAttachmentsToJson(FeatureAttachments instance) =>
    <String, dynamic>{
      'attachments': instance.attachments,
    };

AttachmentFeatureFields _$AttachmentFeatureFieldsFromJson(
        Map<String, dynamic> json) =>
    AttachmentFeatureFields(
      label_plural: json['label_plural'] as String?,
      label: json['label'] as String?,
      api_name: json['api_name'] as String?,
    );

Map<String, dynamic> _$AttachmentFeatureFieldsToJson(
        AttachmentFeatureFields instance) =>
    <String, dynamic>{
      'label_plural': instance.label_plural,
      'label': instance.label,
      'api_name': instance.api_name,
    };
