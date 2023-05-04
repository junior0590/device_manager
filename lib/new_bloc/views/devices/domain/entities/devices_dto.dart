import 'package:equatable/equatable.dart';

class DevicesDto extends Equatable {
  final String? device_id;
  final String? name;
  final String? platform_type;
  final String? model;
  final String? product_name;
  final String? status;
  final String? announcement_id;
  final String? created_at;

  DevicesDto(this.device_id, this.name, this.platform_type, this.model, this.product_name, this.status, this.announcement_id, this.created_at);

  DevicesDto copyWith(
      {String? device_id,
      String? name,
      String? platform_type,
      String? model,
      String? product_name,
      String? status,
      String? announcement_id,
      String? created_at}) {
    return DevicesDto(
      device_id ?? this.device_id,
      name ?? this.name,
      platform_type ?? this.platform_type,
      model ?? this.model,
      product_name ?? this.product_name,
      status ?? this.status,
      status ?? this.announcement_id,
      created_at ?? this.created_at,
    );
  }

  @override
  List<Object?> get props => [device_id, name, platform_type, model, product_name, status, announcement_id, created_at];
}
