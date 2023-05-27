
import 'package:project/new_bloc/views/devices/data/models/devices_detail_info.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_detail_dto.dart';
import 'package:project/new_bloc/views/devices/domain/entities/updates_dto.dart';

extension DevicesDetailInfoExtension on DevicesDetailInfo {
  DevicesDetailDto toDevicesDetailDto() {
    return DevicesDetailDto().copyWith(
      device_id: device_id,
      name: name,
      used_device_space: used_device_space,
      model_name: model_name,
      model: model,
      available_device_capacity: available_device_capacity,
      device_capacity: device_capacity,
      device_name: device_name,
      os_version: os_version,
      imei: imei,
      location: location,
      battery_level: battery_level
    );
  }
}

extension DevicesDetailInfoListExtension on List<DevicesDetailInfo>? {
  List<DevicesDetailDto> toDevicesDetailDtoList() {
    if (this != null || this!.isNotEmpty) {
      return this!.map((e) => e.toDevicesDetailDto()).toList();
    }
    return List.empty();
  }
}

