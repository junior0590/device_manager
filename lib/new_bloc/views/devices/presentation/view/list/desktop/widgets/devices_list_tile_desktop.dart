
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
  //DropdownModel<ListItemData> listItem = DropdownModel<ListItemData>(
  //   selectedValue: 0,
  //   modelData: [],
  // );
  double screenSize = 450;

  Widget getStatus(String status) {
    switch (status) {
      case "Activo":
        return  Icon(Icons.check_circle, color: globaldata.greenColor,);
      case "Pendiente":
        return Icon(Icons.pending, color: Colors.amber,);
      case "Cancelado":
        return Icon(Icons.cancel, color: Colors.red,);
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
      case "Cancelado":
        return Colors.red;
      case "En Proceso":
        return Colors.deepOrangeAccent;
      default:
        return globaldata.whiteLetters2;
    }
  }

  @override
  void initState() {
    widget.state.devices!.forEach((element) {
      print(element.toString());
    });
    super.initState();
  }

  int getGridSize(double width) {
    return (width / 225).ceil();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: globaldata.blackBackground1,
        child: AnimationLimiter(
          child: GridView.builder(
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 350,
              crossAxisCount: getGridSize(
                  MediaQuery.of(context).size.width),
            ),
            itemCount: widget.state.devices!.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  horizontalOffset: 40,
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            globaldata.deviceID = widget.state.devices![index].device_id!;
                            context.read<DevicesDetailCubit>().fetchDeviceDetail();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeviceDetailScreen(deviceId: widget.state.devices![index].device_id, announcement_id: widget.state.devices![index].announcement_id,
                                    name: widget.state.devices![index].name),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),),
                            child: Column(
                              children: [
                                Text(
                                  widget.state.devices![index].name??"-",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Divider(color: globaldata.blackBackground1, thickness: 1,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Modelo: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          Expanded(child: Text(widget.state.devices![index].model??"-")),
                                        ],
                                      ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Plataforma: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Expanded(child: Text(widget.state.devices![index].platform_type??"-")),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Fecha: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(formatNotiList.format(
                                      DateTime.parse(widget.state.devices![index].created_at!).toLocal(),
                                    ),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(widget.state.devices![index].status??"-", style: TextStyle(color: getColorStatus(widget.state.devices![index].status??"-"), fontSize: 14)),
                                    SizedBox(width: 5),
                                    getStatus(widget.state.devices![index].status??"-"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ),
      );
  }
}
