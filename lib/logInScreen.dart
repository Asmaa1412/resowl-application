import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/homeScreen.dart';
import 'package:resowl/signUpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'forgetPasswordScreen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogIn screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LogInScreenF(),
    );
  }
}

class LogInScreenF extends StatefulWidget {
  const LogInScreenF({Key? key}) : super(key: key);

  @override
  State<LogInScreenF> createState() => _LogInScreenFState();
}

class _LogInScreenFState extends State<LogInScreenF> {
  static Future<User?> logIn(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print('4044 uesr not found');
      }
    }

    return user;
  }

/* 
Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
    Navigator.push(
        (context), MaterialPageRoute(builder: ((context) => HomeScreen())));
  } */

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                width: 490,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/reg.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              CustomPaint(
                child: Container(
                  width: double.infinity,
                  height: 250,
                  color: Color.fromARGB(100, 2, 190, 167),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 55, 0, 0),
                child: Image.asset(
                  'assets/image/5.png',
                  width: 120,
                  height: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 240, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Log In',
                        style: GoogleFonts.gentiumBasic(fontSize: 37),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Please logIn to continue using our app',
                        style: GoogleFonts.gentiumBasic(
                            fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 360,
                        height: 50,
                        child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                label: Text('Email:'),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 360,
                        height: 50,
                        child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                label: Text('Password:'),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          ForgetPasswordScreen())));
                            },
                            child: Text(
                              'Forget Password ?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 91, 97),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        width: 350,
                        height: 40,
                        child: TextButton(
                            onPressed: () async {
                              User? user = await logIn(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  context: context);
                              print(user);
                              if (user != null) {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => HomeScreen())));
                              }
                            },
                            child: Text(
                              'LogIn',
                              style: GoogleFonts.gentiumBasic(
                                  fontSize: 21,
                                  color: Color.fromARGB(244, 255, 255, 255),
                                  fontWeight: FontWeight.w900),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 2, 190, 167),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11)))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 94,
                          ),
                          Text('Don\'t have an account ?'),
                          SizedBox(
                            width: 3,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    (context),
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            SignUpScreen())));
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 91, 97),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
