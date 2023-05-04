import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/new_bloc/core/dio/data_state.dart';
import 'package:project/new_bloc/core/utils/extensions/constants.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/notifications_center_dto.dart';
import 'package:project/new_bloc/views/notifications_center/domain/usecases/get_notifications.dart';
import 'package:project/new_bloc/views/notifications_center/domain/usecases/post_markread_notifications.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

part 'notifications_center_state.dart';

class NotificationsCenterCubit extends Cubit<NotificationsCenterState> {
  NotificationsCenterCubit({required GetNotifications getNotificationsUsecase, required PostMarkReadNotifications postMarkReadNotificationsUsecase})
      : _getNotificationsUsecase = getNotificationsUsecase,
        _postMarkReadNotificationsUsecase = postMarkReadNotificationsUsecase,
        super(const NotificationsCenterState());

  final GetNotifications _getNotificationsUsecase;
  final PostMarkReadNotifications _postMarkReadNotificationsUsecase;
  NotificationsCenterDto? notificationsCopy;

  Future<void> fetchNotificationsCenter() async {
    emit(NotificationsCenterState(status: DataStatus.LOADING, notifications: NotificationsCenterDto(group_notifications: [], single_notifications: [])));

    final notificationsList = await _getNotificationsUsecase.call(params: GetNotificationsParams());

    if(notificationsList is DataSuccess){
      notificationsCopy = notificationsList.data;
      if (notificationsList.data!.single_notifications!.isNotEmpty || notificationsList.data!.group_notifications!.isNotEmpty) {
        emit(NotificationsCenterState(status: DataStatus.COMPLETED, notifications: notificationsList.data));
      } else {
        emit(NotificationsCenterState(status: DataStatus.EMPTY, notifications: NotificationsCenterDto(group_notifications: [], single_notifications: [])));
      }
    }
    else if(notificationsList is DataFailed){
      emit(NotificationsCenterState(status: DataStatus.ERROR, notifications: NotificationsCenterDto(group_notifications: [], single_notifications: [])));
    }

  }

  Future<void> changeView() async {
    emit(NotificationsCenterState(status: DataStatus.LOADING, notifications: NotificationsCenterDto(group_notifications: [], single_notifications: [])));
    emit(NotificationsCenterState(status: DataStatus.COMPLETED, notifications: notificationsCopy));
  }

  Future<void> markRead(String notification_id) async {
   // emit(NotificationsCenterState(status: DataStatus.COMPLETED, notifications: NotificationsCenterDto(group_notifications: [], single_notifications: [])));

    final notificationsList = await _postMarkReadNotificationsUsecase.call(params: PostMarkReadNotificationsParams(notification_id));
    if(notificationsList is DataSuccess){
      notificationsCopy!.single_notifications!.removeWhere((element) => element!.notification_id.toString() == notification_id);
      notificationsCopy!.group_notifications!.removeWhere((element) => element!.notification_id.toString() == notification_id);

     // emit(NotificationsCenterState(status: DataStatus.COMPLETED, notifications: notificationsCopy));
    }
    // else if(notificationsList is DataFailed){
    //   emit(NotificationsCenterState(status: DataStatus.ERROR, notifications: NotificationsCenterDto(group_notifications: [], single_notifications: [])));
    // }

  }
}
