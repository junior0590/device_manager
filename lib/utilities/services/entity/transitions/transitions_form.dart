import 'package:json_annotation/json_annotation.dart';

part 'transitions_form.g.dart';

@JsonSerializable()
class TransitionsForm {

  @JsonKey(name: "data")
  TransitionsData? data;

  @JsonKey(name: "status")
  int? status;

  TransitionsForm({ this.data, this.status });

  factory TransitionsForm.fromJson(Map<String, dynamic> json) => _$TransitionsFormFromJson(json);
  Map<String, dynamic> toJson() => _$TransitionsFormToJson(this);

}

@JsonSerializable()
class TransitionsData {

  @JsonKey(name: "fields")
  List<TransitionsFields>? fields;

  @JsonKey(name: "sections")
  List<TransitionsSection>? sections;

  @JsonKey(name: "messages")
  List<TransitionsMessages>? messages;

  @JsonKey(name: "attachments")
  bool? attachments;

  TransitionsData({ this.fields, this.sections, this.messages, this.attachments});

  factory TransitionsData.fromJson(Map<String, dynamic> json) => _$TransitionsDataFromJson(json);
  Map<String, dynamic> toJson() => _$TransitionsDataToJson(this);

}

@JsonSerializable()
class TransitionsFields {

  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "label")
  String? label;

  @JsonKey(name: "type")
  String? type;

  @JsonKey(name: "value")
  String? value;

  @JsonKey(name: "order")
  int? order;

  @JsonKey(name: "section")
  String? section;

  @JsonKey(name: "minlength")
  int? minlength;

  @JsonKey(name: "maxlength")
  int? maxlength;

  @JsonKey(name: "readonly")
  bool? readonly;

  @JsonKey(name: "hidden")
  bool? hidden;

  @JsonKey(name: "required")
  bool? required;

  @JsonKey(name: "decimal_places")
  int? decimal_places;

  @JsonKey(name: "digits_allowed")
  int? digits_allowed;

  @JsonKey(name: "value_list")
  List<TransitionValueList>? value_list;

  TransitionsFields({this.id, this.label, this.type, this.value, this.order, this.section,this.minlength, this.maxlength,
    this.readonly, this.hidden, this.required, this.decimal_places, this.digits_allowed, this.value_list});

  factory TransitionsFields.fromJson(Map<String, dynamic> json) => _$TransitionsFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$TransitionsFieldsToJson(this);

}

@JsonSerializable()
class TransitionsSection {

  @JsonKey(name: "hidden")
  bool? hidden;

  @JsonKey(name: "label")
  String? label;

  @JsonKey(name: "order")
  int? order;

  TransitionsSection({ this.hidden, this.label, this.order });

  factory TransitionsSection.fromJson(Map<String, dynamic> json) => _$TransitionsSectionFromJson(json);
  Map<String, dynamic> toJson() => _$TransitionsSectionToJson(this);

}

@JsonSerializable()
class TransitionsMessages {

  @JsonKey(name: "message")
  String? message;

  @JsonKey(name: "section")
  String? section;

  TransitionsMessages({ this.message, this.section });

  factory TransitionsMessages.fromJson(Map<String, dynamic> json) => _$TransitionsMessagesFromJson(json);
  Map<String, dynamic> toJson() => _$TransitionsMessagesToJson(this);

}

@JsonSerializable()
class TransitionValueList {

  String? actual_value;
  String? display_value;

  TransitionValueList({ this.actual_value, this.display_value});

  factory TransitionValueList.fromJson(Map<String, dynamic> json) => _$TransitionValueListFromJson(json);
  Map<String, dynamic> toJson() => _$TransitionValueListToJson(this);

}
