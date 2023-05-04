import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:project/new_bloc/core/ui/foundations/sizes.dart';
import 'package:project/new_bloc/core/ui/foundations/themes/light.dart';
import 'package:project/new_bloc/core/ui/tokens/colors.dart';

class AppBar extends material.StatelessWidget
    with material.PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  AppBar({required this.title, this.actions});

  @override
  material.Widget build(material.BuildContext context) {
    return material.AppBar(
      title: material.Text(title).heading(LightTextPalette().darker),
      backgroundColor: hytechLight.primaryColor,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: material.Size.fromHeight(0),
        child: material.Divider(
          height: 2,
        ),
      ),
      actions: actions,
    );
  }

  @override
  material.Size get preferredSize => material.Size.fromHeight(60);
}
