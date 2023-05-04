import 'package:flutter/material.dart';

import '../../../utilities/helpers/helpers.dart';

extension CustomTextTheme on TextTheme {
  TextStyle get textLink => const TextStyle(
      decoration: TextDecoration.underline, color: Colors.blue, fontSize: 12);
  TextStyle get textDropdownMenuItem => const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Chivo',
        fontSize: 14,
      );
  TextStyle get textDropdown => const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Chivo',
        fontSize: 12,
        color: Color(0xFF043301),
      );
}

extension CustomButtonTheme on TextButtonThemeData {
  // ButtonStyle get dialog => ButtonStyle(
  //       // textStyle: MaterialStateProperty.resolveWith((Set<MaterialState> states){
  //       //   if(states)
  //       // }),
  //       textStyle: MaterialStateProperty.all<TextStyle?>(
  //         TextStyle(
  //           color: greenColor,
  //         ),
  //       ),
  //       foregroundColor: MaterialStateProperty.resolveWith<Color?>(
  //           (Set<MaterialState> states) {
  //         if (states.contains(MaterialState.disabled)) {
  //           return null;
  //         }
  //         if (states.contains(MaterialState.selected)) {
  //           return greenColor;
  //         }
  //       }),
  //     );
  // ButtonStyle get dialog => TextButton.styleFrom(
  //       foregroundColor: greenColor,
  //     );

  ButtonStyle get neutral => TextButton.styleFrom(
        foregroundColor: iconColour,
      );

  ButtonStyle get bottomNavigationBar => ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return TextStyle(
              color: greenColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            );
          } else {
            return TextStyle(
              color: whiteLetters,
              fontSize: 13,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              decorationThickness: 2,
            );
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) &&
              states.contains(MaterialState.pressed)) {
            return greenColor;
          } else {
            return whiteLetters;
          }
        }),
      );
}

extension CustomElevatedButtonTheme on ElevatedButtonThemeData {
  ButtonStyle get dialogOption => ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 10,
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected) &&
              states.contains(MaterialState.pressed)) {
            return greenColor;
          } else {
            return greenColorLetter;
          }
        }),
      );
}
