// ignore_for_file: public_member_api_docs
import 'dart:convert';

import 'package:about/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/screens/documentation/changelog.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:webview_flutter/webview_flutter.dart';

class About extends StatelessWidget { About({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isIos = theme.platform == TargetPlatform.iOS || theme.platform == TargetPlatform.macOS;

    AboutPage? aboutPage = AboutPage(
      scaffoldBuilder: (context, title, child) {
        return Scaffold(
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(40),
                    child: Image.asset('assets/images/login.png', fit: BoxFit.fill, height: 100, width: 250,)
                ),
                child
              ],
            ),
          ),
        );
      },
      values: {
        'version': "2.0.4",
        'buildNumber': "7",
        'year': DateTime.now().year.toString(),
        'author': "Hytech Gizmo",
      },
      title: Image.asset('assets/images/login.png', fit: BoxFit.cover),
      applicationVersion: 'Version {{ version }}, build #{{ buildNumber }}',
      applicationDescription: Text(
        "Hytech Gizmo App",
        textAlign: TextAlign.justify,
      ),
      // applicationIcon: Container(
      //     padding: EdgeInsets.all(50), color: Colors.black, child: Image.asset('assets/images/login.png', fit: BoxFit.fill)),
      applicationLegalese: 'Copyright © {{ author }}, {{ year }}',
      children: <Widget>[
        ListTile(
          title: Text("View Changelog"),
          leading: Icon(Icons.view_list, color: globaldata.greenColor),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChangeLog()));
          },
        ),
      ],
    );
    if (isIos) {
      return SafeArea(
        child: Container(
          height: 700,
          width: 400,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: CupertinoApp(
                  debugShowCheckedModeBanner: false,
                  title: 'About App',
                  home: aboutPage,
                  theme: CupertinoThemeData(
                    brightness: theme.brightness,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK", style: TextStyle(color: globaldata.greenColor)),
                ),
              )
            ],
          ),
        ),
      );
    }
    return SafeArea(
      child: Container(
        height: 700,
        width: 400,
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: MaterialApp(
                color: globaldata.greenColor,
                debugShowCheckedModeBanner: false,
                title: 'About App',
                home: aboutPage,
                theme: ThemeData(brightness: Brightness.light),
                darkTheme: ThemeData(brightness: Brightness.dark),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
