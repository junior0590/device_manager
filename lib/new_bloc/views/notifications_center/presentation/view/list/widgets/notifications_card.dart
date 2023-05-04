import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/group_notifications_dto.dart';
import 'package:project/new_bloc/views/notifications_center/domain/entities/single_notifications_dto.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/bloc/notifications_center_cubit.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:project/new_bloc/core/helpers/globaldata.dart' as globaldata;

// ignore: must_be_immutable
class NotificationsCard extends StatelessWidget {
  NotificationsCard({
    Key? key, required this.state, required this.isPersonal, required this.context
  }) : super(key: key);

  final NotificationsCenterState state;
  final bool isPersonal;
  final BuildContext context;
  List<Widget> cards = [];
  String finalMessage = "";

  void sendNotificationScreen(SingleNotificationsDto nfield) {
    globaldata.sendToNotification = false;
    if (nfield.type == "public_mention" || nfield.type == "private_mention"
        || nfield.type == "private_group_mention" || nfield.type == "public_group_mention"
        || nfield.type == "note_like" || nfield.type == "private_note_like") {
      globaldata.recID = nfield.record_id.toString();
      globaldata.currentModule = nfield.module_slug.toString();
      globaldata.initialIndexRecord = 1;
     // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ModuleDetail()));
    }  else if (nfield.type == "chat") {
    } else if (nfield.type == "record_created" || nfield.type == "record_assigned"
        || nfield.type == "meeting_assigned" || nfield.type == "record_shared"
        || nfield.type == "record_updated") {
      globaldata.recID = nfield.record_id.toString();
      globaldata.currentModule = nfield.module_slug.toString();
      globaldata.initialIndexRecord = 0;
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (BuildContext context) => ModuleDetail()));
    }
  }

  Icon getIconNotification(SingleNotificationsDto nfield) {
    if (nfield.type == "record_shared") {
      return Icon(
        Icons.assignment_sharp,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "notes") {
      return Icon(
        Icons.notes,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "private-notes") {
      return Icon(
        Icons.security,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "attachments") {
      return Icon(
        Icons.attach_file,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "chat") {
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

  void sendNotificationScreenGroup(GroupNotificationsDto nfield) {
    globaldata.sendToNotification = false;
    if (nfield.type == "public_mention" || nfield.type == "private_mention"
        || nfield.type == "private_group_mention" || nfield.type == "public_group_mention"
        || nfield.type == "note_like" || nfield.type == "private_note_like") {
      globaldata.recID = nfield.record_id.toString();
      globaldata.currentModule = nfield.module_slug.toString();
      globaldata.initialIndexRecord = 1;
      //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ModuleDetail()));
    }  else if (nfield.type == "chat") {

    } else if (nfield.type == "record_created" || nfield.type == "record_assigned"
        || nfield.type == "meeting_assigned" || nfield.type == "record_shared"
        || nfield.type == "record_updated") {
      globaldata.recID = nfield.record_id.toString();
      globaldata.currentModule = nfield.module_slug.toString();
      globaldata.initialIndexRecord = 0;
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (BuildContext context) => ModuleDetail()));
    }
  }

  Icon getIconNotificationGroup(GroupNotificationsDto nfield) {
    if (nfield.type == "records") {
      return Icon(
        Icons.description,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "notes") {
      return Icon(
        Icons.notes,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "private-notes") {
      return Icon(
        Icons.security,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "attachments") {
      return Icon(
        Icons.attach_file,
        size: 30,
        color: Color(0xFFB7B7B7),
      );
    } else if (nfield.type == "chat") {
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

 String getFormatMessage(SingleNotificationsDto nfield){
    finalMessage = nfield.message!;
   if (nfield.type == "public_mention" || nfield.type == "private_mention"
       || nfield.type == "private_group_mention" || nfield.type == "public_group_mention"
       || nfield.type == "note_like" || nfield.type == "private_note_like") {

     finalMessage = nfield.name!+" "+nfield.message!;

   }  else if (nfield.type == "record_created" || nfield.type == "record_assigned"
       || nfield.type == "meeting_assigned" || nfield.type == "record_shared"
       || nfield.type == "record_updated") {
     finalMessage = nfield.name!+" "+nfield.message!;
   }

   return finalMessage;
 }

 String getFormatMessageGroup(GroupNotificationsDto nfield){
    finalMessage = nfield.message!;
    if (nfield.type == "public_mention" || nfield.type == "private_mention"
        || nfield.type == "private_group_mention" || nfield.type == "public_group_mention"
        || nfield.type == "note_like" || nfield.type == "private_note_like") {

      finalMessage = nfield.name!+" "+nfield.message!;

    }  else if (nfield.type == "record_created" || nfield.type == "record_assigned"
        || nfield.type == "meeting_assigned" || nfield.type == "record_shared"
        || nfield.type == "record_updated") {
      finalMessage = nfield.name!+" "+nfield.message!;
    }

    return finalMessage;
  }

  @override
  Widget build(BuildContext context) {
    cards = [];
    String dateList = "";
    String currentDateList = "";
    bool addTitle = true;
    int count = 0;

    if(this.isPersonal){
      if (this.state.notifications!.single_notifications!.length > 0) {
        this.state.notifications!.single_notifications!.forEach((element) {
          currentDateList = globaldata.formatDate.format(DateTime.parse(element!.timestamp.toString()));
          if (currentDateList == dateList) {
            addTitle = false;
          } else {
            addTitle = true;
            dateList = currentDateList;
          }
          cards.add(
            Dismissible(
              background: Card(
                color: globaldata.greenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Color(0xFF141414), width: 1),
                ),
                margin: EdgeInsets.only(bottom: 10),),
              onDismissed: (direction) {
                        context.read<NotificationsCenterCubit>().markRead(element.notification_id.toString());
                        updateBadgeApp();
              },
              key: ValueKey(element.notification_id.toString()),
              child: AnimationConfiguration.staggeredList(
                position: count,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  horizontalOffset: 40,
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     addTitle
                        //         ? Container(
                        //       margin: EdgeInsets.only(left: 20, top: 10, bottom: 5),
                        //       child: Text(
                        //         globaldata.formatNotiList.format(DateTime.parse(element.timestamp.toString())),
                        //         style: TextStyle(color: globaldata.greenColor, fontSize: 12, fontWeight: FontWeight.bold),
                        //       ),
                        //     )
                        //         : Container(),
                        //   ],
                        // ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Color(0xFF141414), width: 1),
                          ),
                          color: Color(0xFF141414),
                          margin: EdgeInsets.only(bottom: 10),
                          child: GestureDetector(
                            onTap: () {
                              //element.isRead = true;
                              updateBadgeApp();
                            },
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  child: ListTile(
                                    onTap: () {
                                      // element.isRead = true;
                                      updateBadgeApp();
                                      sendNotificationScreen(element);
                                    },
                                    leading: getIconNotification(element),
                                    title: Row(
                                      children: [
                                        Expanded(
                                          flex: 9,
                                          child: GestureDetector(
                                            onTap: () {
                                              //element.isRead = true;
                                              updateBadgeApp();
                                              sendNotificationScreen(element);
                                            },
                                            child: Column(
                                              children: [
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child: Text(
                                                        getFormatMessage(element),
                                                          style: TextStyle(
                                                              color: Color(0xFFB7B7B7),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text(
                                                      globaldata.formatNotiList.format(DateTime.parse(element.timestamp.toString())),
                                                      style: TextStyle(
                                                        color: globaldata.greenColor,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // trailing: PopupMenuButton(
                                    //   color: Color(0xFF141414),
                                    //   icon: Icon(
                                    //     Icons.more_vert,
                                    //     color: globaldata.whiteLetters2,
                                    //     size: 18.0,
                                    //   ),
                                    //   shape: new RoundedRectangleBorder(
                                    //     borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                                    //   ),
                                    //   itemBuilder: (BuildContext contextMenu) => <PopupMenuEntry>[
                                    //     PopupMenuItem(
                                    //       padding: EdgeInsets.only(left: 25),
                                    //       onTap: () {
                                    //         context.read<NotificationsCenterCubit>().markRead(element.notification_id.toString());
                                    //         //  element.isRead = true;
                                    //         updateBadgeApp();
                                    //       },
                                    //       child: Text(
                                    //         "Mark as read",
                                    //         style: TextStyle(color: globaldata.greenColor),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
          count++;
        });
      }
    }
    else{
      if (this.state.notifications!.group_notifications!.length > 0) {
        this.state.notifications!.group_notifications!.forEach((element) {
          currentDateList = globaldata.formatDate.format(DateTime.parse(element!.timestamp.toString()));
          if (currentDateList == dateList) {
            addTitle = false;
          } else {
            addTitle = true;
            dateList = currentDateList;
          }
          cards.add(
            Dismissible(
              background: Card(
                  color: globaldata.greenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Color(0xFF141414), width: 1),
                ),
                margin: EdgeInsets.only(bottom: 10),),

              onDismissed: (direction) {
                context.read<NotificationsCenterCubit>().markRead(element.notification_id.toString());
                updateBadgeApp();
              },
              key: ValueKey(element.notification_id.toString()),
              child: AnimationConfiguration.staggeredList(
                position: count,
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  horizontalOffset: 40,
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     addTitle
                        //         ? Container(
                        //       margin: EdgeInsets.only(left: 20, top: 10, bottom: 5),
                        //       child: Text(
                        //         globaldata.formatNotiList.format(DateTime.parse(element.timestamp.toString())),
                        //         style: TextStyle(color: globaldata.greenColor, fontSize: 12, fontWeight: FontWeight.bold),
                        //       ),
                        //     )
                        //         : Container(),
                        //   ],
                        // ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Color(0xFF141414), width: 1),
                          ),
                          color: Color(0xFF141414),
                          margin: EdgeInsets.only(bottom: 10),
                          child: GestureDetector(
                            onTap: () {
                              //element.isRead = true;
                              updateBadgeApp();
                            },
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  child: ListTile(
                                    onTap: () {
                                      // element.isRead = true;
                                      updateBadgeApp();
                                      sendNotificationScreenGroup(element);
                                    },
                                    leading: getIconNotificationGroup(element),
                                    title: Row(
                                      children: [
                                        Expanded(
                                          flex: 9,
                                          child: GestureDetector(
                                            onTap: () {
                                              //element.isRead = true;
                                              updateBadgeApp();
                                              sendNotificationScreenGroup(element);
                                            },
                                            child: Column(
                                              children: [
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child: Text(
                                                          getFormatMessageGroup(element),
                                                          style: TextStyle(
                                                              color: Color(0xFFB7B7B7),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Text(
                                                      globaldata.formatNotiList.format(DateTime.parse(element.timestamp.toString())),
                                                      style: TextStyle(
                                                        color: globaldata.greenColor,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
          count++;
        });
      }
    }

    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: AnimationLimiter(
        child: ListView(
          children: [...cards],
        ),
      ),
    );
  }
}
