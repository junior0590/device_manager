import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_detail_model.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_model.dart';

class DevicesServiceLocal {
  String basePath = 'lib/new_bloc/core/data/local/json_responses/';

  Future<DevicesModel> getDevicesLocal(Map<String, dynamic> body) async {
    String jsonData = await loadAsset('device_list.json');
    Map<String, dynamic> data = await json.decode(jsonData);
    final value = DevicesModel.fromJson(data);
    return value;
  }

  Future<DevicesDetailModel> getDevicesDetailLocal(
      String device_id) async {
    String jsonData = await loadAsset('device_detail.json');
    Map<String, dynamic> data = await json.decode(jsonData);
    final value = DevicesDetailModel.fromJson(data);
    return value;
  }

  Future<String> loadAsset(String fileName) async {
    return await rootBundle.loadString(basePath + fileName);
  }
}
