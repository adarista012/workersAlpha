import 'package:flutter/material.dart';

import '../../global.dart';

class LargeButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;

  const LargeButton(
      {Key key,
      @required this.color,
      @required this.textColor,
      @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
      width: 200,
      //width: MediaQuery.of(context).size.width / 5,
      height: 40,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        color: color,
        child: Text(
          text,
          style: labelBoxWorkers2.copyWith(fontSize: 20, color: textColor),
        ),
        onPressed: () {},
      ),
    );
  }
}
