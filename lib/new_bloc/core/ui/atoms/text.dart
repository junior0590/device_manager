import 'package:flutter/material.dart';

class OurText extends StatelessWidget {
  final String? text;
  final Color? colorText;
  final double? fontSize;
  final TextAlign? textAlign;
  OurText(
      {Key? key,
      required this.text,
      this.colorText,
      this.fontSize,
      this.textAlign})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(this.text!,
        style: TextStyle(color: this.colorText, fontSize: this.fontSize),
        textAlign: TextAlign.center,
        maxLines: 4);
  }
}
