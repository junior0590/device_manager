import 'package:dio/dio.dart';
import 'package:project/new_bloc/views/devices/data/datasources/devices_service_remote.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_detail_model.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_model.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
part 'devices_repository.g.dart';

@RestApi()
abstract class DevicesRepository {
  factory DevicesRepository(Dio dio, {String? baseUrl}) = _DevicesRepository;
  @POST(globaldata.baseUrlHemaxvisoft+"/webApi/api/devices")
  Future<HttpResponse<DevicesModel>> getDevices(
      @Body() Map<String, dynamic> body
      );

  @GET(globaldata.baseUrl+"/api/v1/mdm/devices/{device_id}")
  Future<HttpResponse<DevicesDetailModel>> getDeviceDetail(
      @Path('device_id') String device_id,
      );
}
