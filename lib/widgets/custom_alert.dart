import 'package:flutter/material.dart';

class CustomAlert extends StatefulWidget {
  final String title;
  final List<Widget> actions;
  final Widget content;
  const CustomAlert({
    Key? key,
    required this.title,
    required this.actions,
    required this.content,
  }) : super(key: key);

  @override
  State<CustomAlert> createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width > 450 ? 500 : 400,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Flexible(
              child: widget.content,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: widget.actions,
            ),
            // widget.actions,
          ],
        ),
      ),
    );
  }
}
