import 'dart:io';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project/new_bloc/core/di/injector.dart';
import 'package:project/new_bloc/core/dio/data_state.dart';
import 'package:project/new_bloc/core/dio/dio_exception.dart';
import 'package:project/new_bloc/core/dio/dio_factory.dart';
import 'package:project/new_bloc/core/utils/use_case.dart';
import 'package:project/new_bloc/views/devices/data/datasources/devices_service_local.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_detail_model.dart';
import 'package:project/new_bloc/views/devices/domain/entities/extensions/devices_detail_dto_extension.dart';
import 'package:project/new_bloc/views/devices/domain/entities/devices_detail_dto.dart';
import 'package:project/new_bloc/views/devices/domain/repositories/devices_repository.dart';
import 'package:project/utilities/http_calls/auth_provider.dart';


class GetDevicesDetail implements UseCase<DataState<DevicesDetailDto>, GetDevicesDetailParams> {
  final DevicesRepository _devicesRepository;
  final DevicesServiceLocal _devicesServiceLocal;

  GetDevicesDetail(this._devicesRepository, this._devicesServiceLocal);

  @override
  Future<DataState<DevicesDetailDto>> call(
      {required GetDevicesDetailParams params}) async {
    try {
      bool hasConnection = true;
      // final httpResponse;
      if (hasConnection) {
        // AuthProvider aut = AuthProvider();
        // globaldata.token = await aut.getToken();
        // print("new token: "+globaldata.token);
        // injector<Dio>().options = DioFactory().updateToken(token: globaldata.token, baseUrl: globaldata.baseUrl);

        final httpResponse = await _devicesRepository.getDeviceDetail(
          params.device_id,
          params.user_id,
        );
        if (httpResponse.response.statusCode == HttpStatus.ok) {
          return DataSuccess(httpResponse.data.devices!.toDevicesDetailDto());
        }
        return DataFailed(httpResponse.response.statusMessage);
      } else {
        DevicesDetailModel httpResponse = await _devicesServiceLocal.getDevicesDetailLocal(
          params.device_id
        );
      //  print("httpResponse: "+httpResponse.task!.toJson().toString());
        await Future.delayed(Duration(milliseconds: 700));
        return DataSuccess(httpResponse.devices!.toDevicesDetailDto());
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

class GetDevicesDetailParams {
  final String device_id;
  final String user_id;

  GetDevicesDetailParams(this.device_id, this.user_id);
}
