import 'package:json_annotation/json_annotation.dart';

part 'share_validation_response.g.dart';

@JsonSerializable()
class ShareValidationResponse {

  int status;

  Validation? data;

  ShareValidationResponse({required this.status, this.data});

  factory ShareValidationResponse.fromJson(Map<String, dynamic> json) => _$ShareValidationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShareValidationResponseToJson(this);

}

@JsonSerializable()
class Validation {

  bool? shared;

  Validation({this.shared});

  factory Validation.fromJson(Map<String, dynamic> json) => _$ValidationFromJson(json);
  Map<String, dynamic> toJson() => _$ValidationToJson(this);

}