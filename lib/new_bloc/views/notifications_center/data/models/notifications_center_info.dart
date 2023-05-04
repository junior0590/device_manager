import 'dart:developer';

import 'package:project/new_bloc/views/notifications_center/data/models/group_notifications.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/single_notifications.dart';

class NotificationsCenterInfo {
  List<SingleNotifications>? single_notifications = [];
  List<GroupNotifications>? group_notifications = [];

  NotificationsCenterInfo({
    this.single_notifications,
    this.group_notifications
  });

  factory NotificationsCenterInfo.fromJson(Map<String, dynamic> json) {
    return NotificationsCenterInfo(
      single_notifications: json["single_notifications"] == null
          ? []
          : List<SingleNotifications>.from(
          json["single_notifications"]!.map((x) => SingleNotifications.fromJson(x))),
      group_notifications: json["group_notifications"] == null
          ? []
          : List<GroupNotifications>.from(
          json["group_notifications"]!.map((x) => GroupNotifications.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "single_notifications": single_notifications == null
        ? []
        : List<SingleNotifications>.from(single_notifications!.map((x) => x.toJson())),
    "group_notifications": group_notifications == null
        ? []
        : List<GroupNotifications>.from(group_notifications!.map((x) => x.toJson())),

  };
}
