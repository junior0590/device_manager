part of 'notifications_center_cubit.dart';

class NotificationsCenterState extends Equatable {

  const NotificationsCenterState({ this.status = DataStatus.INITIAL, this.notifications });

  final DataStatus status;
  final NotificationsCenterDto? notifications;

  @override
  List<Object> get props => [
    status,
    notifications??[]
  ];
}
