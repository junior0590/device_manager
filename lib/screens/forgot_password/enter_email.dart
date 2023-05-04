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
// class CheckEmail extends StatefulWidget {
//   @override
//   _CheckEmail createState() => _CheckEmail();
// }
//
// class _CheckEmail extends State<CheckEmail> {
//
//   String _email = '';
//
//   void setUsername (username) {
//     setState(() {
//       _email = username;
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
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Center(
//                     child: Column(
//                       children: [
//                         informationHeader("FORGOT YOUR PASSWORD?", "Enter your email and we'll send a code to reset your password."),
//                         SizedBox(height: 30.0),
//                         buildInput("Email", "email", setUsername),
//                         buildBtn("SEND", "/forgot/check_code"),
//                         TextButton(
//                             onPressed: () {
//                           RouteKey.navigatorKey.currentState!.pushNamed("/login");
//                           },
//                             child: Text(
//                               "Back to sign in",
//                               style: TextStyle(
//                                 color: Color.fromARGB(255, 255, 255, 255),
//                                 fontSize: 16.0,
//                                 fontFamily: 'Chivo'
//                               ),
//                             )
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
