// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProposalIndex _$ProposalIndexFromJson(Map<String, dynamic> json) =>
    ProposalIndex(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Proposal.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ProposalIndexToJson(ProposalIndex instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

Proposal _$ProposalFromJson(Map<String, dynamic> json) => Proposal(
      recId: json['rec_id'] as int?,
      dealId: json['deal_id'] as int?,
      ownerId: json['owner_id'] as int?,
      ownerName: json['owner_name'] as String?,
      fullName: json['full_name'] as String?,
      profitMargin: (json['profit_margin'] as num?)?.toDouble(),
      kw: (json['kw'] as num?)?.toDouble(),
      w: (json['w'] as num?)?.toDouble(),
      converted_to_proposal: json['converted_to_proposal'] as int?,
      proposal_signed: json['proposal_signed'] as int?,
      converted_to_contract: json['converted_to_contract'] as int?,
      contract_signed: json['contract_signed'] as int?,
      contract_complete: json['contract_complete'] as int?,
      proposalStatus: json['proposal_status'] as String?,
      isMaster: json['isMaster'] as int?,
      isAdmin: json['isAdmin'] as int?,
      proposal_approval: json['proposal_approval'] as int?,
      proposal_approved: json['proposal_approved'] as int?,
      approval_requested: json['approval_requested'] as int?,
      pandadoc_id: json['pandadoc_id'] as String?,
      agreement_signer_email: json['agreement_signer_email'] as String?,
      can_be_deleted: json['can_be_deleted'] as bool?,
    );

Map<String, dynamic> _$ProposalToJson(Proposal instance) => <String, dynamic>{
      'rec_id': instance.recId,
      'deal_id': instance.dealId,
      'owner_id': instance.ownerId,
      'owner_name': instance.ownerName,
      'full_name': instance.fullName,
      'profit_margin': instance.profitMargin,
      'kw': instance.kw,
      'w': instance.w,
      'proposal_status': instance.proposalStatus,
      'converted_to_proposal': instance.converted_to_proposal,
      'proposal_signed': instance.proposal_signed,
      'converted_to_contract': instance.converted_to_contract,
      'contract_signed': instance.contract_signed,
      'contract_complete': instance.contract_complete,
      'isMaster': instance.isMaster,
      'isAdmin': instance.isAdmin,
      'proposal_approval': instance.proposal_approval,
      'proposal_approved': instance.proposal_approved,
      'approval_requested': instance.approval_requested,
      'pandadoc_id': instance.pandadoc_id,
      'agreement_signer_email': instance.agreement_signer_email,
      'can_be_deleted': instance.can_be_deleted,
    };
