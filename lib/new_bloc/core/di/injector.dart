import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/new_bloc/core/dio/dio_factory.dart';
import 'package:project/new_bloc/views/notifications_center/data/datasources/notifications_center_service_local.dart';
import 'package:project/new_bloc/views/notifications_center/data/datasources/notifications_center_service_remote.dart';
import 'package:project/new_bloc/views/notifications_center/domain/repositories/notifications_center_repository.dart';
import 'package:project/new_bloc/views/notifications_center/domain/usecases/get_notifications.dart';
import 'package:project/new_bloc/views/notifications_center/domain/usecases/post_markread_notifications.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/bloc/notifications_center_cubit.dart';
import 'package:project/new_bloc/views/devices/data/datasources/devices_service_local.dart';
import 'package:project/new_bloc/views/devices/data/datasources/devices_service_remote.dart';
import 'package:project/new_bloc/views/devices/domain/usecases/get_devices.dart';
import 'package:project/new_bloc/views/devices/domain/usecases/get_devices_detail.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_detail_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_cubit.dart';
import 'package:project/new_bloc/views/devices/domain/repositories/devices_repository.dart';
import '../../../utilities/helpers/helpers.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

part 'socket_injector.dart';

part 'notifications_center_injector.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {

  final storage = await SharedPreferences.getInstance();

  int? userId = storage.getInt('userId');
  final io.Socket chatSocket = io.io(
    'http://192.3.146.185:3000',
    {
      'transports': ['websocket'],
      'autoConnect': true,
      'forceNew': true,
      'extraHeaders': {'x-token': userId}
    },
  );

  //TODO: FIX TOKEN
  String token = storage.getString('token') ?? 'NO TOKEN';
  //Dio client
  injector.registerSingleton<Dio>(DioFactory(
    baseUrl: "",
    token: token,
  ).create());
















  // Injector for BLOC

  injector.registerFactory(
    () => DevicesCubit(
      getDevicesUsecase: injector<GetDevices>(),
    ),
  );

  injector.registerFactory(
    () => DevicesDetailCubit(
      getDeviceDetailUsecase: injector<GetDevicesDetail>(),
    ),
  );


  // Usecase
  injector.registerLazySingleton(
    () => GetDevices(
      injector(),
      injector(),
    ),
  );
  injector.registerLazySingleton(
    () => GetDevicesDetail(
      injector(),
      injector(),
    ),
  );
  // Service

  injector.registerLazySingleton(
    () => DevicesService(
      injector(),
    ),
  );
  injector.registerLazySingleton(
    () => DevicesServiceLocal(),
  );


  // Repository

  injector.registerLazySingleton(
    () => DevicesRepository(
      injector(),
      baseUrl: "",
    ),
  );

  socket();
  notificationsCenter();

}
