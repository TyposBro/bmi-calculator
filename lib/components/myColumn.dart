import 'package:flutter/material.dart';
import "../global/constants.dart";

class MyColumn extends StatelessWidget {
  final String myText;
  final IconData myIcon;

  MyColumn({this.myText, this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(myIcon, size: 80.0),
          SizedBox(height: 15.0),
          Text(myText, style: kTextStyle)
        ]);
  }
}
