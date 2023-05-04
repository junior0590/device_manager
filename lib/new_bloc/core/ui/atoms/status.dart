import 'package:flutter/material.dart' as material;

class Status extends material.StatelessWidget {
  final material.Color? color;
  const Status({super.key, this.color});

  @override
  material.Widget build(material.BuildContext context) {
    return material.ClipOval(
      child: material.Container(
        height: 10,
        width: 10,
        color: color,
      ),
    );
  }
}
