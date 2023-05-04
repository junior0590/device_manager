// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_tool_signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalToolSignature _$ProposalToolSignatureFromJson(
        Map<String, dynamic> json) =>
    ProposalToolSignature(
      signatureFieldId: json['signature_field_id'] as String?,
      customerPhoto: json['customer_photo'] as String?,
      signatureImage: json['signature_image'] as String?,
      isComplete: json['isComplete'] as bool?,
    );

Map<String, dynamic> _$ProposalToolSignatureToJson(
        ProposalToolSignature instance) =>
    <String, dynamic>{
      'signature_field_id': instance.signatureFieldId,
      'customer_photo': instance.customerPhoto,
      'signature_image': instance.signatureImage,
      'isComplete': instance.isComplete,
    };
