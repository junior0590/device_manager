import 'package:json_annotation/json_annotation.dart';

part 'verify_status_response.g.dart';

@JsonSerializable()
class VerifyStatusResponse {

  bool? status_listener;

  int? status;

  String? signer_id;

  VerifyStatusResponse({ this.status, this.signer_id });

  factory VerifyStatusResponse.fromJson(Map<String, dynamic> json) => _$VerifyStatusResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyStatusResponseToJson(this);

}
