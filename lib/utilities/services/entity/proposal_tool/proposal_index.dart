import 'package:json_annotation/json_annotation.dart';

part 'proposal_index.g.dart';

@JsonSerializable()
class ProposalIndex {

  List<Proposal>? data;

  int? status;

  ProposalIndex({ this.data,this.status });

  factory ProposalIndex.fromJson(Map<String, dynamic> json) => _$ProposalIndexFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalIndexToJson(this);

}

@JsonSerializable()
class Proposal {

  @JsonKey(name: "rec_id")
  int? recId;

  @JsonKey(name: "deal_id")
  int? dealId;

  @JsonKey(name: "owner_id")
  int? ownerId;

  @JsonKey(name: "owner_name")
  String? ownerName;

  @JsonKey(name: "full_name")
  String? fullName;

  @JsonKey(name: "profit_margin")
  double? profitMargin;

  double? kw;

  double? w;

  @JsonKey(name: "proposal_status")
  String? proposalStatus;

  int? converted_to_proposal;

  int? proposal_signed;

  int? converted_to_contract;

  int? contract_signed;

  int? contract_complete;

  int? isMaster;

  int? isAdmin;

  int? proposal_approval;

  int? proposal_approved;

  int? approval_requested;

  String? pandadoc_id;

  String? agreement_signer_email;

  bool? can_be_deleted;

  Proposal({ this.recId, this.dealId, this.ownerId, this.ownerName, this.fullName, this.profitMargin, this.kw, this.w, this.converted_to_proposal,
  this.proposal_signed, this.converted_to_contract, this.contract_signed, this.contract_complete, this.proposalStatus, this.isMaster, this.isAdmin,
  this.proposal_approval, this.proposal_approved, this.approval_requested, this.pandadoc_id, this.agreement_signer_email, this.can_be_deleted});

  factory Proposal.fromJson(Map<String, dynamic> json) => _$ProposalFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalToJson(this);

}
