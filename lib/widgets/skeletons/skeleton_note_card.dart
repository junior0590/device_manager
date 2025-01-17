import 'package:flutter/material.dart';

class SkeletonNoteCard extends StatelessWidget {
  const SkeletonNoteCard({
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
