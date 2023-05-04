import 'package:equatable/equatable.dart';
import 'package:project/new_bloc/views/devices/domain/entities/updates_dto.dart';

class DevicesDetailDto extends Equatable {
  final String? device_id;
  final String? name;
  final String? used_device_space;
  final String? model_name;
  final String? model;
  final String? available_device_capacity;
  final String? device_capacity;
  final String? device_name;
  final String? os_version;
  final String? imei;
  final String? location;
  final String? status;
  final String? battery_level;

  DevicesDetailDto({
    this.device_id,
    this.name,
    this.used_device_space,
    this.model_name,
    this.model,
    this.available_device_capacity,
    this.device_capacity,
    this.device_name,
    this.os_version,
    this.imei,
    this.location,
    this.status,
    this.battery_level}
      );

  DevicesDetailDto copyWith({
    String? device_id,
    String? name,
    String? used_device_space,
    String? model_name,
    String? model,
    String? available_device_capacity,
    String? device_capacity,
    String? device_name,
    String? os_version,
    String? imei,
    String? location,
    String? status,
    String? battery_level,
  }) {
    return DevicesDetailDto(
        device_id: device_id ?? this.device_id,
        name: name ?? this.name,
        used_device_space: used_device_space ?? this.used_device_space,
        model_name:model_name ?? this.model_name,
        model: model ?? this.model,
        available_device_capacity:available_device_capacity ?? this.available_device_capacity,
        device_capacity: device_capacity ?? this.device_capacity,
        device_name: device_name ?? this.device_name,
        os_version: os_version ?? this.os_version,
        imei: imei ?? this.imei,
        location: location ?? this.location,
        status: status ?? this.status,
        battery_level: battery_level ?? this.battery_level,
    );
  }

  @override
  List<Object?> get props => [
    device_id,
    name,
    used_device_space,
    model_name,
    model,
    available_device_capacity,
    device_capacity,
    device_name,
    os_version,
    imei,
    location,
    status,
    battery_level
  ];
}
