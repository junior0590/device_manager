// import 'dart:core';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:project/utilities/http_calls/auth_provider.dart';
// import 'package:project/utilities/services/navigatorKey_var_file.dart';
//
// import 'package:project/widgets/Input.dart';
// import 'package:project/widgets/InformationHeader.dart';
// import 'package:project/widgets/ButtonAction.dart';
//
// class CheckCode extends StatefulWidget {
//   @override
//   _CheckCode createState() => _CheckCode();
// }
//
// class _CheckCode extends State<CheckCode> {
//
//   String _password = '';
//
//   void setPassword (password) {
//     setState(() {
//       _password = password;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/background_login.png"),
//                     fit: BoxFit.cover
//                 )
//             ),
//           ),
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/pattern2.png"),
//                     alignment: Alignment.topCenter,
//                     repeat: ImageRepeat.repeatX
//                 )
//             ),
//           ),
//           Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Center(
//                   child: Column(
//                     children: [
//                       informationHeader("CHECK YOU EMAIL", "We sent a code to reset your password"),
//                       SizedBox(height: 30.0),
//                       buildInput("Enter code", "password", setPassword),
//                       buildBtn("SUBMIT", "/forgot/reset_password"),
//                       TextButton(onPressed: () {
//                         RouteKey.navigatorKey.currentState!.pushNamed("/login");
//                       },
//                           child: Text(
//                             "Didn't work? Send me another code",
//                             style: TextStyle(
//                                 color: Color.fromARGB(255, 255, 255, 255),
//                                 fontSize: 16.0,
//                                 fontFamily: 'Chivo',
//                                 decoration: TextDecoration.underline
//                             ),
//                           )
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }