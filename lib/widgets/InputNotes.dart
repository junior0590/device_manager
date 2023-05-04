import 'package:flutter/material.dart';

Widget buildInputNotes(String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        height: 70.0,
        width: 424.0,
        child: TextField(
          cursorColor: Color.fromARGB(255, 16, 251, 6),
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Chivo',
          ),
          decoration: InputDecoration(
            focusColor: Color.fromARGB(255, 255, 255, 255),
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 16, 251, 6),
              fontFamily: 'Chivo',
            ),
            helperText: 'Assistive text',
            enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255), width: 1.0)
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 16, 251, 6), width: 3.0)
            ),
          ),
        ),
      ),
    ],
  );
}