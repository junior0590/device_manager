
class MessageModel {
  MessageModel({
    this.content,
    this.type,
  });

  final String? content;
  final String? type;

}

class TextMessageModel extends MessageModel {

  TextMessageModel({ super.content, super.type });

  factory TextMessageModel.fromJson(Map<String, dynamic> json) => TextMessageModel(
    content: json["content"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "content": super.content,
    "type": super.type,
  };

}

class RecordMessageModel extends MessageModel {

  RecordMessageModel({ super.content, super.type, this.recordId, this.recordModule });

  final String? recordId;
  final String? recordModule;

  factory RecordMessageModel.fromJson(Map<String, dynamic> json) => RecordMessageModel(
    content: json["content"],
    type: json["type"],
    recordId: json["recordId"],
    recordModule: json["recordModule"],
  );

  Map<String, dynamic> toJson() => {
    "content": super.content,
    "type": super.type,
    "recordId": recordId,
    "recordModule": recordModule,
  };

}
