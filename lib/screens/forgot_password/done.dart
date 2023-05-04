// import 'dart:core';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:project/utilities/http_calls/auth_provider.dart';
// import 'package:project/utilities/services/navigatorKey_var_file.dart';
//
// import 'package:project/widgets/InformationHeader.dart';
// import 'package:project/widgets/ButtonAction.dart';
//
// class DoneReset extends StatefulWidget {
//   @override
//   _DoneReset createState() => _DoneReset();
// }
//
// class _DoneReset extends State<DoneReset> {
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
//                       informationHeader("DONE!", "Your password has been updated"),
//                       SizedBox(height: 30.0),
//                       buildBtn("OK", "/login"),
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