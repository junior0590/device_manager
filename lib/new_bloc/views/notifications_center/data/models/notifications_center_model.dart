import 'dart:developer';

import 'package:project/new_bloc/views/notifications_center/data/models/notifications_center_info.dart';

class NotificationsCenterModel {
  NotificationsCenterInfo? notifications_center;

  NotificationsCenterModel({this.notifications_center});

  NotificationsCenterModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      notifications_center = NotificationsCenterInfo.fromJson(json['data']);
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (notifications_center != null) {
      map['data'] =
          notifications_center?.toJson();
    }
    return map;
  }
}
