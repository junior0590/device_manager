import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/login/login_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final Duration initialDelay = Duration(seconds: 1);
  //late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF090909),//Colors.black,
        body: SafeArea(
          child: Container(
            decoration:  BoxDecoration(
                color: Color(0xFF090909),//const Color.fromRGBO(0, 0, 0, 1),
                image: DecorationImage(
                  image: Image.asset(
                    'assets/images/Bottom.png',
                    scale: 0.7,
                  ).image,
                  alignment: Alignment.bottomCenter,
                )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Container(
                  //     height: 220,
                  //     width: 400,
                  //     child: Stack(
                  //       fit: StackFit.loose,
                  //       children: [
                  //         VideoPlayer(_controller),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  DelayedDisplay(
                    delay: initialDelay,
                    child: Center(
                      child: Image(
                        image: Image.asset(
                          'assets/images/animated/animation.gif',
                          gaplessPlayback: false,
                        ).image,
                      ),
                    )
                  ),
                  SizedBox(height: 60),
                  // DelayedDisplay(
                  //   delay: initialDelay,
                  //   child: SizedBox(height: 50),
                  // ),
                  // DelayedDisplay(
                  //   delay: Duration(seconds: initialDelay.inSeconds + 5),
                  //   child: Text(
                  //     "Welcome to",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.normal,
                  //       fontSize: 35.0,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                  // DelayedDisplay(
                  //   delay: Duration(seconds: initialDelay.inSeconds + 6),
                  //   child: Text(
                  //     "Hytech Gizmo",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 35.0,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 30.0,
                  // ),
                  DelayedDisplay(
                    delay: Duration(seconds: initialDelay.inSeconds + 5),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF10FB06),
                                Color(0XFF0DC005)
                              ]
                          ),
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                spreadRadius: 0.3,
                                blurRadius: 7,
                                offset: Offset(1, 4)
                            )
                          ]
                      ),
                      child: TextButton(
                        onPressed: () {
                          print("test");

                         // Navigator.of(context).pushReplacementNamed('/login');
                          //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()),false);

                         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                             LoginScreen()), (Route<dynamic> route) => false);
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Chivo',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DelayedDisplay(
                    delay: Duration(seconds: initialDelay.inSeconds + 6),
                    child: Text(
                      "Continue if you have an account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
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
  }
}