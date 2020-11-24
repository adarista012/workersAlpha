import 'package:flutter/cupertino.dart';
import 'package:Workers/global.dart';

class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({@required this.child, this.height = 150});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      //color: Colors.cyan,
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              workersSecondary,
              workersColorButton,
            ],
            begin: const FractionalOffset(1, -1),
            end: const FractionalOffset(0.0, 1),
            stops: [0, 1],
            tileMode: TileMode.clamp),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(140),
            bottomRight: Radius.circular(140)),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
