part of 'injector.dart';

notificationsCenter(){

  // Injector for BLOC
  injector.registerFactory(
        () => NotificationsCenterCubit(
      getNotificationsUsecase: injector<GetNotifications>(),
          postMarkReadNotificationsUsecase: injector<PostMarkReadNotifications>(),
    ),
  );

  // Usecase
  injector.registerLazySingleton(
        () => GetNotifications(
      injector(),
      injector(),
    ),
  );

  injector.registerLazySingleton(
        () => PostMarkReadNotifications(
      injector(),
    ),
  );

  // Service
  injector.registerLazySingleton(
        () => NotificationsCenterService(
      injector(),
    ),
  );
  injector.registerLazySingleton(
        () => NotificationsCenterServiceLocal(
    ),
  );

  // Repository

  injector.registerLazySingleton(
        () => NotificationsCenterRepository(
      injector(),
      baseUrl: baseUrl,
    ),
  );


}