import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/utilities/services/entity/notifications/notification_field.dart';
import '../http_calls/auth_provider.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class Notifications with ChangeNotifier {

  AuthProvider httpCalls = AuthProvider();
  List<NotificationField>? _notifications = [];

  List<NotificationField>? get allNotifications {
    return [...?_notifications];
  }

  void fillNotifications() async {

  }

  void addNotification(String json) {

    DateTime date;
    dynamic notificationField = jsonDecode(json);
    date = DateTime.parse(notificationField["date"]);
    NotificationField notification = NotificationField();

    if(notificationField["type"] == "record"){
      dynamic notificationContent = jsonDecode(notificationField["message"]);
      notification.message = "Shared "+notificationContent["module"]+": "+notificationContent["name"];
    }
    else{
      notification.message = notificationField["message"];
    }

    notification.originalDate = date;
    notification.date = date.day.toString()+"/"+date.month.toString()+"/"+date.year.toString();
    notification.isRead = false;
    notification.owner_type = notificationField["target"];
    notification.owner_id = notificationField["target_id"];
    if(notification.owner_type == "chats"){
      notification.module = "";
      notification.sender = notificationField["sender"];
    }
    else{
      notification.module = notificationField["module"];
      notification.sender = "";
    }

    _notifications!.add(notification);
    globaldata.noti = _notifications!;
    globaldata.sendToNotification = true;
    updateBadgeApp();


    notifyListeners();

  }

  void addNewNotification(QueryDocumentSnapshot<Map<String, dynamic>> data) {

    DateTime date;
    date = DateTime.now();//DateTime.parse(notificationField["date"]);
    NotificationField notification = NotificationField();

    if(data.get("type") == "record"){
      notification.message = "Shared "+data.get("module")+": "+data.get("message");
    }
    else{
      notification.message = data.get("message");
    }

    notification.originalDate = date;
    notification.date = date.day.toString()+"/"+date.month.toString()+"/"+date.year.toString();
    notification.isRead = false;
    notification.notification_type = data.get("type");
    notification.owner_type = data.get("owner_type");
    notification.owner_id = data.get("owner_id");
    notification.module = data.get("module");
    notification.record_id = data.get("record_id");

    _notifications!.add(notification);
    globaldata.noti = _notifications!;
    globaldata.sendToNotification = true;
    updateBadgeApp();

    notifyListeners();

  }

  void removeNotification(NotificationField notify) {

    _notifications!.remove(notify);
    globaldata.noti = _notifications!;
    updateBadgeApp();

    notifyListeners();

  }

  void markReadAllNotification() {

    _notifications!.forEach((element) {
      element.isRead = true;
    });

    updateBadgeApp();

    notifyListeners();

  }

  void removeAllNotification() {

    _notifications!.clear();
    globaldata.noti = _notifications!;
    updateBadgeApp();

    notifyListeners();

  }

}
