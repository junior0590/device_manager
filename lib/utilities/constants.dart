import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'helpers/globaldata.dart';

final kHintTextStyle = TextStyle(
  color: Color.fromARGB(255, 255, 255, 255),
  fontFamily: 'Chivo',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'Chivo',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white10,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final kDashboardSearchDecoration = BoxDecoration(
  gradient: greenGradient,
  borderRadius: BorderRadius.circular(60),
  color: greenColor,
  shape: BoxShape.rectangle,
);

final double kScreenWidth = 450;

final TextStyle kGreenTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'Chivo',
  fontSize: 14,
  color: Color(0xFF043301),
);

final TextStyle kFormTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'Chivo',
  fontSize: 14,
);

final alertStyle = AlertStyle(
  buttonAreaPadding: EdgeInsets.zero,
  backgroundColor: Color(0xFF353535),
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  isButtonVisible: false,
  animationDuration: Duration(milliseconds: 150),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  titleStyle:
      TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
  alertAlignment: Alignment.center,
  titleTextAlign: TextAlign.left,
);
