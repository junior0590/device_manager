import 'package:project/new_bloc/views/devices/data/models/devices_detail_model.dart';
import 'package:project/new_bloc/views/devices/data/models/devices_model.dart';
import 'package:project/new_bloc/views/devices/domain/repositories/devices_repository.dart';
import 'package:retrofit/retrofit.dart';

class DevicesService {
  final DevicesRepository _devicesRepository;

  DevicesService(this._devicesRepository);

  Future<HttpResponse<DevicesModel>> getDevices(Map<String, dynamic> body) =>
      _devicesRepository.getDevices(body);

  Future<HttpResponse<DevicesDetailModel>> getDevicesDetail(
          String device_id, String user_id) =>
      _devicesRepository.getDeviceDetail(device_id, user_id);
}
