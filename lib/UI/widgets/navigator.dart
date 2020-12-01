import 'package:Workers/Pages/HomePage.dart';
import 'package:Workers/Pages/NotificationsPage.dart';
import 'package:Workers/Pages/ProfilePage.dart';
import 'package:Workers/Pages/SettingsPage.dart';
import 'package:Workers/Pages/WalletPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../global.dart';

class NavigatorBarWorkers extends StatefulWidget {
  @override
  _NavigatorBarWorkersState createState() => _NavigatorBarWorkersState();
}

class _NavigatorBarWorkersState extends State<NavigatorBarWorkers> {
  int _currentIndex = 2;

  final List<Widget> _views = [
    WalletPage(),
    NotificationsPage(),
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: workersColorButton,
        onTap: onTabTapped,
        index: 2,
        backgroundColor: Colors.white,
        //backgroundColor: workersPrimary,
        items: [
          Icon(
            Icons.credit_card,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
