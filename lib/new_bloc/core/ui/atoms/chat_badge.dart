import 'package:flutter/material.dart' as material;
import 'package:project/new_bloc/core/ui/foundations/sizes.dart';
import 'package:project/new_bloc/core/ui/tokens/colors.dart';

class ChatBadge extends material.StatelessWidget {
  final String? number;
  const ChatBadge({super.key, required this.number});

  @override
  material.Widget build(material.BuildContext context) {
    return material.ClipOval(
      child: material.Container(
        height: 25,
        width: 25,
        color: LightColorPalette().accent,
        child: material.Center(
          child: material.Text(number!).body(
            color: LightTextPalette().highlight![500],
          ),
        ),
      ),
    );
  }
}
