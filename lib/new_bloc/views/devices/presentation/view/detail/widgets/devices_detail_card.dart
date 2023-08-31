
import 'dart:async';
import 'dart:developer';

import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:path/path.dart' as path;
import 'package:place_picker/entities/localization_item.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/new_bloc/core/helpers/globaldata.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_detail_cubit.dart';
import 'package:project/packages/place_picker.dart';
import 'package:project/screens/maps/maps.dart';
import 'package:project/utilities/providers/device_manager.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../../../../../../utilities/classes/dropdown_model.dart';
import '../../../../../../../utilities/classes/list_item_model.dart';
import '../../../../../../../utilities/services/entity/maps/maprecords.dart';
import '../../detail/device_detail_screen.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class DevicesDetailCard extends StatefulWidget {

  const DevicesDetailCard({
    Key? key, required this.state,
    this.deviceId,
    this.announcement_id,
    this.name

  }) : super(key: key);

  final DevicesDetailState state;
  final String? deviceId;
  final String? announcement_id;
  final String? name;


  @override
  State<DevicesDetailCard> createState() => _DevicesDetailCardState();
}

class _DevicesDetailCardState extends State<DevicesDetailCard> {
  double downloadPercentage = 0;
  bool isDownloading = false;
  int unlockCode = 0;
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  DropdownModel<ListItemData> listItem = DropdownModel<ListItemData>(
    selectedValue: 0,
    modelData: [],
  );
  Timer? countdownTimer;

  var alertStyle = AlertStyle(
      backgroundColor: Color(0xFF282828),
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      isButtonVisible: false,
      animationDuration: Duration(milliseconds: 150),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleStyle: TextStyle(color: Color(0xFFEFEFEF), fontSize: 16),
      alertAlignment: Alignment.center,
      titleTextAlign: TextAlign.left);

  Widget getStatus(String status) {
    switch (status) {
      case "Completed":
        return  Icon(Icons.check_circle, color: globaldata.greenColor,);
      case "Pending":
        return Icon(Icons.pending, color: Colors.yellowAccent,);
      case "Cancelled":
        return Icon(Icons.cancel, color: Colors.red,);
      case "In Progress":
        return Icon(Icons.replay_circle_filled, color: Colors.deepOrangeAccent,);
      default:
        return Icon(Icons.hourglass_empty);
    }
  }

  Color? getColorStatus(String status) {
    switch (status) {
      case "Completed":
        return globaldata.greenColor;
      case "Pending":
        return Colors.yellowAccent;
      case "Cancelled":
        return Colors.red;
      case "In Progress":
        return Colors.deepOrangeAccent;
      default:
        return globaldata.whiteLetters2;
    }
  }

  String convertToAgo(String dateTime) {

    DateTime dt = DateTime.parse(dateTime);
    DateTime a = DateTime(dt.year,dt.month,dt.day,dt.hour,dt.minute);
    DateTime b = DateTime.now();

    Duration difference = b.difference(a);

    int days = difference.inDays;
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;
    int seconds = difference.inSeconds % 60;

    if(days >= 1){
      return days.toString()+(days > 1?" days":" day")+" ago";
    }
    else if(hours >= 1 && hours <= 24){
      return hours.toString()+(hours > 1?" hours":" hour")+" ago";
    }
    else if(minutes >= 1 && minutes <= 60){
      return minutes.toString()+(minutes > 1?" minutes":" minute")+" ago";
    }
    else{
      return seconds.toString()+" seconds ago";
    }

    //print("$days day(s) $hours hour(s) $minutes minute(s) $seconds second(s).");

  }

  Alert getAlert(){
    return Alert(
      context: context,
      style: alertStyle,
      content: Column(
        children: [
          Text(
            'Cargando',
            style: TextStyle(
                color: Color(0xFFEFEFEF), fontFamily: 'Chivo', fontSize: 18),
          ),
        ],
      ),
      buttons: [],
    );
  }

  Alert getCustomAlert(String message){
    return Alert(
      context: context,
      style: alertStyle,
      content: Column(
        children: [
          Text(
            message,
            style: TextStyle(
                color: Color(0xFFEFEFEF), fontFamily: 'Chivo', fontSize: 18),
          ),
        ],
      ),
      buttons: [
        DialogButton(child: Text("Ok"), onPressed: (){
          Navigator.pop(context);
        })
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: globaldata.blackBackground1,
        child: AnimationLimiter(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 400),
                child: SlideAnimation(
                  horizontalOffset: 40,
                  //verticalOffset: 25.0,
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                  child: Text("DETALLE DISPOSITIVO", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                              ),
                              Divider(color: globaldata.blackBackground1, thickness: 2),
                              SizedBox(height: 10),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Name: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(width: 5,),
                                          Expanded(child: Text(widget.name!)),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Model: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(width: 5,),
                                          Expanded(child: Text(widget.state.device_detail!.model_name!)),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text("Device Name: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(width: 5,),
                                          Text(widget.state.device_detail!.device_name!),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text("OS Version: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(width: 5,),
                                          Text(widget.state.device_detail!.os_version!),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text("IMEI: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(width: 5,),
                                          Text(widget.state.device_detail!.imei!),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text("Battery Level: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(width: 5,),
                                          Text(widget.state.device_detail!.battery_level!),
                                        ],
                                      ),
                                    ],
                                  )
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Text("ACCIONES ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ],
                                  )
                              ),
                              Divider(color: globaldata.blackBackground1, thickness: 2),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: globaldata.blackBackground2),
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(onPressed: () async {
                                          Alert alert = getAlert();
                                          alert.show();
                                          MapRecords mapData = await Provider.of<DeviceManagerProvider>(context, listen: false).getLocation(widget.deviceId!, globaldata.userId);
                                          //await Provider.of<DeviceManagerProvider>(context, listen: false).sendAction(widget.deviceId!, "fetch_location");
                                          log(mapData.toJson().toString());
                                          alert.dismiss();
                                          bool res = await openMap(
                                            double.parse(mapData.data![0].latitude!),
                                              double.parse(mapData.data![0].longitude!),
                                          );
                                          if(!res){
                                            MapsLauncher.launchCoordinates(double.parse(mapData.data![0].latitude!), double.parse(mapData.data![0].longitude!), 'Your selection is here');
                                            // MapData? result = await showDialog(context: context, builder: (context) => PlacePicker("AIzaSyAuHrKDWpQaSU7wuyfaJDZu4j4UKdmXAKc", localizationItem: LocalizationItem(
                                            //   unnamedLocation: "Selected Address",),
                                            //   displayLocation: LatLng(40.69772700, -73.52685300),
                                            // ),).then((value) {
                                            //   return value;
                                            // });
                                          }

                                        }, icon: Icon(Icons.pin_drop)),
                                        Text("Localización")
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: globaldata.blackBackground2),
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(onPressed: () async {
                                         // if(unlockCode > 0){
                                            Map<String, dynamic> body = {
                                              "passcode":unlockCode,
                                              "lock_message":"Dispositivo Bloqueado, Contactar al administrador",
                                            };
                                            Alert alert = getAlert();
                                            alert.show();
                                            await Provider.of<DeviceManagerProvider>(context, listen: false).sendAction(widget.deviceId!, "enable_lost_mode", globaldata.userId, body);
                                            alert.dismiss();
                                            showSnackBar(context, 'Operacion Completada!');
                                          // }
                                          // else{
                                          //   Alert alert = getCustomAlert("Debe Colocar un codigo de desbloqueo");
                                          //   alert.show();
                                          // }


                                        }, icon: Icon(Icons.lock)),
                                        Text("Bloquear")
                                      ],
                                    ),
                                  ),
                                  // SizedBox(width: 5),
                                  // Container(
                                  //   padding: EdgeInsets.all(10),
                                  //   decoration: BoxDecoration(
                                  //       border: Border.all(width: 1, color: globaldata.blackBackground2),
                                  //       borderRadius: BorderRadius.all(Radius.circular(15))
                                  //   ),
                                  //   child: Column(
                                  //     children: [
                                  //       IconButton(onPressed: () async {
                                  //         // if(unlockCode > 0){
                                  //         Map<String, dynamic> body = {
                                  //           "passcode":unlockCode,
                                  //           //"lock_message":"Dispositivo Bloqueado, Contactar al administrador",
                                  //         };
                                  //         Alert alert = getAlert();
                                  //         alert.show();
                                  //         await Provider.of<DeviceManagerProvider>(context, listen: false).sendAction(widget.deviceId!, "reset_passcode", globaldata.userId, body);
                                  //         alert.dismiss();
                                  //         showSnackBar(context, 'Operacion Completada!');
                                  //         // }
                                  //         // else{
                                  //         //   Alert alert = getCustomAlert("Debe Colocar un codigo de desbloqueo");
                                  //         //   alert.show();
                                  //         // }
                                  //
                                  //
                                  //       }, icon: Icon(Icons.lock_person)),
                                  //       Text("Bloqueo 2")
                                  //     ],
                                  //   ),
                                  // ),
                                  SizedBox(width: 5),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: globaldata.blackBackground2),
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(onPressed: () async {
                                          Map<String, dynamic> body = {};
                                          Alert alert = getAlert();
                                          alert.show();
                                          await Provider.of<DeviceManagerProvider>(context, listen: false).sendAction(widget.deviceId!, "disable_lost_mode", globaldata.userId, body);
                                          await Provider.of<DeviceManagerProvider>(context, listen: false).sendAction(widget.deviceId!, "clear_passcode",globaldata.userId, body);
                                          alert.dismiss();
                                          showSnackBar(context, 'Operacion Completada!');

                                        }, icon: Icon(Icons.lock_open)),
                                        Text("Desbloquear")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: globaldata.blackBackground2),
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Column(
                                      children: [
                                        IconButton(onPressed: () async {
                                          Alert alert = getAlert();
                                          alert.show();
                                          await Provider.of<DeviceManagerProvider>(context, listen: false).sendMessage(widget.deviceId!, globaldata.userId);
                                          alert.dismiss();
                                          showSnackBar(context, 'Operacion Completada!');
                                        }, icon: Icon(Icons.notifications_active)),
                                        Text("Notificación")
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // SizedBox(height: 15),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.all(Radius.circular(10)),
                        //   ),
                        //   alignment: Alignment.centerLeft,
                        //   width: 200,
                        //   padding: EdgeInsets.all(5),
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     children: [
                        //       Text("Codigo Desbloqueo"),
                        //       TextField(
                        //         inputFormatters: <TextInputFormatter>[
                        //           FilteringTextInputFormatter.digitsOnly
                        //         ],
                        //         keyboardType: TextInputType.number,
                        //         maxLength: 4,
                        //         onChanged: (String? value){
                        //           print(value);
                        //           unlockCode = 0;
                        //           if(value != null){
                        //             if(value != ""){
                        //               unlockCode = int.parse(value);
                        //             }
                        //           }
                        //
                        //         },
                        //       ),
                        //     ],
                        //   ),
                        // ),
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
