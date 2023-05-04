import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final double height;
  const ExpandableText(
    this.text, {
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > widget.height.toInt()) {
      firstHalf = widget.text.substring(0, widget.height.toInt());
      secondHalf =
          widget.text.substring(widget.height.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 300),
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hiddenText ? (firstHalf + '...') : (firstHalf + secondHalf),
                ),
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  icon:
                      Icon(hiddenText ? Icons.expand_more : Icons.expand_less),
                  label: Text(hiddenText ? 'Show more' : 'Show less'),
                ),
              ],
            ),
    );
  }
}
