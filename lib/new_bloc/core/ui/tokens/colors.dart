import 'dart:ui';

import 'package:flutter/material.dart' as material;

// class HytechColor extends Color {
//   HytechColor(int value) : super(value);

//   HytechColor._color(Color color) : super(color.value);
// }

abstract class HytechColorPalette {
  Map<int, Color>? color;
  Color? main;
  Color? highlight;
  Color? secondary;
  Color? accent;
  late Map<int, Color> grayscale;
  // Map<>
}

class LightColorPalette implements HytechColorPalette {
  @override
  Map<int, Color>? color = <int, Color>{
    400: Color(0xFFdadada),
    500: Color(0xFFc1c1c1),
    600: Color(0xFF7b8289),
    700: Color(0xFF090909)
  };

  @override
  Color? main = Color(0xFFffffff);

  @override
  Color? highlight = Color(0xFFf0f0f0);

  @override
  Color? secondary = Color(0xFF090909);

  @override
  Color? accent = Color(0xFF268dfb);

  @override
  Map<int, Color> grayscale = <int, Color>{
    200: const Color(0xFFc1c1c1),
    300: const Color(0xFF868686),
    400: const Color(0xFFdadada),
    500: const Color(0xFFc1c1c1),
    600: const Color(0xFF7b8289),
    700: const Color(0xFF090909),
  };
}

abstract class HytechTextColorPalette {
  Color? darker;
  Color? darkerAlt;
  Color? passive;
  Color? deactivated;
  Map<int, Color>? color;
  Map<int, Color>? highlight;
}

class LightTextPalette implements HytechTextColorPalette {
  @override
  Map<int, Color>? color = <int, Color>{};

  @override
  Color? darker = Color(0xFF000000);

  @override
  Color? darkerAlt = Color(0xFF000000);

  @override
  Color? deactivated = Color(0xFF4a4a4a);

  @override
  Color? passive = Color(0xFFc1c1c1);

  @override
  Map<int, Color>? highlight = {
    400: Color(0xFF268dfb),
    500: Color(0xFFFFFFFF),
  };
}

// class Text extends material.Text {
//   final String? styleName;
//   Text(String data, {material.TextStyle? style, this.styleName})
//       : super(data, style: style);

//   // @override
//   // material.Widget build(material.BuildContext context) {
//   //   super.build(context);
//   //   // if (styleName == 'A') {
//   //   //   //  = ;
//   //   //   return Text(
//   //   //     data ?? 'A',
//   //   //     style: material.TextStyle(fontWeight: material.FontWeight.w100),
//   //   //   );
//   //   // } else if (styleName == 'B') {
//   //   //   return Text(
//   //   //     data ?? 'B',
//   //   //     style: material.TextStyle(fontWeight: material.FontWeight.w900),
//   //   //   );
//   //   // } else {
//   //   //   return Text(
//   //   //     data ?? 'none',
//   //   //     // style: material.TextStyle(fontWeight: material.FontWeight.w900),
//   //   //   );
//   //   // }
//   // }

//   // @override
//   // // TODO: implement style
//   // material.TextStyle? get style => material.TextStyle();
// }

// class A {
//   final String? data;
//   final String? textStyle;

//   A(this.data, {this.textStyle});
// }

// class B extends A {
//   // final String? newStyle;
//   // final String? textStyle;
//   B(String data, {String? style}) : super(data, textStyle: style);
// }

// class Test extends material.StatelessWidget {
//   const Test({super.key});

//   @override
//   material.Widget build(material.BuildContext context) {
//     // B(
//     //   'hola',
//     //   style: TextStyle(fontStyle: FontStyle.normal),
//     // );
//     return const material.Placeholder();
//   }
// }
