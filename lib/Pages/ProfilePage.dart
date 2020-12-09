import 'package:Workers/UI/widgets/large_button.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height * 0.96)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
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
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3)),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://assets-es.imgfoot.com/media/cache/642x382/pedro-rodriguez-5eabe0430f38a.jpg",
                          ),
                          child: Text(
                            'edit',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              /*
              Container(
                alignment: Alignment.centerRight,
                child: RaisedButton(
                    color: workersColorButton,
                    child: Text('edit information'),
                    onPressed: () {}),
              ),
              */
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 4),
                decoration: BoxDecoration(),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Jose Perez',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Mecánico",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: workersColorButton,
                    ),
                    //bottom: BorderSide(color: workersColorButton),
                  ),
                ),
                padding: EdgeInsets.all(10),
                //color: Colors.amber,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Calificación',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: getRatings(3),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 5,
                          child: Text("|"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Contratos',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: workersColorButton,
                    ),
                    bottom: BorderSide(color: workersColorButton),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Información y contacto',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        Text(
                            "Mecánico con muchos años de experiencia encajas manuales de autos japoneses y europeos, especialista en transmisiones BMW"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.map),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Av. ballivian, calle 16")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(
                              width: 4,
                            ),
                            Text("josePerez@workers.com")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              child: Text(
                                "77700212",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Lun - Vier",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "10:00 - 16:00",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              LargeButton(
                  color: workersColorButton,
                  textColor: Colors.white,
                  text: 'Solicitar Servicio'),
              LargeButton(
                  color: workersColorButton,
                  textColor: Colors.white,
                  text: 'Cerrar session'),
              Container(
                margin: EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: workersColorButton,
                    ),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reseñas de clientes',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                //constraints: BoxConstraints.expand(height: 140),
                child: ListView(
                  padding: EdgeInsets.only(left: 40),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Resena(),
                    Resena(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWorkersYellow extends StatelessWidget {
  const ButtonWorkersYellow({
    Key key,
  }) : super(key: key);

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
        color: workersColorButton,
        child: Text(
          'solicitar servicio',
          style: labelBoxWorkers2.copyWith(fontSize: 20),
        ),
        onPressed: () {},
      ),
    );
  }
}

class Resena extends StatelessWidget {
  const Resena({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 20, bottom: 10, top: 10),
      //height: 120,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          ),
        ],
        //borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/64.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Rodrigo camacho",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
              "responsable con la entrega del trabajo responsable con la entrega del trabajo responsable con la entrega del trabajo responsable con la entrega del trabajo "),
        ],
      ),
    );
  }
}

List<Widget> getRatings(double ratingW) {
  List<Widget> ratings = [];
  for (int i = 0; i < 5; i++) {
    if (i < ratingW) {
      ratings.add(new Icon(Icons.star, color: workersColorButton));
    } else {
      ratings.add(new Icon(Icons.star_border, color: Colors.black45));
    }
  }
  return ratings;
}
