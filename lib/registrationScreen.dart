import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/homeScreen.dart';
import 'package:resowl/logInScreen.dart';
import 'package:resowl/signUpScreen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => RegistrationScreenF())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: 600,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 220,
                  ),
                  Image.asset(
                    'assets/image/5.png',
                    width: 130,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Resowl',
                    style: GoogleFonts.gentiumBasic(
                        fontSize: 27,
                        color: Color.fromARGB(255, 26, 131, 118),
                        fontWeight: FontWeight.bold),
                  ),
                  Text('a good   resource   for  you ',
                      style: GoogleFonts.gentiumBasic(
                        fontSize: 22,
                        color: Color.fromARGB(255, 26, 131, 118),
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
            )),
      ),
    );
  }
}

class RegistrationScreenF extends StatefulWidget {
  const RegistrationScreenF({Key? key}) : super(key: key);

  @override
  State<RegistrationScreenF> createState() => _RegistrationScreenFState();
}

class _RegistrationScreenFState extends State<RegistrationScreenF> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.gentiumBasic(fontSize: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Join Us, and start studying',
                style: GoogleFonts.gentiumBasic(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/welcom.PNG'),
                        fit: BoxFit.fill),
                  )),
              SizedBox(
                height: 90,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LogInScreen()));
                      /*   FutureBuilder(
                          future: _initializeFirebase(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              return LogInScreen();
                            }
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }); */
                    },
                    child: Text(
                      'LogIn',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(255, 2, 190, 167),
                          fontWeight: FontWeight.w600),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)),
                        side: BorderSide(
                            color: Color.fromARGB(255, 2, 190, 167),
                            width: 2.6))),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(244, 255, 255, 255),
                          fontWeight: FontWeight.w900),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 190, 167),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)))),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
