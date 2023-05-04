import 'package:json_annotation/json_annotation.dart';

part 'convert_to_contract.g.dart';

@JsonSerializable()
class ContractResponse {

  int? contract_id;

  String? errorMessage;

  int? statusCode;

  ContractResponse({ this.contract_id });

  factory ContractResponse.fromJson(Map<String, dynamic> json) => _$ContractResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ContractResponseToJson(this);

}
