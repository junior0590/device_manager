import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/new_bloc/core/utils/extensions/constants.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_detail_dto.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_dto.dart';
import 'package:project/new_bloc/views/devices/domain/usecases/get_devices_detail.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import '../../domain/usecases/get_devices.dart';

part 'devices_detail_state.dart';

class DevicesDetailCubit extends Cubit<DevicesDetailState> {
  DevicesDetailCubit({required GetDevicesDetail getDeviceDetailUsecase})
      : _getDeviceDetailUsecase = getDeviceDetailUsecase,
        super(const DevicesDetailState());

  final GetDevicesDetail _getDeviceDetailUsecase;

  Future<void> fetchDeviceDetail() async {
    emit(DevicesDetailState(status: DataStatus.LOADING, device_detail: DevicesDetailDto()));
    try {
      final deviceDetailList = await _getDeviceDetailUsecase.call(
          params: GetDevicesDetailParams(globaldata.deviceID, globaldata.userId));

      if (deviceDetailList.data != null) {
        emit(DevicesDetailState(status: DataStatus.COMPLETED, device_detail: deviceDetailList.data!));
      } else {
        emit(DevicesDetailState(status: DataStatus.EMPTY, device_detail: deviceDetailList.data!));
      }
    } on Exception {
      emit(DevicesDetailState(status: DataStatus.ERROR, device_detail: DevicesDetailDto()));
    }
  }

  Future<void> lockDevice() async {
    emit(DevicesDetailState(status: DataStatus.LOADING, device_detail: DevicesDetailDto()));
    try {
      final tasksDetailList = await _getDeviceDetailUsecase.call(
          params: GetDevicesDetailParams(globaldata.deviceID, globaldata.userId));

      if (tasksDetailList.data != null) {
        emit(DevicesDetailState(status: DataStatus.COMPLETED, device_detail: tasksDetailList.data!));
      } else {
        emit(DevicesDetailState(status: DataStatus.EMPTY, device_detail: tasksDetailList.data!));
      }
    } on Exception {
      emit(DevicesDetailState(status: DataStatus.ERROR, device_detail: DevicesDetailDto()));
    }
  }
}
