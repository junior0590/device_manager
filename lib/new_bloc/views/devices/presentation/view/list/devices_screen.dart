import 'dart:async';
import 'dart:ui' as ui;
import 'package:animated_digit/animated_digit.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:project/new_bloc/core/utils/extensions/constants.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_cubit.dart';
import 'package:project/new_bloc/views/devices/presentation/view/list/desktop/widgets/devices_list_tile_desktop.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'widgets/skeleton_task_card.dart';
import 'widgets/devices_list_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class DevicesScreen extends StatelessWidget {
  DevicesScreen({Key? key}) : super(key: key);

  double screenSize = 450;
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

  bool isLoading = false;
  bool isMobile = true;
  String seletedStatus = "All Status";
  String seletedUsers = "All Users";
  bool showText = false;

  Widget _buildBody(DevicesState state, BuildContext context) {
    switch (state.status) {
      case DataStatus.LOADING:
        return Expanded(
          flex: 10,
          child: Center()
        );
      case DataStatus.COMPLETED:
        return Expanded(
          flex: 10,
          child: RefreshIndicator(
            child: screenSize > 530?DevicesListTileDesktop(state: state): DevicesListTile(state: state),
            onRefresh: () async {
              context.read<DevicesCubit>().fetchDevices();
            },
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
                    // model.loadData();
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
              'No hay dispositivos disponibles',
              style: TextStyle(color: Colors.white),
            ),
          ],
        );
      case DataStatus.INITIAL:
        Text(
          "Initial",
          style: TextStyle(color: globaldata.greenColor),
        );
    }
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;
    context.read<DevicesCubit>().fetchDevices();
    return SafeArea(
      child: Scaffold(
        backgroundColor: globaldata.blackBackground1,
       // endDrawer: DrawerMenu(),
        body: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: globaldata.blackBackground1,
                ),
                //    height: 90,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Icon(Icons.arrow_back_ios_new,
                                color: globaldata.whiteLetters),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Row(
                                children: [
                                  Text(
                                    "Dispositivos ("+ context.read<DevicesCubit>().devicesCopy.length.toString()+")",
                                    style: TextStyle(
                                        color: globaldata.whiteLetters2,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: globaldata.font),
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              BlocBuilder<DevicesCubit, DevicesState>(
                builder: (context, state) {
                  return _buildBody(state, context);
                },
              ),
            ],
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
