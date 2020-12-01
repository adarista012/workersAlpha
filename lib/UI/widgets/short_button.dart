import 'package:flutter/material.dart';

import '../../global.dart';

///// los botones solo tienen el disenio como referencia para que no hagamos algo distonto,

class ShortButton extends StatelessWidget {
  final String text;
  final Color color;
  final String rutaOnPressed;

  const ShortButton({
    Key key,
    @required this.text,
    this.color,
    this.rutaOnPressed,
  })  : assert(color == Colors.white),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 45,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: FlatButton(
        minWidth: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        color: color,
        child: Text(
          text,
          style: labelBoxWorkers,
        ),
        onPressed: () {},
      ),
    );
  }
}
