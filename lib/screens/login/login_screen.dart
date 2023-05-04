import 'dart:core';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/new_bloc/core/di/injector.dart';
import 'package:project/new_bloc/core/dio/dio_factory.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/utilities/http_calls/auth_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/widgets/Input.dart';
import 'package:project/widgets/ButtonAction.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:app_links/app_links.dart';
import 'package:dio/dio.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';
  final Connectivity _connectivity = Connectivity();
  Icon? connectionStatus;
  String connectionStatusData = "";
  StreamSubscription<ConnectivityResult>? connectionType;
  var alertStyle = AlertStyle(
      backgroundColor: Color(0xFF141414),
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      animationDuration: const Duration(milliseconds: 120),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      titleStyle: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.85),
        fontSize: 16,
      ),
      alertAlignment: Alignment.center,
      titleTextAlign: TextAlign.left);
  Timer? timer;
  final _navigatorKey = GlobalKey<NavigatorState>();
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  Future<void> _showDialog(String? message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Warning',
            style: const TextStyle(color: globaldata.whiteLetters2),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  message!,
                  style: const TextStyle(color: globaldata.whiteLetters2),
                ),
              ],
            ),
          ),
          backgroundColor: const Color(0xFF141414),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'OK',
                style: const TextStyle(color: globaldata.green2),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void setEmail(email) {
    setState(() {
      _email = email;
    });
  }

  void setPassword(password) {
    setState(() {
      _password = password;
    });
  }

  void sendLoginData() async {
    Alert loading = Alert(
      context: context,
      style: alertStyle,
      content: Column(
        children: [
          Image.asset(
            'assets/images/animated/spinner.gif',
            width: 60,
          ),
          Text(
            'Loading...',
            style:
                const TextStyle(color: globaldata.whiteLetters2, fontSize: 18),
          )
        ],
      ),
      buttons: [],
    );
    bool loginStatus;

    if (_email.isNotEmpty && _password.isNotEmpty) {
      loading.show();
      loginStatus = await AuthProvider().loginUser(_email, _password);
      if (loginStatus) {
        String url = '';
        if (kDebugMode) {
          url = "https://test.hytechgizmo.com/api/mobile";
        } else {
          url = "https://hytechgizmo.com/api/mobile";
        }
        injector<Dio>().options =
            DioFactory().updateToken(token: globaldata.token, baseUrl: url);
      }

      if (loginStatus) {
        final storage = await SharedPreferences.getInstance();
        int? userId = storage.getInt('userId');
        initialStreamFirebase(userId.toString());
        loading.dismiss();
        Navigator.of(context).pushReplacementNamed('/calendar');
      } else {
        loading.dismiss();
        _showDialog('Email or password is incorrect');
      }
    } else if (_email.isEmpty && _password.isEmpty) {
      _showDialog('Password and email fields are empty');
    } else if (_email.isEmpty) {
      _showDialog('Email field is empty');
    } else if (_password.isEmpty) {
      _showDialog('Password field is empty');
    }

    // AuthProvider().loginUser('manager@hytechgizmo.com', '1234');
    // AuthProvider().loginUser('pabloperez@hytechsolar.com', '1234');
    // AuthProvider().loginUser('junior.henriquez@hytechgizmo.com', '12345');
  }

  checkNetworkStatusOnChange() {
    connectionType = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      var snackBar;

      setState(() {
        if (result.name.toString() == "wifi") {
          connectionStatus =
              const Icon(Icons.network_wifi, color: const Color(0xFF10FB06));
          snackBar = SnackBar(
              content: Row(
                children: [
                  connectionStatus!,
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Wifi Connection'),
                ],
              ),
              duration: Duration(seconds: 5));
        } else if (result.name.toString() == "mobile") {
          connectionStatus = const Icon(Icons.signal_cellular_4_bar,
              color: const Color(0xFF10FB06));
          snackBar = SnackBar(
              content: Row(
                children: [
                  connectionStatus!,
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Mobile Network Connection'),
                ],
              ),
              duration: Duration(seconds: 5));
        } else if (result.name.toString() == "none") {
          connectionStatus = Icon(Icons.signal_wifi_connected_no_internet_4,
              color: Colors.red);
          snackBar = SnackBar(
            content: Row(
              children: [
                connectionStatus!,
                const SizedBox(
                  width: 10,
                ),
                const Text('No internet Connection'),
              ],
            ),
            duration: const Duration(seconds: 10),
          );
        }

        // ScaffoldMessenger.of(context).showSnackBar(snackBar);

        connectionStatusData = result.name.toString();
      });
    });
  }

  verifyNetworkStatusOnInit() async {
    ConnectivityResult connectivityResult =
        await _connectivity.checkConnectivity();
    var snackBar;

    setState(() {
      if (connectivityResult.name.toString() == "wifi") {
        connectionStatus = Icon(
          Icons.network_wifi,
          color: Color(0xFF10FB06),
        );
        snackBar = SnackBar(
          content: Row(
            children: [
              connectionStatus!,
              const SizedBox(
                width: 10,
              ),
              const Text('Wifi Connection'),
            ],
          ),
          duration: const Duration(seconds: 5),
        );
        connectionStatusData = connectivityResult.name.toString();
      } else if (connectivityResult.name.toString() == "mobile") {
        connectionStatus = const Icon(
          Icons.signal_cellular_4_bar,
          color: const Color(0xFF10FB06),
        );
        snackBar = SnackBar(
          content: Row(
            children: [
              connectionStatus!,
              const SizedBox(
                width: 10,
              ),
              const Text('Mobile Network Connection'),
            ],
          ),
          duration: const Duration(seconds: 5),
        );
        connectionStatusData = connectivityResult.name.toString();
      } else if (connectivityResult.name.toString() == "none") {
        connectionStatus = Icon(
          Icons.signal_wifi_connected_no_internet_4,
          color: Colors.red,
        );
        snackBar = SnackBar(
            content: Row(
              children: [
                connectionStatus!,
                const SizedBox(
                  width: 10,
                ),
                const Text('No internet Connection'),
              ],
            ),
            duration: const Duration(seconds: 10));
        connectionStatusData = connectivityResult.name.toString();
      }
    });
  }

  Future<void> initDeepLinks() async {
    print("test link");
    _appLinks = AppLinks();

    // Check initial link if app was in cold state (terminated)
    final appLink = await _appLinks.getInitialAppLink();
    if (appLink != null) {
      print('getInitialAppLink: $appLink');
      openAppLink(appLink);
    }

    // Handle link when app is in warm state (front or background)
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      print('onAppLink: $uri');
      openAppLink(uri);
    });
  }

  void openAppLink(Uri uri) {
    _navigatorKey.currentState?.pushNamed(uri.fragment);
  }

  @override
  void initState() {
    super.initState();
    // getAppExists();
    // verifyLoginToken();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 1),
            image: DecorationImage(
              image: Image.asset(
                'assets/images/Bottom.png',
                scale: 0.7,
              ).image,
              alignment: Alignment.bottomCenter,
            )),
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            physics: ClampingScrollPhysics(),
            child: Container(
              margin: screenWidth < 450
                  ? const EdgeInsets.only(top: 80)
                  : const EdgeInsets.only(top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  screenWidth < 450
                      ? Center(
                          child: Image(
                            image: Image.asset(
                              'assets/images/login.png',
                              scale: 3.8,
                            ).image,
                          ),
                        )
                      : Center(
                          child: Image(
                            image: Image.asset(
                              'assets/images/login.png',
                              scale: 3.5,
                            ).image,
                          ),
                        ),
                  const SizedBox(height: 40.0),
                  screenWidth < 450
                      ? buildInput(
                          "Email",
                          "email",
                          context,
                          45.0,
                          300.0,
                          setEmail,
                        )
                      : buildInput(
                          "Email",
                          "email",
                          context,
                          65.0,
                          450.0,
                          setEmail,
                        ),
                  const SizedBox(height: 15.0),
                  screenWidth < 450
                      ? buildInput(
                          "Password",
                          "password",
                          context,
                          45.0,
                          300.0,
                          setPassword,
                        )
                      : buildInput(
                          "Password",
                          "password",
                          context,
                          65.0,
                          450.0,
                          setPassword,
                        ),
                  const SizedBox(height: 15.0),
                  screenWidth < 450
                      ? buildBtn(
                          "LOG IN",
                          45.0,
                          300.0,
                          "none",
                          sendLoginData,
                        )
                      : buildBtn(
                          "LOG IN",
                          50.0,
                          450.0,
                          "none",
                          sendLoginData,
                        ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    //_linkSubscription?.cancel();
    super.dispose();
    // connectionType!.cancel();
  }
}
