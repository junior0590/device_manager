import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'like.g.dart';

@JsonSerializable()
class Like with ChangeNotifier {
  @JsonKey(name: "user_id")
  int user_id;
  int comment_id;

  Like({
    required this.user_id,
    required this.comment_id,
  });

  @override
  bool operator ==(other) {
    return (other is Like) &&
        other.user_id == user_id &&
        other.comment_id == comment_id;
  }

  // @override
  // int get hashCode => Object.hash(user_id, comment_id);

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
  Map<String, dynamic> toJson() => _$LikeToJson(this);
}
