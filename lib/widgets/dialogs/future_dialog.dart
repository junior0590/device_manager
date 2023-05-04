import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:project/utilities/helpers/globaldata.dart';

class FutureDialog extends StatefulWidget {
  final String title;
  final Future<Response> future;
  final FileAction action;
  final Widget onSuccess;
  final Widget onError;
  const FutureDialog({
    Key? key,
    required this.title,
    required this.future,
    required this.action,
    required this.onSuccess,
    required this.onError,
  }) : super(key: key);

  @override
  State<FutureDialog> createState() => _FutureDialogState();
}

class _FutureDialogState extends State<FutureDialog> {
  Path chooseIcon({FileAction? action}) {
    print('😃😃😃😃 klk');
    if (action == FileAction.upload) {
      return upload(Size(100, 100));
    } else if (action == FileAction.delete) {
      return delete(Size(100, 100));
    } else {
      return Path();
    }
  }

  Path upload(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4708333, size.height * 0.7895833);
    path_0.lineTo(size.width * 0.5333333, size.height * 0.7895833);
    path_0.lineTo(size.width * 0.5333333, size.height * 0.5802083);
    path_0.lineTo(size.width * 0.6187500, size.height * 0.6656250);
    path_0.lineTo(size.width * 0.6625000, size.height * 0.6218750);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.4635417);
    path_0.lineTo(size.width * 0.3395833, size.height * 0.6239583);
    path_0.lineTo(size.width * 0.3833333, size.height * 0.6677083);
    path_0.lineTo(size.width * 0.4708333, size.height * 0.5802083);
    path_0.close();
    path_0.moveTo(size.width * 0.1666667, size.height * 0.9166667);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.08333333);
    path_0.lineTo(size.width * 0.6052083, size.height * 0.08333333);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.3114583);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.9166667);
    path_0.close();
    path_0.moveTo(size.width * 0.5739583, size.height * 0.3395833);
    path_0.lineTo(size.width * 0.5739583, size.height * 0.1458333);
    path_0.lineTo(size.width * 0.2291667, size.height * 0.1458333);
    path_0.lineTo(size.width * 0.2291667, size.height * 0.8541667);
    path_0.lineTo(size.width * 0.7708333, size.height * 0.8541667);
    path_0.lineTo(size.width * 0.7708333, size.height * 0.3395833);
    path_0.close();
    path_0.moveTo(size.width * 0.2291667, size.height * 0.1458333);
    path_0.lineTo(size.width * 0.2291667, size.height * 0.3395833);
    path_0.lineTo(size.width * 0.2291667, size.height * 0.1458333);
    path_0.lineTo(size.width * 0.2291667, size.height * 0.8541667);
    path_0.close();

    return path_0;
  }

  Path delete(Size size) {
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

    // Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    // paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    // canvas.drawPath(path_0, paint_0_fill);

    return path_0;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: FutureBuilder(
        future: widget.future,
        builder: (context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            // return Text('${snapshot.data!.statusMessage}');
            Future.delayed(Duration(seconds: 2), () {
              Navigator.of(context).pop(true);
            });
            return SizedBox(
              height: 100,
              child: widget.onSuccess,
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
              height: 100,
              child: Center(
                child: Column(
                  children: [
                    LiquidCustomProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Palette.hytech),
                      direction: Axis.vertical,
                      shapePath: chooseIcon(action: widget.action),
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            Future.delayed(Duration(seconds: 5), () {
              Navigator.of(context).pop(true);
            });
            return SizedBox(
              height: 100,
              child: widget.onError,
            );
          } else {
            return SizedBox(
              height: 100,
              child: widget.onError,
            );
          }
        },
      ),
    );
  }
}
