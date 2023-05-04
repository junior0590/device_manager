import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/notifications_center_model.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_detail_model.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_model.dart';

class NotificationsCenterServiceLocal {
  String basePath = 'lib/new_bloc/core/data/local/json_responses/';

  Future<NotificationsCenterModel> getNotificationsCenterLocal() async {
    String jsonData = await loadAsset('notifications.json');
    Map<String, dynamic> data = await json.decode(jsonData);
    final value = NotificationsCenterModel.fromJson(data);
    return value;
  }

  Future<String> loadAsset(String fileName) async {
    return await rootBundle.loadString(basePath + fileName);
  }
}
