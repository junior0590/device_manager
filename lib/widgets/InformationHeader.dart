import 'package:flutter/material.dart';

Widget informationHeader(String title, String message) {
  return Container(
      width: 424.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  fontFamily: 'Chivo'
              ),
              textAlign: TextAlign.left
          ),
          SizedBox(height: 10.0),
          Text(message,
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18.0,
                  fontFamily: 'Chivo'
              ),
              textAlign: TextAlign.left
          ),
        ],
      )
  );
}