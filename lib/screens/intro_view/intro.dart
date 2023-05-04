// import 'package:flutter/material.dart';
// import 'package:intro_views_flutter/intro_views_flutter.dart';
// import 'package:project/screens/dashboard/dashboard.dart';
//
// /// App widget class.
// class Intro extends StatelessWidget {
//   // Making list of pages needed to pass in IntroViewsFlutter constructor.
//   final pages = [
//     PageViewModel(
//       pageColor: const Color(0xFF03A9F4),
//       // iconImageAssetPath: 'assets/air-hostess.png',
//       //bubble: Image.asset('assets/images/logo.png'),
//       body: const Text(
//         'Hassle-free  booking  of  flight  tickets  with  full  refund  on  cancellation',
//       ),
//       title: const Text(
//         'Flights',
//       ),
//       titleTextStyle:
//       const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       mainImage: Image.asset(
//         'assets/images/logo.png',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//     ),
//     PageViewModel(
//       pageColor: const Color(0xFF8BC34A),
//      // iconImageAssetPath: 'assets/images/logo.png',
//       body: const Text(
//         'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
//       ),
//       title: const Text('Hotels'),
//       mainImage: Image.asset(
//         'assets/images/Bottom.png',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//       titleTextStyle:
//       const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//     ),
//     PageViewModel(
//       pageBackground: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             stops: [0.0, 1.0],
//             begin: FractionalOffset.topCenter,
//             end: FractionalOffset.bottomCenter,
//             tileMode: TileMode.repeated,
//             colors: [
//               Colors.orange,
//               Colors.pinkAccent,
//             ],
//           ),
//         ),
//       ),
//       //iconImageAssetPath: 'assets/images/agent.png',
//       body: const Text(
//         'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
//       ),
//       title: const Text('Cabs'),
//       mainImage: Image.asset(
//         'assets/images/agent.png',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//       titleTextStyle:
//       const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'IntroViews Flutter',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Builder(
//           builder: (context) => IntroViewsFlutter(
//             pages,
//             showNextButton: true,
//             showBackButton: true,
//             onTapDoneButton: () {
//               // Use Navigator.pushReplacement if you want to dispose the latest route
//               // so the user will not be able to slide back to the Intro Views.
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Dashboard(module: 'leads'),
//                 ),
//               );
//             },
//             pageButtonTextStyles: const TextStyle(
//               color: Colors.white,
//               fontSize: 18.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// /// Home Page of our example app.
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: const Center(
//         child: Text('This is the home page of the app'),
//       ),
//     );
//   }
// }