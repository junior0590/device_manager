import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class ErrorMessage {
  String? message;

  Errors? errors;

  int? status;

  ErrorMessage({this.message, this.errors, this.status});

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorMessageToJson(this);
}

@JsonSerializable()
class Errors {
  dynamic field_id;

  List<dynamic>? errorList;

  Errors({this.field_id, this.errorList});

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
