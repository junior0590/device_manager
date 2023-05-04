// import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2718750, size.height * 0.8750000);
    path_0.quadraticBezierTo(size.width * 0.2458333, size.height * 0.8750000,
        size.width * 0.2276042, size.height * 0.8567708);
    path_0.quadraticBezierTo(size.width * 0.2093750, size.height * 0.8385417,
        size.width * 0.2093750, size.height * 0.8125000);
    path_0.lineTo(size.width * 0.2093750, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.1562500);
    path_0.lineTo(size.width * 0.3625000, size.height * 0.1562500);
    path_0.lineTo(size.width * 0.3625000, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.6375000, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.6375000, size.height * 0.1562500);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.1562500);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.7906250, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.7906250, size.height * 0.8125000);
    path_0.quadraticBezierTo(size.width * 0.7906250, size.height * 0.8375000,
        size.width * 0.7718750, size.height * 0.8562500);
    path_0.quadraticBezierTo(size.width * 0.7531250, size.height * 0.8750000,
        size.width * 0.7281250, size.height * 0.8750000);
    path_0.close();
    path_0.moveTo(size.width * 0.7281250, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.2718750, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.2718750, size.height * 0.8125000);
    path_0.lineTo(size.width * 0.7281250, size.height * 0.8125000);
    path_0.close();
    path_0.moveTo(size.width * 0.3822917, size.height * 0.7229167);
    path_0.lineTo(size.width * 0.4447917, size.height * 0.7229167);
    path_0.lineTo(size.width * 0.4447917, size.height * 0.3072917);
    path_0.lineTo(size.width * 0.3822917, size.height * 0.3072917);
    path_0.close();
    path_0.moveTo(size.width * 0.5552083, size.height * 0.7229167);
    path_0.lineTo(size.width * 0.6177083, size.height * 0.7229167);
    path_0.lineTo(size.width * 0.6177083, size.height * 0.3072917);
    path_0.lineTo(size.width * 0.5552083, size.height * 0.3072917);
    path_0.close();
    path_0.moveTo(size.width * 0.2718750, size.height * 0.2187500);
    path_0.lineTo(size.width * 0.2718750, size.height * 0.8125000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
