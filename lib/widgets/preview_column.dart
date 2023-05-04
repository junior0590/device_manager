import 'package:flutter/material.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/services/entity/records/records.dart';

class ColumnPreview extends StatefulWidget {

  const ColumnPreview({Key? key, this.visibleColumns, this.screenWidth}) : super(key: key);

  final List<ColumnObject>? visibleColumns;
  final double? screenWidth;

  @override
  _ColumnPreviewState createState() => _ColumnPreviewState();
}

class _ColumnPreviewState extends State<ColumnPreview> {

  List<Widget> fullRecords = [];
  List<Color> recordStateColor = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
    Colors.white,
    Colors.teal,
    Colors.orange
  ];

  Color randomColor() {

    //recordStateColor.shuffle();

    return Color(0xFFEFEFEF);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  orderRecordColumnsByScreenWidth(visibleColumns) {

    if(widget.screenWidth! > 415) {

      return getVisibleColumnsOfRecordIpad(visibleColumns);

    }

    if(widget.screenWidth! < 416) {

      return getVisibleColumnsOfRecordPhone(visibleColumns);

    }

  }

  getVisibleColumnsOfRecordIpad(visibleColumns) {

    fullRecords = [
      Container(
        height: 50.0,
        width: 50.0,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF10FB06),
                    Color(0XFF0DC005)
                  ]
              ),
              shape: BoxShape.circle
          ),
          child: Center(
              child: Text('A' + 'B',
                style: TextStyle(
                    color: globaldata.greenLetter2,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
          ),
        ),
      ),
      SizedBox(width: 30)
    ];

    for (var column = 0; column < visibleColumns.length; column = column + 2) {

      var plusColumn = column + 1;

      fullRecords.addAll(

          [
            Expanded(
              flex: 1,
              child: Column(
                children:

                [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(visibleColumns[column].label.toString().toUpperCase(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Chivo"
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  plusColumn == visibleColumns.length ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text("",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Chivo"
                      ),
                    ),
                  ) : Align(
                    alignment: Alignment.centerLeft,
                    child: Text(visibleColumns[column + 1].label.toString().toUpperCase(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Chivo"
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox( width: 30)
          ]
      );
    }

    return fullRecords;

  }

  getVisibleColumnsOfRecordPhone(visibleColumns) {

    fullRecords = [
      Container(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF10FB06),
                    Color(0XFF0DC005)
                  ]
              ),
              shape: BoxShape.circle
          ),
          child: Center(
              child: Text('A' + 'B',
                style: TextStyle(
                    color: globaldata.greenLetter2,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
          ),
        ),
      ),
      SizedBox(width: 30)
    ];

    for (var column = 0; column < 4; column = column + 2) {

      var plusColumn = column + 1;

      fullRecords.addAll(

          [
            Expanded(
              flex: 1,
              child: Column(
                children:

                [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(visibleColumns[column].label.toString().toUpperCase(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Chivo"
                      ),
                    ),
                  ),

                  SizedBox(height: 5.0),

                  plusColumn == visibleColumns.length ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text("",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Chivo"
                      ),
                    ),
                  ) : Align(
                    alignment: Alignment.centerLeft,
                    child: Text(visibleColumns[column + 1].label.toString().toUpperCase(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Chivo"
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox( width: 30)
          ]
      );
    }

    return fullRecords;

  }

  @override
  Widget build(BuildContext context) {

    return Card(
      color: globaldata.blackBackground1,
      child: Container(
        height: 75,
        margin: EdgeInsets.only(left: 30, right: 30),
        padding: widget.screenWidth! > 450 ? EdgeInsets.all(10) : EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: globaldata.blackBackground1,
            shape: BoxShape.rectangle,
            border: Border(
              bottom: BorderSide(
                  width: 1,
                  color: globaldata.blackRecordBottomBorder
              ),
              left: BorderSide(
                  width: 6, color: randomColor()),
            )),
        child: Row(
          children: [
            ...orderRecordColumnsByScreenWidth(widget.visibleColumns),
          ],
        ),
      ),
    );
  }
}

