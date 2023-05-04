import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project/new_bloc/core/dio/data_state.dart';
import 'package:project/new_bloc/core/dio/dio_exception.dart';
import 'package:project/new_bloc/core/usecases/use_case.dart';
import 'package:project/new_bloc/views/notifications_center/data/datasources/notifications_center_service_remote.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/notifications_center_dto.dart';

class PostMarkReadNotifications implements UseCase<DataState<NotificationsCenterDto>, PostMarkReadNotificationsParams> {
  final NotificationsCenterService notificationsCenterService;

  PostMarkReadNotifications(this.notificationsCenterService);

  @override
  Future<DataState<NotificationsCenterDto>> call({required PostMarkReadNotificationsParams params}) async {
    try {

      final httpResponse = await notificationsCenterService.postMarkRead(params.notification_id);
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == HttpStatus.noContent) {
        print("DataSuccess");
        return DataSuccess(NotificationsCenterDto(single_notifications: [], group_notifications: []));
      }  else {
        return DataFailed(httpResponse.response.statusMessage);
      }


    } on DioError catch (e) {
      final errorMessage = DioException.fromDioError(e).toString();
      if (kDebugMode) {
        print("DioError: "+errorMessage);
      }
      return DataFailed(errorMessage);
    } catch (e) {
      if (kDebugMode) {
        print("err: "+e.toString());
      }
      return DataFailed(e.toString());
    }
  }
}

class PostMarkReadNotificationsParams {
  final String notification_id;

  PostMarkReadNotificationsParams(this.notification_id);
}
