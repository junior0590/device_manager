import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:project/new_bloc/core/ui/foundations/sizes.dart';
import 'package:project/new_bloc/core/ui/tokens/colors.dart';

import '../atoms/chat_badge.dart';
import '../atoms/status.dart';

class ChatListTile extends material.StatelessWidget {
  final void Function() onTap;
  final material.Color? color;
  final String title;
  final String subtitle;
  final int? count;
  const ChatListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.count,
    this.color,
  });

  @override
  material.Widget build(material.BuildContext context) {
    return material.ListTile(
        leading: material.CircleAvatar(
          child: Stack(
            children: [
              material.Container(
                alignment: Alignment.center,
                child: material.Text(title.substring(0, 2))
                    .body(color: LightTextPalette().darker),
              ),
              material.Container(
                alignment: Alignment.bottomRight,
                child: Status(
                  color: material.Colors.red,
                ),
              ),
            ],
          ),
        ),
        title: material.Text(title).body(
          color: LightTextPalette().darker,
        ),
        subtitle: material.Text(subtitle).body(
          color: LightTextPalette().darker,
        ),
        trailing: count! > 0
            ? Column(
                children: [
                  Text('Now').body(color: LightTextPalette().passive),
                  ChatBadge(number: count.toString()),
                ],
              )
            : material.SizedBox(),
        onTap: onTap);
  }
}
