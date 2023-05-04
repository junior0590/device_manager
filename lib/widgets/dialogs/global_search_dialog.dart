// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
// import 'package:rflutter_alert/rflutter_alert.dart';
// import 'package:provider/provider.dart';
// // import 'package:project/utilities/http_calls/auth_provider.dart';
// import 'package:sticky_headers/sticky_headers/widget.dart';
//
// import '../../utilities/providers/records.dart';
// import '../../utilities/services/entity/modules_records/modules_records.dart';
//
// const dialogButtonLetterStyle = TextStyle(
//   fontFamily: globaldata.font,
//   color: const Color(0xFF10FB06),
//   fontWeight: FontWeight.bold,
//   fontSize: 12,
// );
//
// class GlobalSearchDialog extends StatefulWidget {
//   const GlobalSearchDialog({
//     Key? key,
//     this.currentModule,
//     this.resetRecords,
//     this.screenWidth,
//     this.recordDetail,
//   }) : super(key: key);
//
//   final String? currentModule;
//   final VoidCallback? resetRecords;
//   final double? screenWidth;
//   final VoidCallback? recordDetail;
//
//   @override
//   _GlobalSearchDialogState createState() => _GlobalSearchDialogState();
// }
//
// class _GlobalSearchDialogState extends State<GlobalSearchDialog> {
//   var alertStyle = AlertStyle(
//       backgroundColor: Color(0xFF141414),
//       animationType: AnimationType.fromTop,
//       isCloseButton: false,
//       isOverlayTapDismiss: false,
//       animationDuration: Duration(milliseconds: 150),
//       alertBorder: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       titleStyle: const TextStyle(
//         color: Color.fromRGBO(255, 255, 255, 0.85),
//         fontSize: 16,
//       ),
//       alertAlignment: Alignment.center,
//       titleTextAlign: TextAlign.left);
//   late final recordsProvider = Provider.of<RecordsList>(context, listen: false);
//   bool clickRecord = false;
//   String selectedRecord = '';
//   bool expandDialog = false;
//   Timer? searchTimer;
//   bool loadingRecords = false;
//
//   void cancelSearchTimer() {
//     if (searchTimer != null) {
//       searchTimer!.cancel();
//     }
//   }
//
//   Future<void> searchRecord(String record) async {
//     setState(() {
//       loadingRecords = true;
//     });
//
//     await recordsProvider.globalModuleSearch(record);
//
//     setState(() {
//       loadingRecords = false;
//     });
//   }
//
//   void resetGlobalSearch() {
//     recordsProvider.resetGlobalSearch();
//   }
//
//   void searchWithTimer(String record) async {
//     searchTimer = Timer(Duration(seconds: 3), () async {
//       await searchRecord(record);
//       if(!searchTimer!.isActive) {
//         resetGlobalSearch();
//       }
//     });
//
//     setState(() {
//       loadingRecords = false;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     ModulesRecords? modulesRecords =
//         Provider.of<RecordsList>(context).modulesRecords;
//
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 600),
//       height: expandDialog ? 600 : 95,
//       width: 650,
//       decoration: BoxDecoration(
//         color: Color(0xFF282828),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: Column(
//         children: [
//           Container(
//             height: 95.0,
//             decoration: const BoxDecoration(
//               color: const Color(0xFF141414),
//               borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
//             ),
//             child: Column(
//               mainAxisAlignment: !expandDialog ? MainAxisAlignment.center : MainAxisAlignment.start,
//               children: [
//                 expandDialog ? Center(
//                   child: Container(
//                     child: const Text(
//                       'Global Search',
//                       style: TextStyle(
//                         color: const Color(0xFFEFEFEF),
//                         fontFamily: globaldata.font,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     margin: const EdgeInsets.only(top: 15, bottom: 15),
//                   ),
//                 ) : SizedBox.shrink(),
//                 Container(
//                   height: expandDialog ? 35 : 50,
//                   width: 400,
//                   margin: EdgeInsets.only(left: 10, right: 10),
//                   child: TextField(
//                     onChanged: (String record) async {
//                       cancelSearchTimer();
//                       if (record.length > 2) {
//                         cancelSearchTimer();
//                         await searchRecord(record);
//                       }
//                       else if (record.length < 3) {
//                         setState(() {
//                           loadingRecords = true;
//                         });
//                         cancelSearchTimer();
//                         searchWithTimer(record);
//                       }
//                       else if (record.isEmpty) {
//                         resetGlobalSearch();
//                       }
//
//                       if (record.isEmpty) {
//                         Future.delayed(Duration(seconds: 1), () {
//
//                           cancelSearchTimer();
//                           resetGlobalSearch();
//                           expandDialog = false;
//
//                         });
//                         Future.delayed(Duration(seconds: 2), () {
//
//                           cancelSearchTimer();
//                           resetGlobalSearch();
//                           expandDialog = false;
//
//                         });
//                         expandDialog = false;
//                         setState(() {
//                           loadingRecords = false;
//                         });
//                       }
//                       else {
//                         expandDialog = true;
//                       }
//                     },
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                     cursorColor: globaldata.green2,
//                     decoration: InputDecoration(
//                       hintText: 'Search',
//                       hintStyle: TextStyle(color: Colors.white, fontSize: 14),
//                       labelStyle: TextStyle(color: Colors.white, fontSize: 14),
//                       suffixIcon: Icon(Icons.search, color: globaldata.green2),
//                       contentPadding: EdgeInsets.only(
//                         top: 0,
//                         bottom: 0,
//                         left: 15,
//                         right: 15,
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(50)),
//                         borderSide: const BorderSide(
//                           color: Color(0xFF10FB06),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(50)),
//                         borderSide: const BorderSide(
//                             color: Color(0xFF10FB06), width: 1.0),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           expandDialog
//               ? Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: loadingRecords
//                   ? Center(
//                       child: Image.asset(
//                         'assets/images/animated/spinner.gif',
//                         width: 50,
//                       ),
//                     )
//                   : modulesRecords!.data!.values.isNotEmpty
//                       ? ListView.builder(
//                           itemCount: modulesRecords.data!.entries.length,
//                           itemBuilder: (context, indexHeader) {
//                             return StickyHeader(
//                               header: Container(
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   border: Border(
//                                     bottom: BorderSide(
//                                         color: Color(0xFF141414), width: 2),
//                                   ),
//                                   color: Color(0xFF282828),
//                                 ),
//                                 child: Text(
//                                   modulesRecords.data!.keys
//                                       .elementAt(indexHeader)
//                                       .toUpperCase(),
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14,
//                                     color: Color(0xFFEFEFEF),
//                                   ),
//                                 ),
//                                 padding: EdgeInsets.symmetric(vertical: 10.0),
//                               ),
//                               content: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   ...modulesRecords.data!.values
//                                       .elementAt(indexHeader)
//                                       .map((record) {
//                                     return GestureDetector(
//                                       onTap: () async {
//                                         setState(() {
//                                           clickRecord = true;
//                                           selectedRecord = record.record_name!;
//                                         });
//
//                                         await Future.delayed(
//                                           Duration(milliseconds: 200),
//                                           () {},
//                                         );
//
//                                         setState(() {
//                                           clickRecord = false;
//                                           selectedRecord = '';
//                                         });
//
//                                         globaldata.recID =
//                                             record.record_id.toString();
//                                         globaldata.currentModule =
//                                             modulesRecords.data!.keys
//                                                 .elementAt(indexHeader);
//                                         globaldata.mobilePhone = "";
//                                         globaldata.homePhone = "";
//                                         globaldata.email = "";
//                                         widget.recordDetail!();
//                                         resetGlobalSearch();
//                                       },
//                                       child: AnimatedContainer(
//                                         width: double.infinity,
//                                         duration: Duration(milliseconds: 200),
//                                         padding: EdgeInsets.symmetric(
//                                             vertical: 5.0, horizontal: 5.0),
//                                         decoration: BoxDecoration(
//                                           color: clickRecord &&
//                                                   selectedRecord ==
//                                                       record.record_name!
//                                               ? Color(0xFF141414)
//                                               : Colors.transparent,
//                                           border: Border(
//                                             bottom: BorderSide(
//                                               color: Color(0xFF141414),
//                                             ),
//                                           ),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               vertical: 5.0),
//                                           child: Align(
//                                             alignment: Alignment.centerLeft,
//                                             child: record.record_name != null
//                                                 ? Text(
//                                                     record.record_name!.length >
//                                                             40
//                                                         ? record.record_name!.substring(
//                                                                 0,
//                                                                 record.record_name!
//                                                                         .length -
//                                                                     5) +
//                                                             '...'
//                                                         : record.record_name!,
//                                                     style: TextStyle(
//                                                         color:
//                                                             Color(0xFFEFEFEF),
//                                                         fontSize: 14),
//                                                   )
//                                                 : Text('-'),
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   }).toList()
//                                 ],
//                               ),
//                             );
//                           },
//                         )
//                       : Center(
//                           child: Text(
//                             'No records',
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: const Color(0xFFEFEFEF),
//                               fontFamily: globaldata.font,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//             ),
//           )
//               : SizedBox.shrink(),
//           expandDialog
//               ? Container(
//             height: 50.0,
//             decoration: const BoxDecoration(
//               color: const Color(0xFF141414),
//               borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.0)),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     resetGlobalSearch();
//                     cancelSearchTimer();
//                     Navigator.of(context).pop();
//                   },
//                   child: const Text(
//                     'CANCEL',
//                     style: dialogButtonLetterStyle,
//                   ),
//                 ),
//               ],
//             ),
//           )
//               : SizedBox.shrink()
//         ],
//       ),
//     );
//   }
// }
