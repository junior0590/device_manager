
import 'package:project/new_bloc/views/devices/data/models/devices_info.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_dto.dart';

extension DevicesInfoExtension on DevicesInfo {
  DevicesDto toDevicesDto() {
    return DevicesDto(
        device_id,
        name,
        platform_type,
        model,
        product_name,
        status,
        announcement_id,
        created_at
    );
  }
}

extension DevicesInfoListExtension on List<DevicesInfo>? {
  List<DevicesDto> toDevicesDtoList() {
    if (this != null || this!.isNotEmpty) {
      return this!.map((e) => e.toDevicesDto()).toList();
    }
    return List.empty();
  }
}
