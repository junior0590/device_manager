import 'package:flutter/material.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class SelectPlaceActionCustom extends StatelessWidget {
  final String locationName;
  final String tapToSelectActionText;
  final VoidCallback onTap;

  SelectPlaceActionCustom(this.locationName, this.onTap, this.tapToSelectActionText);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: <Widget>[
              Icon(Icons.cancel, size: 32, color: Colors.red),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(locationName, style: TextStyle(fontSize: 16)),
                    Text(this.tapToSelectActionText, style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
              ),
              Icon(Icons.check_circle, color: globaldata.greenColor, size: 32,)
            ],
          ),
        ),
      ),
    );
  }
}