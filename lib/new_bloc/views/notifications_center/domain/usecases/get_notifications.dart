import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project/new_bloc/core/dio/data_state.dart';
import 'package:project/new_bloc/core/dio/dio_exception.dart';
import 'package:project/new_bloc/core/utils/use_case.dart';
import 'package:project/new_bloc/views/notifications_center/data/datasources/notifications_center_service_local.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/notifications_center_model.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/extensions/notifications_center_dto_extension.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/notifications_center_dto.dart';
import 'package:project/new_bloc/views/notifications_center/domain/repositories/notifications_center_repository.dart';

class GetNotifications implements UseCase<DataState<NotificationsCenterDto>, GetNotificationsParams> {
  final NotificationsCenterRepository _notificationsCenterRepository;
  final NotificationsCenterServiceLocal _notificationsCenterServiceLocal;

  GetNotifications(this._notificationsCenterRepository, this._notificationsCenterServiceLocal);

  @override
  Future<DataState<NotificationsCenterDto>> call(
      {required GetNotificationsParams params}) async {
    try {
      bool hasConnection = true;
      // final httpResponse;
      if (hasConnection) {
        final httpResponse = await _notificationsCenterRepository.getNotifications();
        if (httpResponse.response.statusCode == HttpStatus.ok) {
          return DataSuccess(httpResponse.data.notifications_center!.toNotificationsCenterDto());
        }
        return DataFailed(httpResponse.response.statusMessage);
      } else {
        NotificationsCenterModel httpResponse = await _notificationsCenterServiceLocal.getNotificationsCenterLocal();

        await Future.delayed(Duration(milliseconds: 700));
        return DataSuccess(httpResponse.notifications_center!.toNotificationsCenterDto());
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

class GetNotificationsParams {
  GetNotificationsParams();
}
