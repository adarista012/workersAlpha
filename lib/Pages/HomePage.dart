import 'package:Workers/UI/widgets/short_button.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  workersPrimary,
                  workersSecondary,
                ],
                begin: const FractionalOffset(0.0, 0.8),
                end: const FractionalOffset(0.0, -0.3),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 4),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 12),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Workers',
                        style: titleStyleWhite,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //_searcherWorker(),
                    Container(
                      height: 45,
                      margin: EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      padding: EdgeInsets.only(left: 8, right: 20),
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(25.0),
                          right: Radius.circular(25.0),
                        ),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 10),
                            hintText: "Qué servicio buscas?",
                            icon: Icon(
                              Icons.search,
                              color: workersPrimary,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent))),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(bottom: 4),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShortButton(
                        text: 'contratar',
                        color: Colors.white,
                      ),
                      ShortButton(
                        text: 'tr',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
/*
  _searcherWorker() {
    return new Container(
      //color: Colors.red,
      height: 45,
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      padding: EdgeInsets.only(left: 8, right: 20),

      //height: 20,
      //width: double.maxFinite,
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(25.0),
          right: Radius.circular(25.0),
        ),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),
        ],
        color: Colors.white,
      ),
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            hintText: "Qué servicio buscas?",
            icon: Icon(
              Icons.search,
              color: workersPrimary,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent))),
      ),
    );
  }
  */
}
