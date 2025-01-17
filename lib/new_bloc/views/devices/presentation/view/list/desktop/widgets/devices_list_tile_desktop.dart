
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:path/path.dart' as path;
import 'package:project/new_bloc/core/di/injector.dart';
import 'package:project/new_bloc/core/dio/dio_factory.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_cubit.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_detail_cubit.dart';
import 'package:project/new_bloc/views/devices/presentation/view/detail/device_detail_screen.dart';
import 'package:project/utilities/helpers/globaldata.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/http_calls/auth_provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../../domain/entities/devices_dto.dart';

class DevicesListTileDesktop extends StatefulWidget {

  const DevicesListTileDesktop({
    Key? key, required this.state
  }) : super(key: key);

  final DevicesState state;


  @override
  State<DevicesListTileDesktop> createState() => _DevicesListTileDesktopState();
}

class _DevicesListTileDesktopState extends State<DevicesListTileDesktop> {
  double downloadPercentage = 0;
  bool isDownloading = false;
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<DevicesDto>? ios = [];
  List<DevicesDto>? android = [];
  double screenSize = 450;
  late DeviceDataSource deviceDataSource;
  String selectedDeviceId = "";
  String selectedDeviceName = "";

  Widget getStatus(String status) {
    switch (status) {
      case "Activo":
        return  Icon(Icons.check_circle, color: globaldata.greenColor,);
      case "Pendiente":
        return Icon(Icons.pending, color: Colors.amber,);
      case "Bloqueado":
        return Icon(Icons.block, color: Colors.red,);
      case "En Proceso":
        return Icon(Icons.replay_circle_filled, color: Colors.deepOrangeAccent,);
      default:
        return Icon(Icons.hourglass_empty);
    }
  }

  Color? getColorStatus(String status) {
    switch (status) {
      case "Activo":
        return globaldata.greenColor;
      case "Pendiente":
        return Colors.amber;
      case "Bloqueado":
        return Colors.red;
      case "En Proceso":
        return Colors.deepOrangeAccent;
      default:
        return globaldata.whiteLetters2;
    }
  }

  @override
  void initState() {
   ios = widget.state.devices!.where((element) => element.platform_type == "Iphone").toList();
   android = widget.state.devices!.where((element) => element.platform_type == "Android").toList();

   deviceDataSource = DeviceDataSource(deviceData: widget.state.devices!);
    super.initState();
  }

  int getGridSize(double width) {
    return (width / 225).ceil();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: globaldata.blackBackground3,
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SfDataGrid(
          allowSorting: true,
          allowFiltering: true,
          source: deviceDataSource,
          columnWidthMode: ColumnWidthMode.fill,
          headerGridLinesVisibility: GridLinesVisibility.none,
          gridLinesVisibility: GridLinesVisibility.none,
          onCellTap: (DataGridCellTapDetails dcd){
            if(dcd.rowColumnIndex.rowIndex > 0){
              selectedDeviceId = deviceDataSource.effectiveRows[dcd.rowColumnIndex.rowIndex-1].getCells()[0].value.toString();
              selectedDeviceName = deviceDataSource.effectiveRows[dcd.rowColumnIndex.rowIndex-1].getCells()[1].value.toString();
              globaldata.deviceID = selectedDeviceId;
              context.read<DevicesDetailCubit>().fetchDeviceDetail();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeviceDetailScreen(deviceId: selectedDeviceId, announcement_id: "",
                      name: selectedDeviceName),
                ),
              );
            }

          },

          columns: <GridColumn>[
            GridColumn(
                columnName: 'id',
                label: Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(
                      'ID',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                    ))),
            GridColumn(
                columnName: 'name',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Nombre', style: TextStyle(color: Colors.blueAccent, fontSize: 16), ))),
            GridColumn(
                columnName: 'platform',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Plataforma',
                      overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.blueAccent, fontSize: 16)
                    ))),
            GridColumn(
                columnName: 'status',
                label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Status', style: TextStyle(color: Colors.blueAccent, fontSize: 16)))),
          ],
        ),
      ),
      );
  }
}

class DeviceDataSource extends DataGridSource {
  DeviceDataSource({required List<DevicesDto> deviceData}) {
    _deviceData = deviceData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'id', value: e.device_id),
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'platform', value: e.platform_type),
      DataGridCell<String>(columnName: 'status', value: e.status),
    ]))
        .toList();
  }

  List<DataGridRow> _deviceData = [];

  @override
  List<DataGridRow> get rows => _deviceData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return e.columnName=="status"?Center(child: Text(e.value.toString(), style: TextStyle(color: e.value=="Activo"?Colors.green:Colors.red, fontSize: 16),)) :Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString(), style: TextStyle(color: Colors.white),),
          );
        }).toList());
  }
}

//FilledButton.tonalIcon()