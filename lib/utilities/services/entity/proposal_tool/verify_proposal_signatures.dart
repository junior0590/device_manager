import 'package:json_annotation/json_annotation.dart';

part 'verify_proposal_signatures.g.dart';

@JsonSerializable()
class VerifyProposalSignatureResponse {

  @JsonKey(name: "required_signatures")
  int? requiredSignatures;

  @JsonKey(name: "captured_signatures")
  int? capturedSignatures;

  int? status;

  VerifyProposalSignatureResponse({ this.requiredSignatures, this.capturedSignatures, this.status });

  factory VerifyProposalSignatureResponse.fromJson(Map<String, dynamic> json) => _$VerifyProposalSignatureResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyProposalSignatureResponseToJson(this);

}
