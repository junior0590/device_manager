import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/new_bloc/core/utils/extensions/constants.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_detail_cubit.dart';
import 'package:project/new_bloc/views/devices/presentation/view/detail/widgets/skeleton_device_detail_card.dart';
import 'package:project/new_bloc/views/devices/presentation/view/detail/widgets/devices_detail_card.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:skeletons/skeletons.dart';

const disableIconColor = Color(0xFF0F0F0F);

const personAddStyle = BoxDecoration(
  shape: BoxShape.circle,
  gradient: globaldata.greenGradient,
);

const dashboardActionDecoration = BoxDecoration(
  shape: BoxShape.circle,
  gradient: globaldata.greenGradient,
);

const dashboardDisableActionDecoration = BoxDecoration(
  shape: BoxShape.circle,
  gradient: globaldata.disableGradient,
);

final dashboardSearchDecoration = BoxDecoration(
  gradient: globaldata.greenGradient,
  borderRadius: BorderRadius.circular(60),
  color: globaldata.greenColor,
  shape: BoxShape.rectangle,
);

const dashboardActionMargin = EdgeInsets.all(5.0);

//////////////////////////////////////////////////////////////////////////////////

class DeviceDetailScreen extends StatefulWidget {
  DeviceDetailScreen({Key? key, this.deviceId, this.announcement_id, this.name}) : super(key: key);

  final String? deviceId;
  final String? announcement_id;
  final String? name;


  @override
  State<DeviceDetailScreen> createState() => _DeviceDetailScreenState();
}

class _DeviceDetailScreenState extends State<DeviceDetailScreen>
    with TickerProviderStateMixin {
  var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      animationDuration: Duration(milliseconds: 150),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titleStyle:
          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
      alertAlignment: Alignment.center,
      titleTextAlign: TextAlign.left);
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(2.5, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _animationController,
    curve: Curves.linear,
  ));
  bool isLoading = false;
  bool isMobile = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildBody(DevicesDetailState state) {
    switch (state.status) {
      case DataStatus.LOADING:
        return Expanded(
          flex: 10,
          child: SkeletonListView(
            itemCount: 1,
            itemBuilder: (context, index) {
              return SkeletonDeviceDetailCard();
            },
          ),
        );
      case DataStatus.COMPLETED:
        return Expanded(
          flex: 10,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF282828),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            child: DevicesDetailCard(state: state, deviceId: widget.deviceId!, announcement_id: widget.announcement_id!, name: widget.name!),
          ),
        );
      case DataStatus.ERROR:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error, color: Colors.red, size: 40),
              SizedBox(
                height: 8,
              ),
              Text("Error..."),
              Container(
                height: 35,
                width: 100,
                margin: EdgeInsets.only(top: 20, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    gradient: LinearGradient(
                        colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: globaldata.greenLetter1,
                    )),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Try again",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.replay, size: 14, color: Colors.black),
                    ],
                  ),
                  onPressed: () {
                    //state.loadData();
                  },
                ),
              ),
            ],
          ),
        );
      case DataStatus.EMPTY:
        return Column(
          children: [
            SizedBox(height: 50),
            Text(
              'No devices available',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        );
    }

    return SizedBox();
  }

  Widget getIconStatus(String status) {
    switch (status) {
      case "Completed":
        return Icon(
          Icons.check_circle,
          color: globaldata.blackBackground1,
        );
      case "Pending":
        return Icon(
          Icons.pending,
          color: globaldata.blackBackground1,
        );
      case "Cancelled":
        return Icon(
          Icons.cancel,
          color: globaldata.blackBackground1,
        );
      case "In Progress":
        return Icon(
          Icons.replay_circle_filled,
          color: globaldata.blackBackground1,
        );
      default:
        return Icon(Icons.hourglass_empty, color: globaldata.blackBackground1);
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
        return globaldata.greenColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: globaldata.blackBackground1,
       // endDrawer: DrawerMenu(),
        body: GestureDetector(
          onTap: () {},
          child: BlocBuilder<DevicesDetailCubit, DevicesDetailState>(
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    color: Colors.black54,
                    // decoration: BoxDecoration(
                    //   color: globaldata.blackBackground1,
                    //   image: DecorationImage(
                    //     image: AssetImage("assets/images/Top.png"),
                    //     alignment: Alignment.topCenter,
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                    //    height: 90,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: Colors.white),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    SlideTransition(
                                      child: Text(
                                        widget.name ?? "",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            fontFamily: globaldata.font),
                                      ),
                                      position: _offsetAnimation,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        (state.status == ResponseState.COMPLETE)
                            ? Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        top: 20, right: 5, left: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {},
                                          child: Chip(
                                            label: Row(
                                              children: [
                                                Text(
                                                    "Activo",
                                                    style: TextStyle(
                                                        color: globaldata
                                                            .blackBackground1,
                                                        fontSize: 12)),
                                                SizedBox(width: 5),
                                                getIconStatus("Activo"),
                                              ],
                                            ),
                                            backgroundColor: getColorStatus(
                                                "Activo"),
                                            side: BorderSide(
                                                color: globaldata
                                                    .blackBackground1),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  _buildBody(state),
                ],
              );
            },
          ),
        ),
        onEndDrawerChanged: (value) {
          if (value) {
            closeKeyboard();
          } else {
            closeKeyboard();
          }
        },
      ),
    );
  }
}
