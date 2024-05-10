
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
  //DropdownModel<ListItemData> listItem = DropdownModel<ListItemData>(
  //   selectedValue: 0,
  //   modelData: [],
  // );
  List<DevicesDto>? ios = [];
  List<DevicesDto>? android = [];
  double screenSize = 450;

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
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                // Customize the appearance and behavior of the tab bar
                backgroundColor: Colors.blueAccent,
                borderWidth: 2,
                borderColor: Colors.black,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                // Add your tabs here
                tabs: [
                  Tab(text: "IOS",),
                  Tab(text: "Android")
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    if (ios!.length >0) AnimationLimiter(
                      child: GridView.builder(
                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 180,
                          crossAxisCount: getGridSize(
                              MediaQuery.of(context).size.width),
                        ),
                        itemCount: ios!.length,
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
                                        globaldata.deviceID = ios![index].device_id!;
                                        context.read<DevicesDetailCubit>().fetchDeviceDetail();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DeviceDetailScreen(deviceId: ios![index].device_id, announcement_id: ios![index].announcement_id,
                                                name: ios![index].name),
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
                                              ios![index].name??"-",
                                              style: Theme.of(context).textTheme.titleSmall,
                                            ),
                                            Divider(color: globaldata.blackBackground1, thickness: 1,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Modelo: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                                Expanded(child: Text(ios![index].model??"-")),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Plataforma: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                                Expanded(child: Text(ios![index].platform_type??"-")),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Fecha: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                                Text(formatNotiList.format(
                                                  DateTime.parse(ios![index].created_at!).toLocal(),
                                                ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(ios![index].status??"-", style: TextStyle(color: getColorStatus(ios![index].status??"-"), fontSize: 14)),
                                                SizedBox(width: 5),
                                                getStatus(ios![index].status??"-"),
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
                    ) else Center(child: Text("No se encontraron registros!", style: TextStyle(color: Colors.white),),),
                    if (android!.length >0) AnimationLimiter(
                      child: GridView.builder(
                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 180,
                          crossAxisCount: getGridSize(
                              MediaQuery.of(context).size.width),
                        ),
                        itemCount: android!.length,
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
                                        globaldata.deviceID = android![index].device_id!;
                                        context.read<DevicesDetailCubit>().fetchDeviceDetail();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DeviceDetailScreen(deviceId: android![index].device_id, announcement_id: android![index].announcement_id,
                                                name: android![index].name),
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
                                              android![index].name??"-",
                                              style: Theme.of(context).textTheme.titleSmall,
                                            ),
                                            Divider(color: globaldata.blackBackground1, thickness: 1,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Modelo: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                                Expanded(child: Text(android![index].model??"-")),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Plataforma: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                                Expanded(child: Text(android![index].platform_type??"-")),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Fecha: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                                Text(formatNotiList.format(
                                                  DateTime.parse(android![index].created_at!).toLocal(),
                                                ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(android![index].status??"-", style: TextStyle(color: getColorStatus(android![index].status??"-"), fontSize: 14)),
                                                SizedBox(width: 5),
                                                getStatus(android![index].status??"-"),
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
                    ) else Center(child:Text("No se encontraron registros!", style: TextStyle(color: Colors.white),),),
                  ],
                ),
              ),
            ],
          ),
        )
        ),
      );
  }
}
