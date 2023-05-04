import 'package:flutter/material.dart';

Widget buildInput(String label, String type, context, height, width,
    [Function(String)? setValue]) {
  // FocusNode fieldNode = FocusNode();

  if (type == "email") {
    return Container(
      height: height,
      width: width,
      child: TextField(
        // focusNode: fieldNode,
        keyboardType: TextInputType.emailAddress,
        onChanged: setValue,
        maxLines: 1,
        cursorColor: Color.fromARGB(255, 255, 255, 255),
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Chivo',
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0),
          filled: true,
          fillColor: Color.fromRGBO(7, 7, 7, 0.8),
          suffixIcon: Icon(
            Icons.person,
          ),
          focusColor: Color.fromARGB(255, 255, 255, 255),
          hintText: label,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Chivo',
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromRGBO(192, 196, 192, 1),
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(60))),
          focusedBorder: const OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 16, 251, 6), width: 3.0),
              borderRadius: BorderRadius.all(Radius.circular(60))),
        ),
      ),
    );
  } else if (type == "password") {
    return Container(
      height: height,
      width: width,
      child: TextField(
        obscureText: true,
        onChanged: setValue,
        cursorColor: Color.fromARGB(255, 255, 255, 255),
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontFamily: 'Chivo',
        ),
        maxLines: 1,
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.only(left: 10.0),
            filled: true,
            fillColor: Color.fromRGBO(7, 7, 7, 0.8),
            hintText: label,
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Chivo',
            ),
            suffixIcon: Icon(
              Icons.lock,
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromRGBO(192, 196, 192, 1),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(60))),
            focusedBorder: const OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 16, 251, 6), width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(60))),
            focusColor: Color.fromARGB(255, 16, 251, 6),
            suffixStyle: TextStyle()),
      ),
    );
  }

  return Container(
    alignment: Alignment.centerLeft,
    height: height,
    width: width,
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: setValue,
      cursorColor: Color.fromARGB(255, 16, 251, 6),
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Chivo',
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(192, 196, 192, 1),
        labelText: label,
        labelStyle: TextStyle(
            color: Color.fromARGB(255, 16, 251, 6), fontFamily: 'Chivo'),
        helperText: 'Assistive text',
        enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 2.0)),
        focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 16, 251, 6), width: 3.0)),
      ),
    ),
  );
}
