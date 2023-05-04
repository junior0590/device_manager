import 'dart:developer';

import 'package:project/new_bloc/views/devices/data/models/devices_info.dart';

class DevicesModel {
  List<DevicesInfo>? devices;

  DevicesModel({this.devices});

  DevicesModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      devices = <DevicesInfo>[];
      json['data'].forEach((v) {
        devices!.add(new DevicesInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (devices != null) {
      map['data']['devices'] =
          devices?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
