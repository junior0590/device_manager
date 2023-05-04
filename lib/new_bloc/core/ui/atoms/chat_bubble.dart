import 'package:flutter/material.dart';
import 'package:project/new_bloc/core/helpers/helpers.dart';
import 'package:project/new_bloc/core/ui/foundations/sizes.dart';

import '../../../../utilities/helpers/globaldata.dart' as globaldata;
import '../tokens/colors.dart';

class ChatBubble extends StatelessWidget {
  final int id;
  final int from;
  final String content;
  final String time;
  final String type;
  final String url;
  final bool isRead;
  final String status;
  final AnimationController animationController;
  const ChatBubble({
    super.key,
    required this.id,
    required this.from,
    required this.content,
    required this.time,
    required this.type,
    required this.url,
    required this.isRead,
    required this.status,
    required this.animationController,
  });

  BoxDecoration _status() {
    if (status == 'error') {
      return BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      );
    } else {
      return BoxDecoration(
        color: isRead ? LightColorPalette().accent : null,
        shape: BoxShape.circle,
        border: isRead
            ? null
            : Border.all(
                width: 2,
                color: LightColorPalette().accent!,
              ),
      );
    }
  }

  Widget _content({required Color color}) {
    if (type == 'text') {
      return Text(
        content,
      ).body(color: color);
    } else if (type == 'image') {
      // Radius.circular(15),
      return ClipRRect(
          borderRadius: BorderRadius.circular(15), child: Image.network(url));
    } else if (type == 'file') {
      return ListTile(
        leading: Icon(Icons.description),
        onTap: () {
          print('downloading file');
        },
      );
    } else {
      return Container(
        color: Colors.amber,
      );
    }
  }

  Widget _myMessage() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(right: 5, bottom: 5, left: 75),
            child: Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 50),
              child: _content(color: LightColorPalette().highlight!),
              decoration: BoxDecoration(
                color: LightColorPalette().accent!,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('${DateTime.parse(time).hour}:${DateTime.parse(time).minute}')
                  .body(color: LightColorPalette().secondary),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: _status(),
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _notMyMessage() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.only(left: 5, right: 75),
            child: _content(color: LightColorPalette().secondary!),
            decoration: BoxDecoration(
              color: LightColorPalette().grayscale[400],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            margin: EdgeInsets.only(left: 5, bottom: 5, right: 75),
            // constraints: BoxConstraints(maxWidth: 200),
            child: Text(
              '${DateTime.parse(time).hour}:${DateTime.parse(time).minute}',
            ).body(color: LightColorPalette().secondary),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isMine = globaldata.userId == from ? true : false;
    return
        // FadeTransition(
        //   opacity: animationController,
        //   child: SizeTransition(
        //     sizeFactor:
        //         CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        // child:
        Container(
      child: isMine ? _myMessage() : _notMyMessage(),
      //   ),
      // ),
    );
  }
}
