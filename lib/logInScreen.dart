import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Image.asset(
                'assets/image/5.png',
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Log In',
                style: GoogleFonts.gentiumBasic(fontSize: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please logIn to continue using our app',
                style: GoogleFonts.gentiumBasic(
                    fontSize: 20, color: Color.fromARGB(255, 0, 91, 97)),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Email:'),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Password:'),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ),
              SizedBox(
                height: 1,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      /*   Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: ((context) => forgetPScreen()))); */
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 91, 97),
                      ),
                    )),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'LogIn',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(210, 255, 255, 255),
                          fontWeight: FontWeight.w900),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 190, 167),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)))),
              ),
              SizedBox(
                height: 1,
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
                        /*   Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: ((context) => forgetPScreen()))); */
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
    );
  }
}
