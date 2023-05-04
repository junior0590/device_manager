import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable()
class SingleNote {
  @JsonKey(name: "content")
  String? content;

  SingleNote({this.content});

  factory SingleNote.fromJson(Map<String, dynamic> json) =>
      _$SingleNoteFromJson(json);
  Map<String, dynamic> toJson() => _$SingleNoteToJson(this);
}
