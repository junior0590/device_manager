// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_proposal_signatures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyProposalSignatureResponse _$VerifyProposalSignatureResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyProposalSignatureResponse(
      requiredSignatures: json['required_signatures'] as int?,
      capturedSignatures: json['captured_signatures'] as int?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$VerifyProposalSignatureResponseToJson(
        VerifyProposalSignatureResponse instance) =>
    <String, dynamic>{
      'required_signatures': instance.requiredSignatures,
      'captured_signatures': instance.capturedSignatures,
      'status': instance.status,
    };
