import 'package:json_annotation/json_annotation.dart';

part 'chat-contacts.g.dart';

@JsonSerializable()
class ChatContactsResponse {

  List<ChatContact>? data;

  int? status;

  ChatContactsResponse({ this.data, this.status });

  factory ChatContactsResponse.fromJson(Map<String, dynamic> json) => _$ChatContactsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChatContactsResponseToJson(this);

}

@JsonSerializable()
class ChatContact {

  int? id;
  String? name;
  String? status;
  bool? selected = false;

  ChatContact({ this.id, this.name, this.status, this.selected });

  factory ChatContact.fromJson(Map<String, dynamic> json) => _$ChatContactFromJson(json);
  Map<String, dynamic> toJson() => _$ChatContactToJson(this);

}
