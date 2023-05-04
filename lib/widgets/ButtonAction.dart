import 'package:flutter/material.dart';
import 'package:project/utilities/services/navigatorKey_var_file.dart';

Widget buildBtn(String label, height, width, [ String route = "none", Function()? action ]) {
  return Container(
    height: height,
    width: width,
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
      onPressed: () => {

        if (route != "none") {
          RouteKey.navigatorKey.currentState!.pushNamed(route)
        } else {
          action!()
        }

      },
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Chivo',
        ),
      ),
    ),
  );
}