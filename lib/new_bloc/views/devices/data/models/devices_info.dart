class DevicesInfo {
  String? device_id;
  String? name;
  String? platform_type;
  String? model;
  String? product_name;
  String? status;
  String? announcement_id;
  String? created_at;

  DevicesInfo({
    this.device_id,
    this.name,
    this.platform_type,
    this.model,
    this.product_name,
    this.status,
    this.announcement_id,
    this.created_at
  });

  factory DevicesInfo.fromJson(Map<String, dynamic> json) => DevicesInfo(
      device_id: json['device_id'],
      name: json['name'],
      platform_type: json['platform_type'],
      model: json['model'],
      product_name: json['product_name'],
      status: json['status'],
      announcement_id: json['announcement_id'],
      created_at: json['created_at'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['device_id'] = this.device_id;
    data['name'] = this.name;
    data['platform_type'] = this.platform_type;
    data['model'] = this.model;
    data['product_name'] = this.product_name;
    data['status'] = this.status;
    data['announcement_id'] = this.announcement_id;
    data['created_at'] = this.created_at;

    return data;
  }
}
