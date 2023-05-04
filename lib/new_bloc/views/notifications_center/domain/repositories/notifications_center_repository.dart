import 'package:dio/dio.dart';
import 'package:project/new_bloc/views/notifications_center/data/models/notifications_center_model.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'notifications_center_repository.g.dart';

@RestApi()
abstract class NotificationsCenterRepository {
  factory NotificationsCenterRepository(Dio dio, {String? baseUrl}) = _NotificationsCenterRepository;
  @GET("/notification")
  Future<HttpResponse<NotificationsCenterModel>> getNotifications();

  @POST("/events/markread/{record_id}")
  Future<HttpResponse<void>> markRead(
      @Path("record_id") String record_id,
      );
}
