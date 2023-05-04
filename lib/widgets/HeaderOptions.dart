
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

Widget getHeaderOptions(BuildContext context){
  late Future<void> _launched;

  List<Widget> headerButton = [];

  if(globaldata.mobilePhone.isNotEmpty){
    headerButton.add(
      Expanded(
        flex: 1,
        child: IconButton(
          icon: Icon(
            Icons.phone,
            size: 18,
          ),
          onPressed: () {
            launch('tel://' + globaldata.mobilePhone.toString());
          },
        ),
      ),
    );
  }
  if(globaldata.email.isNotEmpty){
    headerButton.add(
      Expanded(
        flex: 1,
        child: IconButton(
          icon: Icon(
            Icons.email,
            size: 18,
          ),
          onPressed: () {

            _launched =
                _openUrl('mailto:' + globaldata.email);
          },
        ),
      ),
    );
  }
  return  Expanded(
    flex: 4,
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          ...headerButton,
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.edit,
                size: 18,
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context)=> ModuleEdit())
                // );

              },
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 18,
              ),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    ),
  );
}

Future<void> _openUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}