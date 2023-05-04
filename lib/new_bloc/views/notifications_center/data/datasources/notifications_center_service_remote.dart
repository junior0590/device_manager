import 'package:project/new_bloc/views/notifications_center/data/models/notifications_center_model.dart';
import 'package:project/new_bloc/views/notifications_center/domain/repositories/notifications_center_repository.dart';
import 'package:retrofit/retrofit.dart';

class NotificationsCenterService {
  final NotificationsCenterRepository _notificationsCenterRepository;

  NotificationsCenterService(this._notificationsCenterRepository);

  Future<HttpResponse<NotificationsCenterModel>> getNotifications() =>
      _notificationsCenterRepository.getNotifications();

  Future<HttpResponse<void>> postMarkRead(
      String record_id,) =>
      _notificationsCenterRepository.markRead(
        record_id,
      );

}
