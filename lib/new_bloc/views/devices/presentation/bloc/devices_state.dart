part of 'devices_cubit.dart';

class DevicesState extends Equatable {

  const DevicesState({ this.status = DataStatus.INITIAL, this.devices });

  final DataStatus status;
  final List<DevicesDto>? devices;

  @override
  List<Object> get props => [
    status,
    devices??[]
  ];
}
