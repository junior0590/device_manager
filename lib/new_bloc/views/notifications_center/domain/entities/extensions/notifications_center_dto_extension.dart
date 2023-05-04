

import 'package:project/new_bloc/core/helpers/globaldata.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/group_notifications.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/notifications_center_info.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/single_notifications.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/group_notifications_dto.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/notifications_center_dto.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/single_notifications_dto.dart';

extension NotificationsCenterInfoExtension on NotificationsCenterInfo {
  NotificationsCenterDto toNotificationsCenterDto() {
    return NotificationsCenterDto().copyWith(
      single_notifications: single_notifications?.toSingleNotificationsDtoList(),
      group_notifications: group_notifications?.toGroupNotificationsDtoList(),
    );
  }
}

extension SingleNotificationsExtension on SingleNotifications {
  SingleNotificationsDto toSingleNotificationsDto() {
    return SingleNotificationsDto().copyWith(
        type: type,
        name: name,
        message: message,
        record_name: record_name,
        timestamp: timestamp,
        record_id: record_id,
        note_id: note_id,
        module_id: module_id,
        notification_id: notification_id,
        module_slug: module_slug
    );
  }
}

extension SingleNotificationsListExtension on List<SingleNotifications>? {
  List<SingleNotificationsDto>? toSingleNotificationsDtoList() {
    if (this != null || this!.isNotEmpty) {
      return this!.map((e) => e.toSingleNotificationsDto()).toList();
    }
    return List.empty();
  }
}

extension GroupNotificationsExtension on GroupNotifications {
  GroupNotificationsDto toGroupNotificationsDto() {
    return GroupNotificationsDto().copyWith(
        type: type,
        name: name,
        message: message,
        record_name: record_name,
        timestamp: timestamp,
        record_id: record_id,
        note_id: note_id,
        module_id: module_id,
        notification_id: notification_id,
        module_slug: module_slug
    );
  }
}

extension GroupNotificationsListExtension on List<GroupNotifications>? {
  List<GroupNotificationsDto>? toGroupNotificationsDtoList() {
    if (this != null || this!.isNotEmpty) {
      return this!.map((e) => e.toGroupNotificationsDto()).toList();
    }
    return List.empty();
  }
}