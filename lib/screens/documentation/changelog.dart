
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:webview_flutter/webview_flutter.dart';

class ChangeLog extends StatelessWidget
{ ChangeLog({Key? key}) : super(key: key);

WebViewController? _controller;

_loadHtmlFromAssets() async {
  String fileText = await rootBundle.loadString('assets/documentation/CHANGELOG.html');
  _controller!.loadUrl( Uri.dataFromString(
      fileText,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8')
  ).toString());
}


@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Material(
      color: globaldata.blackBackground1,
      //type: MaterialType.transparency,
      child: Column(
        children: [
          Flexible(
            flex: 9,
            child: WebView(
              backgroundColor: globaldata.blackBackground2,
              debuggingEnabled: true,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'about:blank',
              onWebViewCreated: (WebViewController c) {
                _controller = c;
                _loadHtmlFromAssets();
              },
              onPageFinished: (value) {
              },
            ),
          ),
          Flexible(
            flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK")),
              )
          ),
        ],
      ),
    ),
  );
}

}
