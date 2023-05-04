// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_tool_signature_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalToolSignatureResponse _$ProposalToolSignatureResponseFromJson(
        Map<String, dynamic> json) =>
    ProposalToolSignatureResponse(
      data: json['data'] == null
          ? null
          : Signatures.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int?,
      proposal_stage: (json['proposal_stage'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    )..proposalStatus = json['proposal_status'] as String?;

Map<String, dynamic> _$ProposalToolSignatureResponseToJson(
        ProposalToolSignatureResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'proposal_status': instance.proposalStatus,
      'proposal_stage': instance.proposal_stage,
      'status': instance.status,
    };

Signatures _$SignaturesFromJson(Map<String, dynamic> json) => Signatures(
      signature1: json['signature_1'] == null
          ? null
          : SignaturesData.fromJson(
              json['signature_1'] as Map<String, dynamic>),
      signature2: json['signature_2'] == null
          ? null
          : SignaturesData.fromJson(
              json['signature_2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignaturesToJson(Signatures instance) =>
    <String, dynamic>{
      'signature_1': instance.signature1,
      'signature_2': instance.signature2,
    };

SignaturesData _$SignaturesDataFromJson(Map<String, dynamic> json) =>
    SignaturesData(
      signatureImage: json['signature_image'] as String?,
      customerPhoto: json['customer_photo'] as String?,
    );

Map<String, dynamic> _$SignaturesDataToJson(SignaturesData instance) =>
    <String, dynamic>{
      'signature_image': instance.signatureImage,
      'customer_photo': instance.customerPhoto,
    };
