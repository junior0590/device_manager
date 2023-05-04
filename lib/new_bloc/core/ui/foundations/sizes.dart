import 'dart:ui';

import 'package:flutter/material.dart' as material;

extension Heading on material.TextStyle {
  darker() {
    return material.TextStyle(
      fontSize: 30,
    );
  }
}

extension Size on material.Text {
  material.Text heading(Color? color) {
    return material.Text(
      this.data!,
      style: material.TextStyle(
        color: color,
        fontSize: 25,
      ),
    );
  }

  material.Text body({Color? color, FontStyle fontStyle = FontStyle.normal}) {
    return material.Text(
      this.data!,
      style: material.TextStyle(
        color: color,
        fontSize: 15,
        fontStyle: fontStyle,
      ),
    );
  }
}
