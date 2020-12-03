import 'package:Workers/Pages/HomePage.dart';
import 'package:Workers/UI/widgets/custom_app_bar.dart';
import 'package:Workers/UI/widgets/navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';bhhhß
import 'package:google_sign_in/google_sign_in.dart';

import '../global.dart';

class LoginPage extends StatefulWidget {
  //variables de registro
  @override
  _LoginPageState createState() => _LoginPageState();
}

FirebaseAuth auth = FirebaseAuth.instance;

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = new TextEditingController();

  TextEditingController _pass = new TextEditingController();

  @override
  void initState() {
    super.initState();
    auth.authStateChanges().listen((User user) {
      if (user == null) {
        print('User is currently signed out!');
        //Navigator.pushReplacement(context,
        //    MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
      } else {
        //NavigatorBarWorkers
        //Navigator.pushReplacement(
        //    context,
        //    MaterialPageRoute(
        //        builder: (BuildContext context) => NavigatorBarWorkers()));
        print('User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: CustomAppBar(
      //   child: _textWorkers()
      // ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
              //color: Colors.red,
              //color: Colors.grey[200],

              width: double.infinity,
              height: size.height,
              child: Column(
                children: [
                  //CustomAppBar(child: _textWorkers()),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment
                              .topCenter, // 10% of the width, so there are ten blinds.
                          colors: [
                            workersPrimary,
                            workersColorButton,
                            workersSecondary,
                          ], // red to yellow
                          tileMode: TileMode
                              .clamp, // repeats the gradient over the canvas
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                        ),
                        //bottomRight: Radius.circular(70)),
                      ),
                      child: Center(
                        child: Text(
                          'Workers',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                //spreadRadius: -60,
                                blurRadius: 10,
                                offset: Offset(2, 4),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _inputField(
                              keybo: TextInputType.emailAddress,
                              label: "Introduzca su correo",
                              icono: Icons.person_outline_outlined,
                              controller: _email),
                          _inputField(
                              keybo: TextInputType.visiblePassword,
                              label: "Introduzca su contraseñas",
                              icono: Icons.security,
                              controller: _pass),
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: _botonesLoginCorreo(context),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        //color: Colors.white,
                        ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      child: _botonesLogin(context),
                    ),
                  ),
                  /*
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _inputField(
                          keybo: TextInputType.emailAddress,
                          label: "Introduzca su correo",
                          icono: Icons.person_outline_outlined,
                          controller: _email),
                      _inputField(
                          keybo: TextInputType.visiblePassword,
                          label: "Introduzca su contraseñas",
                          icono: Icons.security,
                          controller: _pass),
                    ],
                  )),
                  _divisor(),
                  _botonesLogin(context),
                  _botonesLoginCorreo(context),
                  */
                ],
              )),
        ),
      ),
    );
  }

  _divisor() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          )),
          Text(
            "   o   ",
            style: TextStyle(
                color: Colors.grey.withOpacity(0.6),
                fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          )),
        ],
      ),
    );
  }

  _botonesLogin(BuildContext context) {
    return Container(
      //color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            // padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                padding: EdgeInsets.all(0),
                //color: Color.fromRGBO(201, 65, 48, 1.0),
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
                onPressed: () async {
                  UserCredential userCred = await signInWithGoogle();
                  User user = userCred.user;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()),
                    ModalRoute.withName('/home'),
                  );
                },
                child: Text(
                  "Google",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            // padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
                padding: EdgeInsets.all(0),
                onPressed: () async {
                  UserCredential userCred = await signInWithFacebook();
                  User user = userCred.user;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()),
                    ModalRoute.withName('/home'),
                  );
                },
                child: Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _botonesLoginCorreo(BuildContext context) {
    return Container(
      //color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            // padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                padding: EdgeInsets.all(20),
                color: workersColorButton,
                borderRadius: BorderRadius.circular(100),
                onPressed: () async {
                  UserCredential userCred = await signInWithGoogle();
                  User user = userCred.user;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(

                        //builder: (BuildContext context) => NavigatorBarWorkers()),
                        builder: (BuildContext context) => HomePage()),
                    ModalRoute.withName('/home'),
                  );
                },
                child: Text(
                  "INICIAR SESION",
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _inputField(
      {String label,
      TextInputType keybo,
      IconData icono,
      TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Theme(
        data: new ThemeData(
            primaryColor: workersColorButton,
            //primaryColor: Colors.orangeAccent,
            primaryColorDark: Colors.brown),
        child: TextFormField(
          cursorColor: backgroundColor,
          controller: controller,
          obscureText: keybo != TextInputType.visiblePassword ? false : true,
          decoration: new InputDecoration(
            labelText: "$label",
            // focusColor: Colors.green,

            fillColor: Colors.brown,
            prefixIcon: Icon(icono),
            /*
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
              borderSide: new BorderSide(color: Colors.brown),
            ),*/
            //fillColor: Colors.green
          ),
          validator: (val) {
            if (val.length == 0) {
              return "Date cannot be empty";
            } else {
              return null;
            }
          },
          keyboardType: keybo,
          style: new TextStyle(
            fontFamily: "Poppins",
          ),
        ),
      ),
    );
  }

  _textWorkers() {
    TextStyle style = new TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 40,
        color: Colors.white,
        fontFamily: 'Quicksand',
        shadows: [
          Shadow(offset: Offset(0, 3), blurRadius: 2.0, color: Colors.black26)
        ]);
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        "Workers",
        textAlign: TextAlign.center,
        style: style,
      ),
    );
  }
}

Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
  LoginResult result;
  try {
    result = await FacebookAuth.instance.login();
    print("################### $result");
  } catch (e) {
    print("""
    login
    $e
    ${e.toString()}
    """);
  }
  // Create a credential from the access token
  FacebookAuthCredential facebookAuthCredential;
  try {
    facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken.token);
    print("################### $facebookAuthCredential");
  } catch (e) {
    print("""
      credential
      $e
    ${e.toString()}
      """);
  }

  // Once signed in, return the UserCredential
  UserCredential userFinal;
  try {
    userFinal = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
    print("################### $userFinal");
  } catch (e) {
    print("""
      signInWithCredential
      $e
    ${e.toString()}
      """);
  }
  return userFinal;
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  // Create a new credential
  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
