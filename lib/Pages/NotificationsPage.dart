import 'package:Workers/UI/widgets/title_of_page_of_notifications.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _notificationsPages = [
      Container(
        child: Center(
          child: Text('user'),
        ),
      ),
      Container(
        child: Center(
          child: Text('workers'),
        ),
      ),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            "Notificaciones",
            style: TextStyle(color: workersColorButton),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: TitleOfPageOfNotifications(
                    title: 'Servicios solicitados', numberOfNotifications: 0),
              ),
              Tab(
                icon: TitleOfPageOfNotifications(
                    title: 'Ofertas de Trabajo', numberOfNotifications: 2),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: _notificationsPages,
        ),
      ),
    );
  }
}
