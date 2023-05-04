import 'package:json_annotation/json_annotation.dart';

part 'proposal_tool_signature_response.g.dart';

@JsonSerializable()
class ProposalToolSignatureResponse {

  Signatures? data;

  @JsonKey(name: "proposal_status")
  String? proposalStatus;

  Map<String, int>? proposal_stage;

  int? status;

  ProposalToolSignatureResponse({ this.data, this.status, this.proposal_stage });

  factory ProposalToolSignatureResponse.fromJson(Map<String, dynamic> json) => _$ProposalToolSignatureResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalToolSignatureResponseToJson(this);

}

@JsonSerializable()
class Signatures {

  @JsonKey(name: "signature_1")
  SignaturesData? signature1;

  @JsonKey(name: "signature_2")
  SignaturesData? signature2;

  Signatures({ this.signature1, this.signature2 });

  factory Signatures.fromJson(Map<String, dynamic> json) => _$SignaturesFromJson(json);
  Map<String, dynamic> toJson() => _$SignaturesToJson(this);

}

@JsonSerializable()
class SignaturesData {

  @JsonKey(name: "signature_image")
  String? signatureImage;

  @JsonKey(name: "customer_photo")
  String? customerPhoto;

  SignaturesData({ this.signatureImage, this.customerPhoto });

  factory SignaturesData.fromJson(Map<String, dynamic> json) => _$SignaturesDataFromJson(json);
  Map<String, dynamic> toJson() => _$SignaturesDataToJson(this);

}
