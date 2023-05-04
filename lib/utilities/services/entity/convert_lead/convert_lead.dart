import 'package:json_annotation/json_annotation.dart';

part 'convert_lead.g.dart';

@JsonSerializable()
class ConvertLeadResponse {

  int? status;

  DataConvert? data;

  ConvertLeadResponse({this.status, this.data });

  factory ConvertLeadResponse.fromJson(Map<String, dynamic> json) => _$ConvertLeadResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ConvertLeadResponseToJson(this);

}

@JsonSerializable()
class DataConvert {

  @JsonKey(name: 'deal_id')
  String? dealId;

  DataConvert({ this.dealId });

  factory DataConvert.fromJson(Map<String, dynamic> json) => _$DataConvertFromJson(json);
  Map<String, dynamic> toJson() => _$DataConvertToJson(this);

}