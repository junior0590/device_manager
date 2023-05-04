import 'package:json_annotation/json_annotation.dart';

part 'proposal_tool_signature.g.dart';

@JsonSerializable()
class ProposalToolSignature {

  @JsonKey(name: "signature_field_id")
  String? signatureFieldId;

  @JsonKey(name: "customer_photo")
  String? customerPhoto;

  @JsonKey(name: "signature_image")
  String? signatureImage;

  bool? isComplete;

  ProposalToolSignature({ this.signatureFieldId, this.customerPhoto, this.signatureImage, this.isComplete });

  factory ProposalToolSignature.fromJson(Map<String, dynamic> json) => _$ProposalToolSignatureFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalToolSignatureToJson(this);

}
