import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;


class FilterBottomSheetTasks extends StatefulWidget {
  const FilterBottomSheetTasks({Key? key, this.module}) : super(key: key);

  final String? module;

  @override
  State<FilterBottomSheetTasks> createState() => _FilterBottomSheetTasksState();
}

class _FilterBottomSheetTasksState extends State<FilterBottomSheetTasks> {
  var alertStyle = AlertStyle(
      backgroundColor: Color(0xFF141414),
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      animationDuration: Duration(milliseconds: 150),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titleStyle: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.85),
        fontSize: 16,
      ),
      alertAlignment: Alignment.center,
      titleTextAlign: TextAlign.left);
  bool clickRecord = false;
  Timer? searchTimer;
  bool loadingRecords = false;
  final dialogButtonLetterStyle = TextStyle(
    fontFamily: globaldata.font,
    color: const Color(0xFF10FB06),
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );
  Timer? searchOnStoppedTyping;
  int? _moduleIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.95,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: const Color(0xFF141414),
        ),
        child: Column(
          children: [
            Divider(
              color: Colors.white,
              endIndent: 160,
              indent: 160,
              thickness: 4,
            ),
            Container(
              height: 80.0,
              decoration: const BoxDecoration(
                color: const Color(0xFF141414),
                borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: const Text(
                        'Filters',
                        style: TextStyle(
                          color: const Color(0xFFEFEFEF),
                          fontFamily: globaldata.font,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: globaldata.blackBackground1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Assigned To:"),
                          SizedBox(width: 10),
                          Chip(label: Text("Mauricio Jimenez"), deleteIcon: Icon(Icons.close), deleteIconColor: globaldata.whiteLetters, onDeleted: () {

                          },),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: globaldata.blackBackground1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Status:"),
                          SizedBox(width: 10),
                          Chip(label: Text("Completed", style: TextStyle(color: globaldata.greenColor)), deleteIcon: Icon(Icons.close), deleteIconColor: globaldata.whiteLetters, onDeleted: () {

                          },),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Chip(label: Row(
                        children: [
                          Text("Clear All Filters", style: TextStyle(color: globaldata.blackBackground1)),
                          SizedBox(width: 5),
                          Icon(Icons.clear_all, color: globaldata.blackBackground2, size: 24),
                        ],
                      ),
                        backgroundColor: globaldata.greenColor, side: BorderSide(color: globaldata.blackBackground1),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
