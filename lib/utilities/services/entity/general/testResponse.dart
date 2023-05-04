import 'package:json_annotation/json_annotation.dart';

part 'testResponse.g.dart';

@JsonSerializable()
class TestResponse {

  int status;

  Map<String, String>? data;

  TestResponse({required this.status, this.data});

  factory TestResponse.fromJson(Map<String, dynamic> json) => _$TestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TestResponseToJson(this);

}
