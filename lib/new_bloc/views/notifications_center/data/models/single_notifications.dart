class SingleNotifications {
  String? type;
  String? name;
  String? message;
  String? record_name;
  String? timestamp;
  int? record_id;
  int? note_id;
  int? module_id;
  int? notification_id;
  String? module_slug;

  SingleNotifications({this.type, this.name, this.message, this.record_name, this.timestamp, this.record_id, this.note_id, this.module_id, this.notification_id, this.module_slug});

  SingleNotifications.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    message = json['message'];
    record_name = json['record_name'];
    timestamp = json['timestamp'];
    record_id = json['record_id'];
    note_id = json['note_id'];
    module_id = json['module_id'];
    notification_id = json['notification_id'];
    module_slug = json['module_slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    data['message'] = this.message;
    data['record_name'] = this.record_name;
    data['timestamp'] = this.timestamp;
    data['record_id'] = this.record_id;
    data['note_id'] = this.note_id;
    data['module_id'] = this.module_id;
    data['notification_id'] = this.notification_id;
    data['module_slug'] = this.module_slug;
    return data;
  }
}