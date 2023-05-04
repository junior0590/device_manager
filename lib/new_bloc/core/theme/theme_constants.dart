import 'package:flutter/material.dart';

import '../../../utilities/helpers/helpers.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Chivo',
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Palette.hytech,
    brightness: Brightness.dark,
    backgroundColor: blackBackground1,
    cardColor: Color(0xFF141414),
    accentColor: Palette.hytechAccent,
  ),
  // appBarTheme: const AppBarTheme(
  //   backgroundColor: Colors.transparent,
  // ),
  cardTheme: CardTheme(
    color: Color(0xFF141414),
  ),

  dialogTheme: DialogTheme(
    backgroundColor: blackBackground3,
  ),
  // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //   backgroundColor: blackBackground1,
  //   // selectedIconTheme: IconThemeData(color: greenColor),
  //   selectedItemColor: greenColor,
  // ),
  scaffoldBackgroundColor: blackBackground1,
  // useMaterial3: false,
  brightness: Brightness.dark,
  primaryColor: Palette.hytech,
  buttonTheme: ButtonThemeData(
    buttonColor: blackBackground2,
  ),
  // iconTheme: IconThemeData(
  //   size: 18,
  //   color: iconColour,
  // ),
  // textButtonTheme: TextButtonThemeData(
  //   style: ButtonStyle(
  //     overlayColor: MaterialStateProperty.resolveWith((states) {
  //       if (states.contains(MaterialState.pressed)) {
  //         return Colors.grey[900];
  //       } else {
  //         return Colors.grey[800];
  //       }
  //     }),
  //   ),
  // ),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     backgroundColor: MaterialStateProperty.resolveWith(
  //       (states) {
  //         return greenColor;
  //       },
  //     ),
  //   ),
  // ),
  // floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //   backgroundColor: greenColor,
  //   splashColor: splashColour,
  // ),
  // checkboxTheme: CheckboxThemeData(
  //   side: const BorderSide(
  //     color: iconColour,
  //     width: 2,
  //   ),
  //   checkColor:
  //       MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //     if (states.contains(MaterialState.disabled)) {
  //       return null;
  //     }
  //     if (states.contains(MaterialState.selected) ||
  //         !states.contains(MaterialState.selected)) {
  //       return blackBackground1;
  //     }
  //     return null;
  //   }),
  //   fillColor:
  //       MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //     if (states.contains(MaterialState.disabled)) {
  //       return null;
  //     }
  //     if (states.contains(MaterialState.selected) ||
  //         !states.contains(MaterialState.selected)) {
  //       return greenColor;
  //     }
  //     return null;
  //   }),
  // ),
  // radioTheme: RadioThemeData(
  //   fillColor:
  //       MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //     if (states.contains(MaterialState.disabled)) {
  //       return null;
  //     }
  //     if (states.contains(MaterialState.selected) ||
  //         !states.contains(MaterialState.selected)) {
  //       return greenColor;
  //     }
  //     return null;
  //   }),
  // ),
  // switchTheme: SwitchThemeData(
  //   thumbColor:
  //       MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //     if (states.contains(MaterialState.disabled)) {
  //       return null;
  //     }
  //     if (states.contains(MaterialState.selected)) {
  //       return greenColor;
  //     }
  //     return null;
  //   }),
  // ),
  // inputDecorationTheme: InputDecorationTheme(
  //   // focusColor: greenColor,
  //   prefixIconColor: greenColor,
  //   suffixIconColor: greenColor,
  //   focusedBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: greenColor),
  //     borderRadius: BorderRadius.circular(25),
  //   ),
  // ),
  // textSelectionTheme: TextSelectionThemeData(
  //   cursorColor: greenColor,
  // ),
  // snackBarTheme: SnackBarThemeData(
  //   actionTextColor: greenColorLetter,
  // ),
);
