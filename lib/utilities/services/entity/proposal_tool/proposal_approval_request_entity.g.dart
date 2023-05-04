// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_approval_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalApprovalRequestEntity _$ProposalApprovalRequestEntityFromJson(
        Map<String, dynamic> json) =>
    ProposalApprovalRequestEntity(
      data: json['data'] == null
          ? null
          : DataProposalRequest.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProposalApprovalRequestEntityToJson(
        ProposalApprovalRequestEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DataProposalRequest _$DataProposalRequestFromJson(Map<String, dynamic> json) =>
    DataProposalRequest(
      approval_request_notes: json['approval_request_notes'] as String?,
      approval_requested: json['approval_requested'] as int?,
      proposal_status: json['proposal_status'] as String?,
    );

Map<String, dynamic> _$DataProposalRequestToJson(
        DataProposalRequest instance) =>
    <String, dynamic>{
      'approval_request_notes': instance.approval_request_notes,
      'approval_requested': instance.approval_requested,
      'proposal_status': instance.proposal_status,
    };
