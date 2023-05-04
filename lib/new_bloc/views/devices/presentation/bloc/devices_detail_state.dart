part of 'devices_detail_cubit.dart';

//enum TasksStatus { initial, loading, empty, success, failure }



class DevicesDetailState extends Equatable {

  const DevicesDetailState({ this.status = DataStatus.INITIAL, this.device_detail });

  final DataStatus status;
  final DevicesDetailDto? device_detail;

  @override
  List<Object> get props => [
    status,
    device_detail??[]
  ];
}
