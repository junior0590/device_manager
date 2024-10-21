import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/providers/notifications.dart';
import 'package:project/utilities/services/entity/notifications/notification_field.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'notifications.dart';

/// This is the stateful widget that the main application instantiates.
class NotificationList extends StatefulWidget {
  const NotificationList({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationList> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<NotificationList> with TickerProviderStateMixin{
  List<NotificationField> listNotification = [];
  List<Widget> cards = [];
  bool viewAll = true;
  late final NotificationAppLaunchDetails? notificationAppLaunchDetails;

  @override
  void initState() {
    super.initState();
    listNotification = globaldata.noti;
    globaldata.sendToNotification = false;
    initialAppLaunch();
    updateBadgeApp();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> initialAppLaunch() async {
    // notificationAppLaunchDetails = !kIsWeb && Platform.isLinux ? null : await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
    // if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
    //   //selectedNotificationPayload = notificationAppLaunchDetails!.payload;
    // }
  }

  Widget getNotificationRecords() {
    cards = [];
    String dateList = "";
    String currentDateList = "";
    bool addTitle = true;
    int count = 0;
    List<NotificationField>? notificationProvider = Provider.of<Notifications>(context).allNotifications;
    globaldata.noti = notificationProvider!;
    globaldata.noti.sort((a, b) => b.date!.compareTo(a.date!));
    listNotification = globaldata.noti;

    if (viewAll == false) {
      listNotification = globaldata.noti.where((element) => element.isRead == false).toList();
    }
    if (listNotification.length > 0) {
      listNotification.forEach((element) {
        currentDateList = element.date.toString();

        if (currentDateList == dateList) {
          addTitle = false;
        } else {
          addTitle = true;
          dateList = currentDateList;
        }
        cards.add(
          AnimationConfiguration.staggeredList(
            position: count,
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              horizontalOffset: 40,
              child: FadeInAnimation(
                child: Column(
                  children: [
                    Row(
                      children: [
                        addTitle
                            ? Container(
                                margin: EdgeInsets.only(left: 20, top: 10, bottom: 5),
                                child: Text(
                                  globaldata.formatNotiList.format(DateTime.parse(element.originalDate.toString())),
                                  style: TextStyle(color: globaldata.greenColor, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: element.isRead == false ? globaldata.greenColor : Color(0xFF141414), width: 1),
                      ),
                      color: Color(0xFF141414),
                      margin: EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            element.isRead = true;
                            updateBadgeApp();
                          });
                        },
                        child: Row(
                          children: [
                            Flexible(
                              flex: 10,
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    element.isRead = true;
                                    updateBadgeApp();
                                  });
                                  sendNotificationScreen(element);
                                },
                                leading: getIconNotification(element),
                                title: Row(
                                  children: [
                                    Expanded(
                                      flex: 9,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            element.isRead = true;
                                            updateBadgeApp();
                                          });
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
                                                      element.message.toString(),
                                                      style: TextStyle(
                                                          color: element.isRead == false ? Colors.white : Color(0xFFB7B7B7),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  globaldata.formatDateTime.format(DateTime.parse(element.originalDate.toString())),
                                                  style: TextStyle(
                                                    color: Color(0xFFB7B7B7),
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
                                trailing: PopupMenuButton(
                                  color: Color(0xFF141414),
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: globaldata.whiteLetters2,
                                    size: 18.0,
                                  ),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                                  ),
                                  itemBuilder: (BuildContext contextMenu) => <PopupMenuEntry>[
                                    PopupMenuItem(
                                      padding: EdgeInsets.only(left: 25),
                                      onTap: () {
                                        setState(() {
                                          element.isRead = true;
                                          updateBadgeApp();
                                        });
                                      },
                                      child: Text(
                                        "Mark as read",
                                        style: TextStyle(color: globaldata.greenColor),
                                      ),
                                    ),
                                    PopupMenuItem(
                                      padding: EdgeInsets.only(left: 25),
                                      onTap: () async {
                                        bool res = await Future.delayed(Duration.zero, () => _openPopupYesOrNot("Sure you want to delete this notification?"),);
                                        if(res){
                                          Provider.of<Notifications>(context, listen: false).removeNotification(element);
                                        }
                                      },
                                      child: Text(
                                        "Delete",
                                        style: TextStyle(color: globaldata.greenColor),
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
        );
        count++;
      });
    }

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.black,
        child: AnimationLimiter(
          child: ListView(
            children: [...cards],
          ),
        ),
      ),
    );
  }

  void sendNotificationScreen(NotificationField nfield) {
    globaldata.sendToNotification = false;
    if (nfield.notification_type == "public_mention" || nfield.notification_type == "private_mention"
        || nfield.notification_type == "private_group_mention" || nfield.notification_type == "public_group_mention"
        || nfield.notification_type == "note_like" || nfield.notification_type == "private_note_like") {
      globaldata.recID = nfield.record_id.toString();
      globaldata.currentModule = nfield.module.toString();
      globaldata.initialIndexRecord = 1;
      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ModuleDetail()));
    }  else if (nfield.notification_type == "chat") {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (BuildContext context) => ContactsScreen()));
    } else if (nfield.notification_type == "record_created" || nfield.notification_type == "record_assigned"
        || nfield.notification_type == "meeting_assigned" || nfield.notification_type == "record_shared"
        || nfield.notification_type == "record_updated") {
      // Navigator.push(
      //     context,
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
      context: context,
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
                  Navigator.of(context).pop();
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
                  setState(() {
                    select = false;
                  });

                  Navigator.of(context).pop();
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
    return SafeArea(
      child: WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                height: 160,
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: Image.asset('assets/images/top-detail.png').image,
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
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
                        margin: EdgeInsets.only(top: 20.0, left: 10),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Opacity(
                        opacity: 0.9,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Container(
                                width: 70.0,
                                height: 40.0,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(width: 2, color: Colors.black),
                                    boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
                                child: TextButton(
                                  onPressed: () {

                                    FirebaseFirestore? db = FirebaseFirestore.instance;
                                    Map<String, dynamic> user = <String, dynamic>{
                                      "owner_type": "user",
                                      "owner_id": "1",
                                      "type": "public_note_mention",
                                      "module": "deals",
                                      "title": "Note Mentions",
                                      "message": "Junior Henriquez has mentioned you in note #3543",
                                      "record_id": "9917",
                                      "child_id": "3543",
                                      "dismissed": false,
                                      "read": true,
                                      "user_id": globaldata.userId.toString(),
                                      "created_at":"",
                                      "updated_at":"",
                                      "status":"",
                                      "image_link": "https://firebasestorage.googleapis.com/v0/b/hytechgizmo.appspot.com/o/Temperature_COLD.png?alt=media&token=b8e9056b-0c28-48c9-abe9-5a2904afb84f",
                                    };

                                    db.collection("users")
                                        .doc(globaldata.userId.toString())
                                        .collection("notifications")
                                        .add(user)
                                        .then((DocumentReference doc) => print('DocumentSnapshot added with ID: ${doc.id}'));

                                  },
                                  child: Icon(
                                    Icons.home,
                                    color: Color(0xFF043301),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 40.0,
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(width: 2, color: viewAll ? Color(0xFFB7B7B7) : Colors.black),
                                    boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
                                child: TextButton(
                                  onPressed: () => {
                                    setState(() {
                                      viewAll = true;
                                    })
                                  },
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      color: Color(0xFF043301),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Chivo',
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 110.0,
                                      height: 40.0,
                                      margin: EdgeInsets.all(5.0),
                                      padding: EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
                                          border: Border.all(width: 2, color: viewAll ? Colors.black : Color(0xFFB7B7B7)),
                                          borderRadius: BorderRadius.circular(60),
                                          boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
                                      child: TextButton(
                                        onPressed: () => {
                                          setState(() {
                                            viewAll = false;
                                          })
                                        },
                                        child: Text(
                                          'View Unread',
                                          style: TextStyle(
                                            color: Color(0xFF043301),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Chivo',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 60),
                                      child: IconBadge(
                                        icon: Icon(
                                          Icons.notifications,
                                          color: Colors.transparent,
                                        ),
                                        itemCount:
                                            Provider.of<Notifications>(context).allNotifications!.where((element) => element.isRead == false).toList().length,
                                        badgeColor: Colors.red,
                                        itemColor: globaldata.whiteLetters,
                                        hideZero: true,
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Container(
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)])),
                                    height: 35,
                                    width: 35,
                                    margin: EdgeInsets.all(2.0),
                                    child: PopupMenuButton(
                                      color: Color(0xFF141414),
                                      icon: Icon(
                                        Icons.more_vert,
                                        color: globaldata.greenLetter1,
                                        size: 16.0,
                                      ),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                                      ),
                                      itemBuilder: (BuildContext contextMenu) => <PopupMenuEntry>[
                                        PopupMenuItem(
                                          padding: EdgeInsets.only(left: 25),
                                          onTap: () {
                                            Provider.of<Notifications>(context, listen: false).markReadAllNotification();
                                          },
                                          child: Text(
                                            "Mark all as read",
                                            style: TextStyle(color: globaldata.greenColor),
                                          ),
                                        ),
                                        PopupMenuItem(
                                          padding: EdgeInsets.only(left: 25),
                                          onTap: () async {
                                            //print("tab");
                                            //bool result = await _openPopupYesOrNot("sure you want to delete all notifications?");

                                            //if(result){
                                              Provider.of<Notifications>(context, listen: false).removeAllNotification();
                                            //}

                                          },
                                          child: Text(
                                            "Delete all",
                                            style: TextStyle(color: globaldata.greenColor),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              getNotificationRecords(),
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
