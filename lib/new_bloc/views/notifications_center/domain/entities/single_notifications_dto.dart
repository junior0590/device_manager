import 'package:equatable/equatable.dart';

class SingleNotificationsDto extends Equatable {
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

  SingleNotificationsDto({
    this.type, this.name, this.message, this.record_name, this.timestamp, this.record_id, this.note_id, this.module_id, this.notification_id, this.module_slug});

  SingleNotificationsDto copyWith({
    String? type,
    String? name,
    String? message,
    String? record_name,
    String? timestamp,
    int? record_id,
    int? note_id,
    int? module_id,
    int? notification_id,
    String? module_slug,
  }) =>
      SingleNotificationsDto(
        type: type ?? this.type,
        name: name ?? this.name,
        message: message ?? this.message,
        record_name: record_name ?? this.record_name,
        timestamp: timestamp ?? this.timestamp,
        record_id: record_id ?? this.record_id,
        note_id: note_id ?? this.note_id,
        module_id: module_id ?? this.module_id,
        notification_id: notification_id ?? this.notification_id,
        module_slug: module_slug ?? this.module_slug,
      );

  @override
  List<Object?> get props => [
    type,
    name,
    message,
    record_name,
    timestamp,
    record_id,
    note_id,
    module_id,
    notification_id,
    module_slug
  ];
}
