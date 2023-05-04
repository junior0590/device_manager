import 'dart:ui';

import 'package:animated_widgets/widgets/rotation_animated.dart';
import 'package:animated_widgets/widgets/shake_animated_widget.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/view/list/notifications_screen.dart';
import 'package:project/new_bloc/views/devices/presentation/view/list/devices_screen.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:project/utilities/providers/notifications.dart';
import 'package:project/utilities/providers/providers.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../utilities/http_calls/auth_provider.dart';
import '../../../utilities/providers/user_profile_provider.dart';
import '../../../utilities/services/entity/user_data_response/user_data_response.dart';
import '../../../utilities/services/navigatorKey_var_file.dart';
import '../../../widgets/About.dart';

final authProvider = AuthProvider();

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({
    Key? key,
    this.viewLocation,
  }) : super(key: key);

  final String? viewLocation;

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    UserData user = Provider.of<UserProfile>(context).user ?? UserData();
    final ScrollController? _controller = ScrollController();

    var alertStyle = AlertStyle(
      backgroundColor: Color(0xFF141414),
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      animationDuration: Duration(milliseconds: 150),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titleStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
      alertAlignment: Alignment.center,
      titleTextAlign: TextAlign.left,
    );

    return Container(
      width: 250,
      color: const Color(0xFF141414),
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset('assets/images/drawer-header.png').image,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          const Divider(
            color: const Color(0XFF090909),
            height: 2,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const NotificationList()),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationScreen()),
                  );
                },
                child: AvatarGlow(
                  glowColor: globaldata.greenColor,
                  endRadius: 25.0,
                  duration: const Duration(milliseconds: 3000),
                  repeat: true,
                  showTwoGlows: true,
                  animate: Provider.of<Notifications>(context).allNotifications!.where((element) => element.isRead == false).toList().length > 0 ? true : false,
                  repeatPauseDuration: const Duration(milliseconds: 200),
                  child: Badge(
                    isLabelVisible: Provider.of<Notifications>(context).allNotifications!.where((element) => element.isRead == false).toList().length > 0,
                    textColor: globaldata.whiteLetters,
                    label: Text(
                      Provider.of<Notifications>(context).allNotifications!.where((element) => element.isRead == false).toList().length.toString(),
                    ),
                    backgroundColor: Colors.red,
                    child: ShakeAnimatedWidget(
                      enabled: Provider.of<Notifications>(context).allNotifications!.where((element) => element.isRead == false).toList().length > 0,
                      duration: Duration(milliseconds: 700),
                      shakeAngle: Rotation.deg(z: 25),
                      curve: Curves.linear,
                      child: Icon(
                        Icons.notifications,
                        color: globaldata.whiteLetters,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                },
                icon: const Icon(
                  Icons.info,
                  color: globaldata.whiteLetters,
                ),
              ),
              IconButton(
                onPressed: () async {
                  Alert signingOutLoader = Alert(
                      context: context,
                      style: alertStyle,
                      title: "Signing you out",
                      content: Image.asset(
                        'assets/images/animated/spinner.gif',
                        width: 60,
                      ),
                      buttons: []);
                  Alert signingOutErrorLoader = Alert(
                    context: context,
                    style: alertStyle,
                    title: "Something went wrong!",
                    content: Container(),
                    buttons: [
                      DialogButton(
                        width: 106.25,
                        child: const Text(
                          "CLOSE",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Chivo',
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: const Color.fromRGBO(84, 84, 84, 1),
                        radius: BorderRadius.circular(0.0),
                      )
                    ],
                  );

                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Confirm', style: TextStyle(color: globaldata.whiteLetters2)),
                          backgroundColor: Color(0xFF090909),
                          content: Text('Do you want to sign out?', style: TextStyle(color: globaldata.whiteLetters2)),
                          actions: [
                            TextButton(
                                onPressed: () async {
                                  signingOutLoader.show();

                                  String? response;// = await authProvider.singOut();

                                  if (response == "success") {
                                    final storage = await SharedPreferences.getInstance();
                                    storage.remove('token');
                                    storage.setBool('isLoggedIn', false);
                                    signingOutLoader.dismiss();
                                    RouteKey.navigatorKey.currentState!.pushNamed('/login');
                                  } else {
                                    signingOutLoader.dismiss();
                                    signingOutErrorLoader.show();
                                  }
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(color: globaldata.greenColor),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('No', style: TextStyle(color: globaldata.greenColor)))
                          ],
                        );
                      });
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  color: globaldata.whiteLetters,
                  size: 20.0,
                ),
              )
            ],
          ),
          Expanded(
            child: Scrollbar(
              controller: _controller,
              thumbVisibility: true,
              child: ListView(
                controller: _controller,
                children: [
                  ExpansionTile(
                    title: Text('Features', style: TextStyle(fontSize: 16)),
                    children: <Widget>[
                      ListTile(
                        title: const Text(
                          'Asana Tasks',
                          style: const TextStyle(color: globaldata.whiteLetters2),
                        ),
                        leading: const Icon(
                          Icons.task_alt,
                          color: globaldata.whiteLetters,
                          size: 25.0,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DevicesScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
