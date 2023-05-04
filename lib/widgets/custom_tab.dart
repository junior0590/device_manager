import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String data;

  const CustomTab({
    Key? key,
    required this.fontSizeTabs,
    required this.data,
  }) : super(key: key);

  final double fontSizeTabs;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        data,
        style: TextStyle(
          fontFamily: 'Chivo',
          fontWeight: FontWeight.bold,
          fontSize: fontSizeTabs,
        ),
      ),
    );
  }
}
