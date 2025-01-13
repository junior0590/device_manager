import 'package:flutter/material.dart';

class SkeletonTaskCard extends StatelessWidget {
  const SkeletonTaskCard({
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
