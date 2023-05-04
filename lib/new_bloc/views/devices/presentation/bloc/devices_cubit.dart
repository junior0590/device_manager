import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:project/new_bloc/core/di/injector.dart';
import 'package:project/new_bloc/core/dio/data_state.dart';
import 'package:project/new_bloc/core/dio/dio_factory.dart';
import 'package:project/new_bloc/core/utils/extensions/constants.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_dto.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/http_calls/auth_provider.dart';
import 'package:project/utilities/services/entity/tasks/task_selected_filter.dart';
import '../../domain/usecases/get_devices.dart';

part 'devices_state.dart';

class DevicesCubit extends Cubit<DevicesState> {
  DevicesCubit({required GetDevices getDevicesUsecase})
      : _getDevicesUsecase = getDevicesUsecase,
        super(const DevicesState());

  final GetDevices _getDevicesUsecase;

  List<DevicesDto> devices = [];
  List<DevicesDto> devicesCopy = [];

  Future<void> fetchDevices() async {

    Map<String, dynamic> body = {
      "user_id": globaldata.userId
    };
    emit(DevicesState(status: DataStatus.LOADING, devices: []));

      final devicesList = await _getDevicesUsecase.call(
          params: GetDevicesParams(body));

      if(devicesList is DataSuccess){
        if (devicesList.data!.isNotEmpty) {
          devicesCopy.clear();
          devicesCopy.addAll(devicesList.data!);
          emit(DevicesState(status: DataStatus.COMPLETED, devices: devicesList.data!));
        } else {
          emit(DevicesState(status: DataStatus.EMPTY, devices: []));
        }
      }
      else if(devicesList is DataFailed){
        emit(DevicesState(status: DataStatus.ERROR, devices: []));
      }

  }


}
