import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:project/new_bloc/core/ui/foundations/sizes.dart';
import 'package:project/new_bloc/core/ui/molecules/chat_list_tile.dart';

import '../atoms/status.dart';
import '../foundations/themes/light.dart';
import '../tokens/colors.dart';

class ChatAppBar extends material.StatelessWidget
    with material.PreferredSizeWidget {
  final String title;
  final Function()? onPressed;
  ChatAppBar({required this.title, required this.onPressed});

  @override
  material.Widget build(material.BuildContext context) {
    return material.AppBar(
      leading: material.IconButton(
        icon: Icon(
          material.Icons.arrow_back,
          color: LightTextPalette().darker,
        ),
        onPressed: onPressed,
      ),
      // title: material.Text(title).heading(LightTextPalette().darker),
      title: material.ListTile(
        leading: material.CircleAvatar(
          child: material.Container(
            alignment: Alignment.center,
            child: material.Text(title.substring(0, 2))
                .body(color: LightTextPalette().darker),
          ),
        ),
        title: material.Text(title).heading(
          LightTextPalette().darker,
        ),
        subtitle: Row(
          children: [
            material.Text('Offline').body(
              color: LightTextPalette().darker,
            ),
            material.SizedBox(
              width: 10,
            ),
            Status(
              color: material.Colors.red,
            ),
          ],
        ),
        // onTap: () => Navigator.push(
        //   context,
        //   material.MaterialPageRoute(builder: (context) => const SecondRoute()),
        // ),
      ),
      backgroundColor: hytechLight.primaryColor,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: material.Size.fromHeight(0),
        child: material.Divider(
          height: 2,
        ),
      ),
    );
  }

  @override
  material.Size get preferredSize => material.Size.fromHeight(60);
}
