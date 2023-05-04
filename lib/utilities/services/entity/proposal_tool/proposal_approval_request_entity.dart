import 'package:json_annotation/json_annotation.dart';
part 'proposal_approval_request_entity.g.dart';

@JsonSerializable()
class ProposalApprovalRequestEntity {

  DataProposalRequest? data;

  ProposalApprovalRequestEntity({this.data});

  factory ProposalApprovalRequestEntity.fromJson(Map<String, dynamic> json) => _$ProposalApprovalRequestEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalApprovalRequestEntityToJson(this);

}

@JsonSerializable()
class DataProposalRequest {

  String? approval_request_notes;

  int? approval_requested;

  String? proposal_status;

  DataProposalRequest({ this.approval_request_notes, this.approval_requested, this.proposal_status});

  factory DataProposalRequest.fromJson(Map<String, dynamic> json) => _$DataProposalRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DataProposalRequestToJson(this);

}

