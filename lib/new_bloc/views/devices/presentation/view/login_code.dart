import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:project/new_bloc/views/devices/presentation/view/list/devices_screen.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

const Color primaryColor = Color(0xFF121212);
const Color accentPurpleColor = Color(0xFF6A53A1);
const Color accentPinkColor = Color(0xFFF99BBD);
const Color accentDarkGreenColor = Color(0xFF115C49);
const Color accentYellowColor = Color(0xFFFFB612);
const Color accentOrangeColor = Color(0xFFEA7A3B);

class VerificationScreen1 extends StatefulWidget {
  @override
  _VerificationScreen1State createState() => _VerificationScreen1State();
}

class _VerificationScreen1State extends State<VerificationScreen1> {
  late List<TextStyle?> otpTextStyles;
  late List<TextEditingController?> controls;
  int numberOfFields = 5;
  bool clearText = false;
  TextEditingController textCustomer = TextEditingController();
   bool isAndroid = true;
  bool isIos = false;
  List<String> versionsAndroid = ["9","10","11","12","13"];
  List<String> versionsIos = ["11","12","13","14","15","16"];
  String? selectedVersionAndroid = "9";
  String? selectedVersionIos = "11";

  sendMail() async {

    String username = 'junior90h@gmail.com';
    String password = 'Jh@123456';
    //final smtpServer = gmail(username, password);

    final smtpServer = SmtpServer(
      "smtp.gmail.com",
      port: 587,
      ssl: true,
      ignoreBadCertificate: false,
      allowInsecure: false,
      username: "junior90h@gmail.com",
      password: "Jh@123456",
    );

    // Create our message.
    final message = Message()
      ..from = Address(username, 'junior')
      ..recipients.add('junior90h@gmail.com')
      // ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      // ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = 'Solicitud Enrrolamiento :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent. '+e.message.toString());
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
    final equivalentMessage = Message()
      ..from = Address(username, 'junior90h@gmail.com')
      ..recipients.add(Address('junior90h@gmail.com'))
      //..ccRecipients.addAll([Address('******')])
     // ..bccRecipients.add('*********')
      ..subject = 'Test Dart Mailer library :: 😀 ::'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = '<h1>Test</h1>\n<p>Hey! Here is some HTML content</p>';

    final sendReport2 = await send(equivalentMessage, smtpServer);
    var connection = PersistentConnection(smtpServer);
    await connection.send(message);
    await connection.send(equivalentMessage);
    await connection.close();

  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Código de verificación",
              style: theme.textTheme.headline4,
            ),
            SizedBox(height: 16),

            Text("Digite su código de acceso", style: theme.textTheme.headline6),
            Spacer(flex: 2),
            OtpTextField(
              numberOfFields: numberOfFields,
              borderColor: Color(0xFF512DA8),
              focusedBorderColor: primaryColor,
              clearText: clearText,
              showFieldAsBox: true,
              textStyle: theme.textTheme.subtitle1,
              onCodeChanged: (String value) {
                //Handle each value
              },
              handleControllers: (controllers) {
                //get all textFields controller, if needed
                controls = controllers;
              },
              onSubmit: (String verificationCode) {
                //set clear text to clear text from all fields
                setState(() {
                  clearText = true;
                });
                globaldata.userId = int.parse(verificationCode);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DevicesScreen(),
                      ),
                    );
                //navigate to different screen code goes here
                // showDialog(
                //   context: context,
                //   builder: (context) {
                //     return AlertDialog(
                //       title: Text("Código de verificación"),
                //       content: Text('El Código de verificación es $verificationCode'),
                //     );
                //   },
                // );
              }, // end onSubmit
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Si nesecita ayuda favor contactar con el administrador",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyText1,
                ),
              ),
            ),
            Center(
              child: Text(
                "No tienes código?",
                style: theme.textTheme.subtitle1,
              ),
            ),
            Spacer(flex: 3),
            // CustomButton(
            //   onPressed: () {
            //
            //   },
            //   title: "Confirmar",
            //   color: primaryColor,
            //   textStyle: theme.textTheme.subtitle1?.copyWith(
            //     color: Colors.white,
            //   ),
            // ),
            Spacer(flex: 2),
          ],
        ),
      ),
      // floatingActionButton:
      // FloatingActionButton(
      //   child: Container(
      //     width: 50,
      //     height: 50,
      //     child: const Icon(
      //       Icons.add,
      //       color: globaldata.blackBackground2,
      //       size: 20,
      //     ),
      //   ),
      //   backgroundColor: Colors.blueAccent,
      //   onPressed: () {
      //
      //     showDialog(
      //       context: context,
      //       builder: (BuildContext context) {
      //         return StatefulBuilder(builder: (context, setState) {
      //           return Dialog(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             elevation: 0,
      //             child: Container(
      //               padding: EdgeInsets.all(10),
      //               height: 200,
      //               width: 200,
      //               child: Column(
      //                 children: [
      //                   Row(
      //                     children: [
      //                       Text("Cliente"),
      //                       SizedBox(width: 5),
      //                       Expanded(
      //                         child: TextFormField(
      //                             controller: textCustomer,
      //                             keyboardType: TextInputType.text,
      //                             textAlignVertical: TextAlignVertical.center,
      //                             //field.value!,
      //                             style: TextStyle(
      //                               color: Colors.black,
      //                               fontFamily: globaldata.font,
      //                               fontSize: 14,
      //                             ),
      //                             decoration: InputDecoration(
      //                                 contentPadding: EdgeInsets.only(left: 20.0),
      //                                 enabledBorder: OutlineInputBorder(
      //                                     borderRadius: BorderRadius.circular(15),
      //                                     borderSide: BorderSide(width: 1, color: Colors.black)),
      //                                 border: OutlineInputBorder(
      //                                     borderRadius: BorderRadius.circular(15),
      //                                     borderSide: BorderSide(width: 1, color: Colors.black)),
      //                                 focusedBorder: OutlineInputBorder(
      //                                     borderRadius: BorderRadius.circular(15),
      //                                     borderSide:
      //                                     BorderSide(width: 1, color: Colors.black12))),
      //                             onChanged: (val) {
      //
      //                             }),
      //                       ),
      //                     ],
      //                   ),
      //                   Row(
      //                     children: [
      //                       Text("Android: "),
      //                       Checkbox(
      //                         value: isAndroid,
      //                         onChanged: (value) {
      //                           setState(() {
      //                             isAndroid = true;
      //                             isIos = false;
      //                           });
      //                         },
      //                       ),
      //                       SizedBox(height: 5),
      //                       Text("IOS: "),
      //                       Checkbox(
      //                         value: isIos,
      //                         onChanged: (value) {
      //                           setState(() {
      //                             isAndroid = false;
      //                             isIos = true;
      //                           });
      //                         },
      //                       ),
      //                     ],
      //                   ),
      //                   isAndroid?Container(
      //                     height: 30.0,
      //                     margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      //                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
      //                     decoration: BoxDecoration(
      //                         borderRadius: const BorderRadius.all(Radius.circular(15)),
      //                         border: Border.all(
      //                           color: Color(0xFFEFEFEF),
      //                           width: 1,
      //                         ),
      //                         color: Color(0xFF141414)),
      //                     child: DropdownButtonHideUnderline(
      //                       child: DropdownButton(
      //                         // key: ValueKey<Object>(redrawObject!),
      //                         isExpanded: true,
      //                         dropdownColor: Color(0xFF202020),
      //                         value: selectedVersionAndroid,
      //                         icon: SizedBox.shrink(),
      //                         borderRadius: BorderRadius.all(Radius.circular(10)),
      //                         style: const TextStyle(color: Color(0xFFEFEFEF)),
      //                         items: versionsAndroid.map((items) {
      //                           return DropdownMenuItem(
      //                               value: items.toString(),
      //                               child: Text(items.toString()));
      //                         }).toList(),
      //                         onChanged: (newValue) {
      //                           selectedVersionAndroid = newValue.toString();
      //                         },
      //                       ),
      //                     ),
      //                   ):
      //                   Container(
      //                     height: 30.0,
      //                     margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      //                     padding: EdgeInsets.only(left: 20.0, right: 20.0),
      //                     decoration: BoxDecoration(
      //                         borderRadius: const BorderRadius.all(Radius.circular(15)),
      //                         border: Border.all(
      //                           color: Color(0xFFEFEFEF),
      //                           width: 1,
      //                         ),
      //                         color: Color(0xFF141414)),
      //                     child: DropdownButtonHideUnderline(
      //                       child: DropdownButton(
      //                         // key: ValueKey<Object>(redrawObject!),
      //                         isExpanded: true,
      //                         dropdownColor: Color(0xFF202020),
      //                         value: selectedVersionIos,
      //                         icon: SizedBox.shrink(),
      //                         borderRadius: BorderRadius.all(Radius.circular(10)),
      //                         style: const TextStyle(color: Color(0xFFEFEFEF)),
      //                         items: versionsIos.map((items) {
      //                           return DropdownMenuItem(
      //                               value: items.toString(),
      //                               child: Text(items.toString()));
      //                         }).toList(),
      //                         onChanged: (newValue) {
      //                           selectedVersionIos = newValue.toString();
      //                         },
      //                       ),
      //                     ),
      //                   ),
      //
      //                   SizedBox(height: 10),
      //                   IconButton(
      //                       onPressed: () async {
      //                         sendMail();
      //                       },
      //                       icon: Icon(Icons.check))
      //                 ],
      //               ),
      //             ),
      //           );
      //         });
      //       },
      //     );
      //   },
      // )
    );
  }
}

class VerificationScreen2 extends StatefulWidget {
  @override
  _VerificationScreen2State createState() => _VerificationScreen2State();
}

class _VerificationScreen2State extends State<VerificationScreen2> {
  late List<TextStyle?> otpTextStyles;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    otpTextStyles = [
      createStyle(accentPurpleColor),
      createStyle(accentYellowColor),
      createStyle(accentDarkGreenColor),
      createStyle(accentOrangeColor),
      createStyle(accentPinkColor),
      createStyle(accentPurpleColor),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verification Code",
              style: theme.textTheme.headline4,
            ),
            SizedBox(height: 16),
            Text(
              "We texted you a code",
              style: theme.textTheme.headline6,
            ),
            Text("Please enter it below", style: theme.textTheme.headline6),
            Spacer(flex: 2),
            OtpTextField(
              numberOfFields: 6,
              borderColor: accentPurpleColor,
              focusedBorderColor: accentPurpleColor,
              styles: otpTextStyles,
              showFieldAsBox: false,
              borderWidth: 4.0,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This helps us verify every user in our market place",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyText1,
                ),
              ),
            ),
            Center(
              child: Text(
                "Didn't get code?",
                style: theme.textTheme.subtitle1,
              ),
            ),
            Spacer(flex: 3),
            CustomButton(
              onPressed: () {},
              title: "Confirm",
              color: primaryColor,
              textStyle: theme.textTheme.subtitle1?.copyWith(
                color: Colors.white,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(
        child: Container(
          width: 50,
          height: 50,
          child: const Icon(
            Icons.add,
            color: globaldata.blackBackground2,
            size: 20,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        onPressed: () {

          },
      )
    );
  }

  TextStyle? createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.headline3?.copyWith(color: color);
  }
}

// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: [
//             const SizedBox(height: 150),
//             // This my custom widget
//             const Text("Test Otp"),
//             const SizedBox(height: 20),
//             Container(
//               decoration: const BoxDecoration(color: Colors.transparent),
//               height: 100,
//               child: OtpTextField(
//                 fieldWidth: 60,
//                 borderWidth: 5,
//                 keyboardType: TextInputType.number,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 numberOfFields: 4,
//                 borderRadius: BorderRadius.circular(15),
//                 focusedBorderColor: primaryColor,
//                 styles: [
//                   createStyle(context, Colors.black),
//                   createStyle(context, Colors.black),
//                   createStyle(context, Colors.black),
//                   createStyle(context, Colors.black),
//                 ],
//                 autoFocus: true,
//                 //set to true to show as box or false to show as dash
//                 showFieldAsBox: true,
//                 //runs when a code is typed in
//                 onCodeChanged: (String code) {
//                   //handle validation or checks here
//                 },
//                 //runs when every textfield is filled
//                 onSubmit: (String verificationCode) {
//                   showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text("Verification Code"),
//                           content: Text('Code entered is $verificationCode'),
//                         );
//                       });
//                 }, // end onSubmit
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   TextStyle? createStyle(BuildContext context, Color color) {
//     return Theme.of(context).textTheme.headline2!.copyWith(color: color);
//   }
// }

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.title,
    this.onPressed,
    this.height = 60,
    this.elevation = 1,
    this.color = primaryColor,
    this.textStyle,
  });

  final VoidCallback? onPressed;
  final double height;
  final double elevation;
  final String title;
  final Color color;

  // final BorderSide borderSide;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          topLeft: const Radius.circular(30.0),
          bottomLeft: const Radius.circular(30.0),
        ),
      ),
      height: height,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: textStyle,
          )
        ],
      ),
    );
  }
}