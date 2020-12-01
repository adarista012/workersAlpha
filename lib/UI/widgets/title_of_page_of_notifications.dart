import 'package:flutter/material.dart';

class TitleOfPageOfNotifications extends StatelessWidget {
  const TitleOfPageOfNotifications({
    Key key,
    @required String title,
    @required int numberOfNotifications,
  })  : _title = title,
        _numberOfNotifications = numberOfNotifications,
        super(key: key);

  final String _title;
  final int _numberOfNotifications;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _title,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          width: 6,
        ),
        _numberOfNotifications > 0
            ? Container(
                alignment: Alignment.center,
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Text(
                  _numberOfNotifications.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              )
            : Text(""),
      ],
    );
  }
}
