import 'package:flutter/material.dart';

class SkeletonDeviceCardDesktop extends StatelessWidget {
  const SkeletonDeviceCardDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center()
    );
  }
}
