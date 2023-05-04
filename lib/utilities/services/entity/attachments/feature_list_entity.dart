import 'package:json_annotation/json_annotation.dart';

part 'feature_list_entity.g.dart';

@JsonSerializable()
class FeatureListEntity {
  int? status;
  FeatureAttachments? features;
  FeatureListEntity({this.status, this.features});

  factory FeatureListEntity.fromJson(Map<String, dynamic> json) =>
      _$FeatureListEntityFromJson(json);
  Map<String, dynamic> toJson() => _$FeatureListEntityToJson(this);
}

@JsonSerializable()
class FeatureAttachments {
  List<AttachmentFeatureFields>? attachments;

  FeatureAttachments({this.attachments});

  factory FeatureAttachments.fromJson(Map<String, dynamic> json) =>
      _$FeatureAttachmentsFromJson(json);
  Map<String, dynamic> toJson() => _$FeatureAttachmentsToJson(this);
}

@JsonSerializable()
class AttachmentFeatureFields {
  String? label_plural;
  String? label;
  String? api_name;

  AttachmentFeatureFields({this.label_plural, this.label, this.api_name});

  factory AttachmentFeatureFields.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFeatureFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentFeatureFieldsToJson(this);
}
