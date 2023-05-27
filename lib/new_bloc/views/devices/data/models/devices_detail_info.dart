

class DevicesDetailInfo {
  String? device_id;
  String? name;
  String? used_device_space;
  String? model_name;
  String? model;
  String? available_device_capacity;
  String? device_capacity;
  String? device_name;
  String? os_version;
  String? imei;
  String? location;
  String? battery_level;

  DevicesDetailInfo({
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
    this.battery_level
  });

  factory DevicesDetailInfo.fromJson(Map<String, dynamic> json) => DevicesDetailInfo(
    device_id: json['device_id'],
    name: json['name'],
    used_device_space: json['used_device_space'],
    model_name: json['model_name'],
    model: json['model'],
    available_device_capacity: json['available_device_capacity'],
    device_capacity: json['device_capacity'],
    device_name: json['device_name'],
    os_version: json['os_version'],
    imei: json['imei'],
    location: json['location'],
    battery_level: json['battery_level'],
  );

  Map<String, dynamic> toJson() => {
    "device_id": device_id,
    "name": name,
    "used_device_space": used_device_space,
    "model_name": model_name,
    "model": model,
    "available_device_capacity": available_device_capacity,
    "device_capacity": device_capacity,
    "device_name": device_name,
    "os_version": os_version,
    "imei": imei,
    "location": location,
    "battery_level": battery_level,
  };
}
