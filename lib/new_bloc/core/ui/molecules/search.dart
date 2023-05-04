import 'package:flutter/material.dart';

import '../atoms/input.dart';

class Search extends StatelessWidget {
  final TextEditingController controller;
  const Search({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Input(
      label: Text('Search'),
      hintText: 'Search',
      preffixIcon: Icon(
        Icons.search,
        color: Colors.red,
      ),
      controller: controller,
    );
  }
}
