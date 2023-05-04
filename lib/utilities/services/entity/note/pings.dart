import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pings.g.dart';

@JsonSerializable()
class Pings with ChangeNotifier {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "type")
  String type;

  Pings({
    required this.id,
    required this.name,
    required this.type,
  });

  @override
  bool operator ==(other) {
    return (other is Pings) &&
        other.id == id &&
        other.name == name &&
        other.type == type;
  }

  // @override
  // int get hashCode => Object.hash(user_id, comment_id);

  factory Pings.fromJson(Map<String, dynamic> json) => _$PingsFromJson(json);
  Map<String, dynamic> toJson() => _$PingsToJson(this);
}
