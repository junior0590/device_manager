// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class ErrorDetail extends StatelessWidget
{ ErrorDetail({Key? key, this.details}) : super(key: key);

FlutterErrorDetails? details;

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(builder: (context, setState) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  child: Container(
                    height: 600.0,
                    width: 550.0,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF282828),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text("Error Detail", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: globaldata.whiteLetters)),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/images/Hytech-Glitch.png', fit: BoxFit.fill),
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.all(5),
                            shrinkWrap: true,
                            children: [
                              ExpansionTile(
                                title: Text(this.details!.exception.toString()),
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Text("StackTrace", style: TextStyle(color: globaldata.greenColor)),
                                  SizedBox(height: 10),
                                  Text(this.details!.stack.toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: TextButton(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: globaldata.greenColor, fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: TextButton(
                                  child: Text(
                                    "Report this error",
                                    style: TextStyle(color: globaldata.greenColor, fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              child: Image.asset('assets/images/Hytech-Glitch.png', fit: BoxFit.fill),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('Oops! Something went wrong',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Text("(Tap to more detail)", style: TextStyle(fontSize: 12, color: globaldata.whiteLetters)),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
}
