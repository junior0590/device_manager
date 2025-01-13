
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/new_bloc/core/utils/extensions/constants.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/bloc/notifications_center_cubit.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/view/list/widgets/notifications_card.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/services/entity/notifications/notification_field.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:toggle_switch/toggle_switch.dart';


// ignore: must_be_immutable
class NotificationScreen extends StatelessWidget {
   NotificationScreen({
    Key? key,
  }) : super(key: key);

   bool isPersonal = true;
   int countPersonal = 0;
   int countGroup = 0;
   int selectIndex = 0;
   bool animateEnabled = false;

  Widget getNotificationRecords(NotificationsCenterState state, BuildContext context) {
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
            child: NotificationsCard(state: state, isPersonal: isPersonal, context: context,),
            onRefresh: () async {
              context.read<NotificationsCenterCubit>().fetchNotificationsCenter();
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
              'No notifications available',
              style: Theme.of(context).textTheme.headlineSmall,
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

  void sendNotificationScreen(NotificationField nfield) {
    globaldata.sendToNotification = false;
    if (nfield.notification_type == "public_mention" || nfield.notification_type == "private_mention"
        || nfield.notification_type == "private_group_mention" || nfield.notification_type == "public_group_mention"
        || nfield.notification_type == "note_like" || nfield.notification_type == "private_note_like") {
      globaldata.recID = nfield.record_id.toString();
      globaldata.currentModule = nfield.module.toString();
      globaldata.initialIndexRecord = 1;
    //  Navigator.push( globaldata.mainContext, MaterialPageRoute(builder: (BuildContext context) => ModuleDetail()));
    }  else if (nfield.notification_type == "chat") {

    } else if (nfield.notification_type == "record_created" || nfield.notification_type == "record_assigned"
        || nfield.notification_type == "meeting_assigned" || nfield.notification_type == "record_shared"
        || nfield.notification_type == "record_updated") {
      // Navigator.push(
      //     globaldata.mainContext,
      //     MaterialPageRoute(
      //         builder: (BuildContext context) => ModuleDetail()));
    }
  }

  Icon getIconNotification(NotificationField nfield) {
    if (nfield.notification_type == "records") {
      return Icon(
        Icons.description,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.notification_type == "notes") {
      return Icon(
        Icons.notes,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.notification_type == "private-notes") {
      return Icon(
        Icons.security,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.owner_type == "attachments") {
      return Icon(
        Icons.attach_file,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.notification_type == "chat") {
      return Icon(
        Icons.chat,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else {
      return Icon(
        Icons.person,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    }
  }

  var alertYesyOrNotStyle = AlertStyle(
    backgroundColor: Color(0xFF141414),
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    isButtonVisible: false,
    animationDuration: Duration(milliseconds: 150),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    titleStyle:
    TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
    alertAlignment: Alignment.center,
    titleTextAlign: TextAlign.left,
  );

  Future<bool> _openPopupYesOrNot(String message) async {
    bool select = false;
    return Alert(
      context: globaldata.mainContext,
      style: alertYesyOrNotStyle,
      title: "",
      type: AlertType.info,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 250,
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    message,
                    style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(globaldata.greenColor),
                    alignment: Alignment.bottomRight),
                child: Text(
                  'Yes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                onPressed: () async {
                  select = true;
                  //Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(globaldata.greenColor),
                    alignment: Alignment.bottomRight),
                child: Text(
                  'No',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                onPressed: () async {
                  select = false;

                 // Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    ).show().then((value) {
      return select;
    });
  }


  @override
  Widget build(BuildContext context) {
    context.read<NotificationsCenterCubit>().fetchNotificationsCenter();
    return SafeArea(
      child: WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                height: 100,
                //margin: EdgeInsets.only(bottom: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: Image.asset('assets/images/top-detail.png').image,
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, icon: Icon(Icons.arrow_back_ios, color: globaldata.blackBackground2,)),
                            Icon(
                              Icons.notifications,
                              size: 24,
                              color: Color(0xFF043301),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Notifications',
                              style: TextStyle(
                                  decoration: TextDecoration.none, fontFamily: 'Chivo', fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF043301)),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 5.0, left: 10),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      top: 65,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            BlocConsumer<NotificationsCenterCubit, NotificationsCenterState>(
                              builder: (BuildContext context, state) {
                                countPersonal = state.notifications!.single_notifications!.length;
                                countGroup = state.notifications!.group_notifications!.length;
                                return ToggleSwitch(
                                  borderColor: [globaldata.blackBackground2],
                                  borderWidth: 1,
                                  minWidth: 140.0,
                                  initialLabelIndex: selectIndex,
                                  cornerRadius: 10.0,
                                  minHeight: 35,
                                  animate: true,
                                  animationDuration: 300,
                                  activeFgColor: globaldata.blackBackground2,
                                  inactiveBgColor: Colors.grey,
                                  inactiveFgColor: Colors.white,
                                  totalSwitches: 2,
                                  labels: ['Personal ('+countPersonal.toString()+')', 'Group ('+countGroup.toString()+')'],
                                  icons: [Icons.person, Icons.group],
                                  activeBgColors: [[globaldata.greenColor],[globaldata.greenColor]],
                                  onToggle: (index) {
                                    isPersonal = index == 0;
                                    selectIndex = index!;
                                    context.read<NotificationsCenterCubit>().changeView();
                                  },
                                );
                              },
                              listener: (BuildContext context, Object? state) {  },
                            ),
                            SizedBox(width: 10),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Center()
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BlocBuilder<NotificationsCenterCubit, NotificationsCenterState>(
                builder: (context, state) {
                 // animateEnabled = false;
                  return getNotificationRecords(state, context);
                },
              ),
            ],
          ),
        ),
        onWillPop: () async {
          return false;
        },
      ),
    );
  }
}

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<NotificationScreen> with TickerProviderStateMixin{
//   List<NotificationField> listNotification = [];
//   List<Widget> cards = [];
//   bool viewAll = true;
//   late final NotificationAppLaunchDetails? notificationAppLaunchDetails;
//
//   @override
//   void initState() {
//     super.initState();
//     listNotification = globaldata.noti;
//     globaldata.sendToNotification = false;
//     updateBadgeApp();
//     context.read<NotificationsCenterCubit>().fetchNotificationsCenter();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   Widget getNotificationRecords(NotificationsCenterState state, BuildContext context) {
//     switch (state.status) {
//       case DataStatus.LOADING:
//         return Expanded(
//           flex: 10,
//           child: SkeletonListView(
//             itemCount: 12,
//             itemBuilder: (context, index) {
//               return SkeletonNotificationsCenterCard();
//             },
//           ),
//         );
//       case DataStatus.COMPLETED:
//         return Expanded(
//           flex: 10,
//           child: RefreshIndicator(
//             child: NotificationsCard(state: state),
//             onRefresh: () async {
//               context.read<NotificationsCenterCubit>().fetchNotificationsCenter();
//             },
//           ),
//         );
//       case DataStatus.ERROR:
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.error, color: Colors.red, size: 40),
//               SizedBox(
//                 height: 8,
//               ),
//               Text("Error..."),
//               Container(
//                 height: 35,
//                 width: 100,
//                 margin: EdgeInsets.only(top: 20, right: 10, bottom: 10),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(60),
//                     gradient: LinearGradient(
//                         colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
//                     shape: BoxShape.rectangle,
//                     border: Border.all(
//                       color: globaldata.greenLetter1,
//                     )),
//                 child: TextButton(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Try again",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       SizedBox(width: 5),
//                       Icon(Icons.replay, size: 14, color: Colors.black),
//                     ],
//                   ),
//                   onPressed: () {
//                     // model.loadData();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       case DataStatus.EMPTY:
//         return Column(
//           children: [
//             SizedBox(height: 50),
//             Text(
//               'No notifications available',
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           ],
//         );
//       case DataStatus.INITIAL:
//         Text(
//           "Initial",
//           style: TextStyle(color: globaldata.greenColor),
//         );
//     }
//     return SizedBox();
//   }
//
//   void sendNotificationScreen(NotificationField nfield) {
//     globaldata.sendToNotification = false;
//     if (nfield.notification_type == "public_mention" || nfield.notification_type == "private_mention"
//         || nfield.notification_type == "private_group_mention" || nfield.notification_type == "public_group_mention"
//         || nfield.notification_type == "note_like" || nfield.notification_type == "private_note_like") {
//       globaldata.recID = nfield.record_id.toString();
//       globaldata.currentModule = nfield.module.toString();
//       globaldata.initialIndexRecord = 1;
//       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ModuleDetail()));
//     }  else if (nfield.notification_type == "chat") {
//       // Navigator.push(
//       //     context,
//       //     MaterialPageRoute(
//       //         builder: (BuildContext context) => ContactsScreen()));
//     } else if (nfield.notification_type == "record_created" || nfield.notification_type == "record_assigned"
//         || nfield.notification_type == "meeting_assigned" || nfield.notification_type == "record_shared"
//         || nfield.notification_type == "record_updated") {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => ModuleDetail()));
//     }
//   }
//
//   Icon getIconNotification(NotificationField nfield) {
//     if (nfield.notification_type == "records") {
//       return Icon(
//         Icons.description,
//         size: 30,
//         color: Color(0xFFB7B7B7),
//       );
//     } else if (nfield.notification_type == "notes") {
//       return Icon(
//         Icons.notes,
//         size: 30,
//         color: Color(0xFFB7B7B7),
//       );
//     } else if (nfield.notification_type == "private-notes") {
//       return Icon(
//         Icons.security,
//         size: 30,
//         color: Color(0xFFB7B7B7),
//       );
//     } else if (nfield.owner_type == "attachments") {
//       return Icon(
//         Icons.attach_file,
//         size: 30,
//         color: Color(0xFFB7B7B7),
//       );
//     } else if (nfield.notification_type == "chat") {
//       return Icon(
//         Icons.chat,
//         size: 30,
//         color: Color(0xFFB7B7B7),
//       );
//     } else {
//       return Icon(
//         Icons.person,
//         size: 30,
//         color: Color(0xFFB7B7B7),
//       );
//     }
//   }
//
//   var alertYesyOrNotStyle = AlertStyle(
//     backgroundColor: Color(0xFF141414),
//     animationType: AnimationType.fromTop,
//     isCloseButton: false,
//     isOverlayTapDismiss: false,
//     isButtonVisible: false,
//     animationDuration: Duration(milliseconds: 150),
//     alertBorder: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//     ),
//     titleStyle:
//     TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
//     alertAlignment: Alignment.center,
//     titleTextAlign: TextAlign.left,
//   );
//
//   Future<bool> _openPopupYesOrNot(String message) async {
//     bool select = false;
//     return Alert(
//       context: context,
//       style: alertYesyOrNotStyle,
//       title: "",
//       type: AlertType.info,
//       content: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             width: 250,
//             height: 50,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Text(
//                     message,
//                     style: TextStyle(
//                         color: Color(0xFFB7B7B7),
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               TextButton(
//                 style: ButtonStyle(
//                     foregroundColor:
//                     MaterialStateProperty.all(globaldata.greenColor),
//                     alignment: Alignment.bottomRight),
//                 child: Text(
//                   'Yes',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
//                 ),
//                 onPressed: () async {
//                   select = true;
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                 style: ButtonStyle(
//                     foregroundColor:
//                     MaterialStateProperty.all(globaldata.greenColor),
//                     alignment: Alignment.bottomRight),
//                 child: Text(
//                   'No',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
//                 ),
//                 onPressed: () async {
//                   setState(() {
//                     select = false;
//                   });
//
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     ).show().then((value) {
//       return select;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: WillPopScope(
//         child: Scaffold(
//           backgroundColor: Colors.black,
//           body: Column(
//             children: [
//               Container(
//                 height: 160,
//                 margin: EdgeInsets.only(bottom: 10),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                     image: DecorationImage(
//                         image: Image.asset('assets/images/top-detail.png').image,
//                         alignment: Alignment.topCenter,
//                         fit: BoxFit.fitWidth)),
//                 child: Stack(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(bottom: 50.0),
//                       child: Container(
//                         child: Row(
//                           children: [
//                             IconButton(onPressed: (){
//                               Navigator.of(context).pop();
//                             }, icon: Icon(Icons.arrow_back_ios, color: globaldata.blackBackground2,)),
//                             Icon(
//                               Icons.notifications,
//                               size: 24,
//                               color: Color(0xFF043301),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               'Notifications',
//                               style: TextStyle(
//                                   decoration: TextDecoration.none, fontFamily: 'Chivo', fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF043301)),
//                             ),
//                           ],
//                         ),
//                         margin: EdgeInsets.only(top: 20.0, left: 10),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 0,
//                       child: Opacity(
//                         opacity: 0.9,
//                         child: Container(
//                           padding: EdgeInsets.all(5.0),
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 70.0,
//                                 height: 40.0,
//                                 margin: EdgeInsets.all(5.0),
//                                 decoration: BoxDecoration(
//                                     gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
//                                     borderRadius: BorderRadius.circular(60),
//                                     border: Border.all(width: 2, color: Colors.black),
//                                     boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
//                                 child: TextButton(
//                                   onPressed: () {
//
//                                   },
//                                   child: Icon(
//                                     Icons.home,
//                                     color: Color(0xFF043301),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 100.0,
//                                 height: 40.0,
//                                 margin: EdgeInsets.all(5.0),
//                                 decoration: BoxDecoration(
//                                     gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
//                                     borderRadius: BorderRadius.circular(60),
//                                     border: Border.all(width: 2, color: viewAll ? Color(0xFFB7B7B7) : Colors.black),
//                                     boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
//                                 child: TextButton(
//                                   onPressed: () => {
//                                     setState(() {
//                                       viewAll = true;
//                                     })
//                                   },
//                                   child: Text(
//                                     'View All',
//                                     style: TextStyle(
//                                       color: Color(0xFF043301),
//                                       fontSize: 12.0,
//                                       fontWeight: FontWeight.bold,
//                                       fontFamily: 'Chivo',
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Opacity(
//                                 opacity: 0.9,
//                                 child: Stack(
//                                   children: [
//                                     Container(
//                                       width: 110.0,
//                                       height: 40.0,
//                                       margin: EdgeInsets.all(5.0),
//                                       padding: EdgeInsets.all(3.0),
//                                       decoration: BoxDecoration(
//                                           gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
//                                           border: Border.all(width: 2, color: viewAll ? Colors.black : Color(0xFFB7B7B7)),
//                                           borderRadius: BorderRadius.circular(60),
//                                           boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
//                                       child: TextButton(
//                                         onPressed: () => {
//                                           setState(() {
//                                             viewAll = false;
//                                           })
//                                         },
//                                         child: Text(
//                                           'View Unread',
//                                           style: TextStyle(
//                                             color: Color(0xFF043301),
//                                             fontSize: 12.0,
//                                             fontWeight: FontWeight.bold,
//                                             fontFamily: 'Chivo',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(left: 60),
//                                       child: IconBadge(
//                                         icon: Icon(
//                                           Icons.notifications,
//                                           color: Colors.transparent,
//                                         ),
//                                         itemCount:
//                                         Provider.of<Notifications>(context).allNotifications!.where((element) => element.isRead == false).toList().length,
//                                         badgeColor: Colors.red,
//                                         itemColor: globaldata.whiteLetters,
//                                         hideZero: true,
//                                         onTap: () {},
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Opacity(
//                                 opacity: 0.9,
//                                 child: Container(
//                                     decoration:
//                                     BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)])),
//                                     height: 35,
//                                     width: 35,
//                                     margin: EdgeInsets.all(2.0),
//                                     child: PopupMenuButton(
//                                       color: Color(0xFF141414),
//                                       icon: Icon(
//                                         Icons.more_vert,
//                                         color: globaldata.greenLetter1,
//                                         size: 16.0,
//                                       ),
//                                       shape: new RoundedRectangleBorder(
//                                         borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
//                                       ),
//                                       itemBuilder: (BuildContext contextMenu) => <PopupMenuEntry>[
//                                         PopupMenuItem(
//                                           padding: EdgeInsets.only(left: 25),
//                                           onTap: () {
//                                             Provider.of<Notifications>(context, listen: false).markReadAllNotification();
//                                           },
//                                           child: Text(
//                                             "Mark all as read",
//                                             style: TextStyle(color: globaldata.greenColor),
//                                           ),
//                                         ),
//                                         PopupMenuItem(
//                                           padding: EdgeInsets.only(left: 25),
//                                           onTap: () async {
//                                             //print("tab");
//                                             //bool result = await _openPopupYesOrNot("sure you want to delete all notifications?");
//
//                                             //if(result){
//                                             Provider.of<Notifications>(context, listen: false).removeAllNotification();
//                                             //}
//
//                                           },
//                                           child: Text(
//                                             "Delete all",
//                                             style: TextStyle(color: globaldata.greenColor),
//                                           ),
//                                         ),
//                                       ],
//                                     )),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               BlocBuilder<NotificationsCenterCubit, NotificationsCenterState>(
//                 builder: (context, state) {
//                   return getNotificationRecords(state, context);
//                 },
//               ),
//             ],
//           ),
//         ),
//         onWillPop: () async {
//           return false;
//         },
//       ),
//     );
//   }
// }
