import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project/new_bloc/core/di/injector.dart';
import 'package:project/new_bloc/core/dio/data_state.dart';
import 'package:project/new_bloc/core/dio/dio_exception.dart';
import 'package:project/new_bloc/core/dio/dio_factory.dart';
import 'package:project/new_bloc/core/utils/use_case.dart';
import 'package:project/new_bloc/views/devices/data/datasources/devices_service_local.dart';
import 'package:project/new_bloc/views/devices/data/datasources/devices_service_remote.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_model.dart';
import 'package:project/new_bloc/views/devices/domain/entities/extensions/devices_dto_extension.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_dto.dart';
import 'package:project/new_bloc/views/devices/domain/repositories/devices_repository.dart';
import 'package:project/utilities/http_calls/auth_provider.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class GetDevices implements UseCase<DataState<List<DevicesDto>>, GetDevicesParams> {
  final DevicesService _devicesService;
  final DevicesServiceLocal _devicesServiceLocal;

  GetDevices(this._devicesService, this._devicesServiceLocal);

  @override
  Future<DataState<List<DevicesDto>>> call(
      {required GetDevicesParams params}) async {
    try {
      bool hasConnection = true;
      // final httpResponse;
      if (hasConnection) {

        final httpResponse = await _devicesService.getDevices(
          params.body
        );
        if (httpResponse.response.statusCode == HttpStatus.ok) {
          return DataSuccess(httpResponse.data.devices!.toDevicesDtoList());
        }
        return DataFailed(httpResponse.response.statusMessage);
      } else {
        DevicesModel httpResponse = await _devicesServiceLocal.getDevicesLocal(
          params.body
        );

        await Future.delayed(Duration(milliseconds: 700));
        //return DataFailed("500");
        return DataSuccess(httpResponse.devices!.toDevicesDtoList());
      }
    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      if (kDebugMode) {
        print(errorMessage);
      }
      return DataFailed(errorMessage);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return DataFailed(e.toString());
    }
  }
}

class GetDevicesParams {
  final Map<String, dynamic> body;

  GetDevicesParams(this.body);
}
