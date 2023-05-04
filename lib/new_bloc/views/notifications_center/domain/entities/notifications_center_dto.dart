import 'package:equatable/equatable.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/group_notifications_dto.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/single_notifications_dto.dart';

class NotificationsCenterDto extends Equatable {
  final List<SingleNotificationsDto?>? single_notifications;
  final List<GroupNotificationsDto?>? group_notifications;

  NotificationsCenterDto({
    this.single_notifications,
    this.group_notifications
  });

  NotificationsCenterDto copyWith({
    List<SingleNotificationsDto?>? single_notifications,
    List<GroupNotificationsDto?>? group_notifications
  }) {
    return NotificationsCenterDto(
        single_notifications: single_notifications ?? this.single_notifications,
        group_notifications: group_notifications ?? this.group_notifications
    );
  }

  @override
  List<Object?> get props => [
    single_notifications,
    group_notifications
  ];
}
