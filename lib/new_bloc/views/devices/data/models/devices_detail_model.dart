import 'dart:developer';

import 'package:project/new_bloc/views/devices/data/models/devices_detail_info.dart';

class DevicesDetailModel {
  DevicesDetailInfo? devices;

  DevicesDetailModel({this.devices});

  DevicesDetailModel.fromJson(dynamic json) {
    if (json != null) {
      if (json['data'] != null) {
        devices = DevicesDetailInfo.fromJson(json['data']);
      }
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (devices != null) {
      map['data'] =
          devices?.toJson();
    }
    return map;
  }
}
