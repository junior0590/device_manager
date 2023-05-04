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
// class ResetPassword extends StatefulWidget {
//   @override
//   _ResetPassword createState() => _ResetPassword();
// }
//
// class _ResetPassword extends State<ResetPassword> {
//
//   String _password = '';
//   String _repeatPassword = '';
//
//   void setPassword (password) {
//     setState(() {
//       _password = password;
//     });
//   }
//
//   void setRepeatPassword (password) {
//     setState(() {
//       _repeatPassword = password;
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
//                       informationHeader("RESET PASSWORD", "Your password must contain at least 6 characters, uppercase, lowercase and a number"),
//                       SizedBox(height: 30.0),
//                       buildInput("Password", "password", setPassword),
//                       SizedBox(height: 25.0),
//                       buildInput("Confirm password", "password", setRepeatPassword),
//                       buildBtn("SET PASSWORD", "/forgot/done_reset"),
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