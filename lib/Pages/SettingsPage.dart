import 'package:Workers/Pages/ProfilePage.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        workersColorButton,
                        workersSecondary,
                      ],
                      begin: const FractionalOffset(0.0, 1),
                      //begin: const FractionalOffset(0.0, 0.8),
                      end: const FractionalOffset(0.0, -0.6),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                accountName: Text('jorge perez'),
                accountEmail: Text('jPerez@workers.com.bo'),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://assets-es.imgfoot.com/media/cache/642x382/pedro-rodriguez-5eabe0430f38a.jpg"),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ProfilePage()));
                  },
                ),
              ),
              new ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              new ListTile(
                title: Text('Crear nuevo trabajo'),
                leading: Icon(Icons.camera),
                onTap: () {},
              ),
              new ListTile(
                title: Text('Trabajos publicados'),
                leading: Icon(Icons.ac_unit),
                onTap: () {},
              ),
              new ListTile(
                title: Text('Trabajos Completados'),
                leading: Icon(Icons.access_alarm),
                onTap: () {},
              ),
              new ListTile(
                title: Text('Configuración'),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
